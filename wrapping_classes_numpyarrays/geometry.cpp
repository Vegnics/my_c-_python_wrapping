#include<iostream>
#include "geometry.hpp"
#include <math.h>

using namespace std;

namespace geom{
point::point(){}

point::point(float _x,float _y,float _z){
this->x=_x;
this->y=_y;
this->z=_z;
}

point::~point(){}

float point::distance(point opoint){
float dx,dy,dz;
dx=this->x - opoint.x;
dy=this->y - opoint.y;
dz=this->z - opoint.z;
return sqrt(dx*dx+dy*dy+dz*dz);
}

}