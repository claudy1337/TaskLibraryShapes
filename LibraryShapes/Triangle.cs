using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryShapes
{
    internal class Triangle
    {
        double[] sides;

        public Triangle(double a, double b, double c)
        {
            try
            {
                if (a<= 0 || b<= 0 || c<=0)
                {
                    throw new ArgumentException("Not a positive number");
                }
            }
            catch (FormatException)
            {
                throw new ArgumentException("Invalid parameter");
            }
            finally
            {
                sides = new double[3] { a, b, c };
            }
        }
        public double GetTriangleArea()
        {
            double halfSide = sides.Sum() / 2;
            return Math.Sqrt(halfSide * (halfSide - sides[0]) * (halfSide - sides[1]) * (halfSide - sides[2]));
        }
        
        public bool isRight()
        {
            Array.Sort(sides);
            return Math.Pow(sides[0], 2) + Math.Pow(sides[1], 2) == Math.Pow(sides[2], 2);
        }

    }
}
