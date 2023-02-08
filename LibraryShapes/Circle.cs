using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryShapes
{
    internal class Circle
    {
        double radius;
        public Circle(double radius)
        {
            try
            {
                if (radius <= 0)
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
                this.radius = radius;
            }
            
        }
        public double GetCircleArea()
        {
            return Math.PI * Math.Pow(radius, 2);
        }
    }
}
