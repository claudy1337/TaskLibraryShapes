using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryShapes
{
    public static class OperationShapes
    {
        public static double GetTriangleArea(double a, double b, double c)
        {
            Triangle triangle = new Triangle(a, b, c);
            return triangle.GetTriangleArea();
        }
        public static double GetCircleArea(double a)
        {
            Circle circle = new Circle(a);
            return circle.GetCircleArea();
        }
    }
}
