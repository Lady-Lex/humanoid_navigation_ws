# humanoid_planner_2d下载和配置

## 从Github下载

官方库链接：[ROBOTIS-GIT/humanoid_navigation: ROS metapackages with footstep planning and localization for humanoid robots (github.com)](https://github.com/ROBOTIS-GIT/humanoid_navigation)

我的改动版本库：

[Lady-Lex/humanoid_navigation_ws (github.com)](https://github.com/Lady-Lex/humanoid_navigation_ws)

我们需要使用的只是humanoid_navigation_ws/src/humanoid_navigation/humanoid_planner_2d包。

## 工作空间的编译

在humanoid_navigation_ws目录下开启终端，输入```catkin_make```编译。缺什么依赖就安装对应的包。

## 改动和配置说明

- 添加一个launch文件，它将运行humanoid_planner_2d、运行map_server以加载指定路径地图并发布为/map话题、启动一个rviz可视化界面。

  humanoid_planner_2d.launch的内容：

  ```
  <launch>
  	<arg name="map_file" default="$(find humanoid_planner_2d)/map/roban_museum/roban_museum.yaml"/>
  	<arg name="open_rviz" default="true"/>
  
  	<node pkg="humanoid_planner_2d" type="sbpl_2d_planner_node" name="humanoid_planner_2d" output="screen" />
  
  	<node pkg="map_server" name="map_server" type="map_server" args="$(arg map_file)"/>
  
  	<!-- rviz -->
  	<group if="$(arg open_rviz)"> 
  		<node pkg="rviz" type="rviz" name="rviz" required="true"
  			args="-d $(find humanoid_planner_2d)/rviz/humanoid_planner_2d.rviz"/>
  	</group>
  </launch>
  ```

  可以更改"map_file"路径设置要加载的地图文件。

- 用goal话题中的orientation.z（决定目标的偏航角）给path话题中的各个pose.orientation.z赋值。

- 源码只将地图中的被占据区域的代价设置为`OBSTACLE_COST`，而未占据区域为0。这样会导致规划的路径经常紧挨障碍物，实际使用会造成碰撞。以下代码遍历地图中的被占据格，搜索半径`SHADOW_RADIUS`内的未占据格并设置其代价为`SHADOW_RADIUS - k`，k是该未占据格到当前占据格的距离。当一个未占据格被多个被占据格搜索时，代价只保留最大值，其实际意义是未占据格的代价由距离它最近的被占据格决定。以下是添加的代码的主要部分：


```python
  int GridLocal[map_->getInfo().width][map_->getInfo().height] = {0};
  for(unsigned int j = 0; j < map_->getInfo().height; ++j)
    for(unsigned int i = 0; i < map_->getInfo().width; ++i)
        GridLocal[i][j]=0;

  for(unsigned int j = 0; j < map_->getInfo().height; ++j){
    for(unsigned int i = 0; i < map_->getInfo().width; ++i){
      if (map_->isOccupiedAtCell(i,j)) {
        GridLocal[i][j]=OBSTACLE_COST;
        // 计算阴影（弱栅格）
        for(int k = 1; k <= SHADOW_RADIUS; k++) {
          if((i-k >= 0) && (i-k < map_->getInfo().width) && (map_->isOccupiedAtCell(i-k,j))==false) {
            int temp = GridLocal[i-k][j];
            temp = SHADOW_RADIUS - k;
            if(GridLocal[i-k][j] < temp)
                GridLocal[i-k][j] = temp;
          }

          if((i+k >= 0) && (i+k < map_->getInfo().width) && (map_->isOccupiedAtCell(i+k,j))==false) {
            int temp = GridLocal[i+k][j];
            temp = SHADOW_RADIUS - k;
            if(GridLocal[i+k][j] < temp)
                GridLocal[i+k][j] = temp;
          }

          if((j-k >= 0) && (j-k < map_->getInfo().width) && (map_->isOccupiedAtCell(i,j-k))==false) {
            int temp = GridLocal[i][j-k];
            temp = SHADOW_RADIUS - k;
            if(GridLocal[i][j-k] < temp)
                GridLocal[i][j-k] = temp;
          }

          if((j+k >= 0) && (j+k < map_->getInfo().width) && (map_->isOccupiedAtCell(i,j+k))==false) {
            int temp = GridLocal[i][j+k];
            temp = SHADOW_RADIUS - k;
            if(GridLocal[i][j+k] < temp)
                GridLocal[i][j+k] = temp;
          }
        }

      }
    }
  }

  for(unsigned int j = 0; j < map_->getInfo().height; ++j){
    for(unsigned int i = 0; i < map_->getInfo().width; ++i){
      planner_environment_->UpdateCost(i,j,GridLocal[i][j]);
    }
  }
```

其中```SHADOW_RADIUS```变量在SBPLPlanner2D.h中定义：

```C
static const unsigned char SHADOW_RADIUS = 5;
```

即地图上距离最近被占据栅格5格之内的未占据栅格的cost将不再为0，距离被占据栅格越近cost越高。而每一个的cost属性是路径规划的重要依据。

参数配好以后可以在终端运行

```bash
roslaunch humanoid_planner_2d humanoid_planner_2d.launch
```

启动humanoid_planner_2d包。