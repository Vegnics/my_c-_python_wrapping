#ifndef GEOM_H
#define GEOM_H

namespace geom{
class point{
    public:
    point();
    point(float,float,float);
    ~point();
    float x,y,z;
    float distance(point);
};

}
#endif