import 'dart:ffi';
import 'dart:io';
import 'shape.dart';

import 'package:area_perimeter_shapes_dart/area_perimeter_shapes_dart.dart' as area_perimeter_shapes_dart;

void main() {
  String cont='a';
        
     print("Welcome to the Area and Perimeter calculation App");
        do {
         print("Plz enter:\n 1 for Rectangle\n 2 for Triangle\n 3 for Circle");
         var number = stdin.readLineSync();
            int option = int.parse(number!);
            if (option == 1) {
             print("Enter the width of the Rectangle in cm");
                double rectWidth = double.parse(stdin.readLineSync()!);
             print("Enter the height of the Rectangle in cm");
                double rectHeight = double.parse(stdin.readLineSync()!);
                Rectangle rect = new Rectangle(rectWidth, rectHeight);
                rect.calcArea();
                rect.calcPerimeter();
            } else if (option == 2) {
             print("Enter the base of Triangle");
                double triBase = double.parse(stdin.readLineSync()!);
             print("Enter the Adjacent side  of Triangle");
                double triAdjSide = double.parse(stdin.readLineSync()!);
             print("Enter the Opposite  side  of Triangle");
                double triOpsSide = double.parse(stdin.readLineSync()!);
             print("Enter the Height of Triangle");
                double triHeight = double.parse(stdin.readLineSync()!);
                Triangle tri = new Triangle(triBase, triAdjSide, triOpsSide, triHeight);
                tri.calcArea();
                tri.calcPerimeter();

            } else if (option == 3) {
             print("Enter the Radius of the Circle");
                double cirRadius = double.parse(stdin.readLineSync()!);

                Circle cir = new Circle(cirRadius);
                cir.calcArea();
                cir.calcPerimeter();
            } else {
             print("Invalid option choice again ");
            }
         print("Do you want to calculate Another shape (y/n)");
            cont=stdin.readLineSync()!;
            cont.toLowerCase();
        }while (cont=='y');
     print("Thanks have a good day");
}
