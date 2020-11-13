#include<iostream>
#include "geometry.hpp"

using namespace std;
using namespace geom;

int main(){
point p0(0,0,0);
point p1(0,0,5);
cout<<p0.distance(p1)<<endl;
return 0;

}

