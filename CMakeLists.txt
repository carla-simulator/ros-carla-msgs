cmake_minimum_required(VERSION 2.8.3)
project(carla_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  geometry_msgs
  diagnostic_msgs
)

add_service_files(
  DIRECTORY srv
  FILES 
  SpawnObject.srv
  DestroyObject.srv
  GetBlueprints.srv
)

add_message_files(
  DIRECTORY msg
  FILES
  CarlaBoundingBox.msg
  CarlaEgoVehicleControl.msg
  CarlaEgoVehicleStatus.msg
  CarlaEgoVehicleInfoWheel.msg
  CarlaEgoVehicleInfo.msg
  CarlaCollisionEvent.msg
  CarlaLaneInvasionEvent.msg
  CarlaWorldInfo.msg
  CarlaActorInfo.msg
  CarlaActorList.msg
  CarlaControl.msg
  CarlaStatus.msg
  CarlaTrafficLightInfo.msg
  CarlaTrafficLightInfoList.msg
  CarlaTrafficLightStatus.msg
  CarlaTrafficLightStatusList.msg
  CarlaWalkerControl.msg
  CarlaWeatherParameters.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  diagnostic_msgs
)


catkin_package(
  CATKIN_DEPENDS
  message_runtime
  std_msgs
  geometry_msgs
  diagnostic_msgs
)
