using LibraryShapes;
using NUnit.Framework;
using System;

namespace Tests
{
    public class TriangleTests
    {
        [Test]
        public void isCorrectTriangleArea()
        {
            double expectedArea = 30;
            double actualArea = OperationShapes.GetTriangleArea(12, 13, 5);
            Assert.AreEqual(expectedArea, actualArea);
            Assert.AreNotEqual(Math.PI, actualArea);
          
        }
        [Test]
        public void isNotCorrectTriangleArea()
        {
            double expectedArea = 2;
            double actualArea = OperationShapes.GetTriangleArea(5,5,5);
            Assert.AreEqual(expectedArea, actualArea, "Area of the triangle is not calculated correctly");
        }
        [Test]
        public void isExceptionCatch()
        {
            Assert.Throws<ArgumentException>(() => OperationShapes.GetTriangleArea(0, 0, 0));
        }
    }


}
