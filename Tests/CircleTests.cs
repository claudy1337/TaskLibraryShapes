using LibraryShapes;
using NUnit.Framework;
using System;

namespace Tests
{
    public class CircleTest
    {
        
        [Test]
        public void isCorrectCircleArea()
        {
            double radius = 1;
            double expectedArea = Math.PI;
            double actualArea = OperationShapes.GetCircleArea(radius);
            Assert.AreEqual(expectedArea, actualArea, 0.1);
        }
        [Test]
        public void isNotCorrectCircleArea()
        {
            double radius = 1;
            double expectedArea = 2;
            double actualArea = OperationShapes.GetCircleArea(radius);
            Assert.AreEqual(expectedArea, actualArea, "Area of the circle is not calculated correctly");
        }
    }
}