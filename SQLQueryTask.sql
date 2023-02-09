/*вариант 1 */
SELECT Product.Name, Category.Name
FROM Product
LEFT JOIN ProductsCategories
ON Product.IDProduct = ProductsCategories.IDProduct
LEFT JOIN Category
ON  Category.IDCategory = ProductsCategories.IDCategory



/*вариант 2 */
SELECT Product.Name, COALESCE(Category.Name, 'No Category') AS course_name
FROM Product
LEFT JOIN ProductsCategories
ON Product.IDProduct = ProductsCategories.IDProduct
LEFT JOIN Category
ON Category.IDCategory = ProductsCategories.IDCategory