#include "ros/ros.h"
#include <string.h>
#include "std_msgs/String.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "test_publisher");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("/test", 100);

    int i = 0;
    while(ros::ok())
    {
        std_msgs::String data;
        data.data = "test pub " + std::to_string(i++);
        pub.publish(data);
        ros::Duration(1).sleep();
        ros::spinOnce();
    }

    return 0;
}