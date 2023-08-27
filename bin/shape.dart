class Shape{
      void calcArea(){

      }
     void calcPerimeter(){

     }
}
class Rectangle extends Shape{
    
    double? width;
    double? height;

    Rectangle(double b, double h){
        width=b;
        height= h;

    }

    @override
    void calcArea() {
        print("The Area of Rectangle=${width!*height!} cm2");
    }

    @override
    void calcPerimeter() {
        print("The Perimeter of Rectangle=${2*(width!+height!)} cm")
        ;
    }
}

class Triangle extends Shape{
    

    double? adj1;
    double? adj2;
    double? adj3;
    double? height;
    Triangle(double a,double b,double c,double d){
        adj1=a;
        adj2=b;
        adj3=c;
        height =d;
    }


    @override
    void calcArea() {
        print("The Area of the Triangle=${(0.5*adj1!*height!)} cm2");
    }

    @override
    void calcPerimeter() {
        print("The Perimeter of the Triangle =${(adj1!+adj2!+adj3!)} cm");

    }
}

class Circle extends Shape {
    
    double? radius;
    Circle(double r){
        radius=r;
    }

    @override
    void calcPerimeter() {
        print("The Perimeter of  the Circle= ${(2*3.14*radius!)} cm");
    }

    @override
    void calcArea() {
        print("The Area of Circle =${(3.14*radius!*radius!)} cm2");
    }
}