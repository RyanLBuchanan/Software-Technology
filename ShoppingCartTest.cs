//using System;
//using Xunit;
//using CKK.Logic.Models;

//namespace XunitTestProject
//{
//    public class ShoppingCartTest
//    {
//        [Fact]
//        public void ShouldAddProduct()
//        {
//            // Assemble
//            // Make sure the unit test accurately tests the product and if it was added correctly
//            ShoppingCart shoppingCart1 = new ShoppingCart();
//            ShoppingCart expected = shoppingCart1.AddProduct();

//            // Act
//            ShoppingCartItem actual = shoppingCart1.AddProduct(Product prod, int quant);

//            // Assert: This is what I expect and here is the actual value 
//            Assert.Equal(expected, actual);
//        }

//        [Fact]
//        public void ShouldRemoveProduct()
//        {
//            // Assemble
//            // Make sure the unit test accurately removes the product.
//            ShoppingCart shoppingCart1 = new ShoppingCart();
//            ShoppingCart expected = shoppingCart1.RemoveProduct();

//            // Act
//            ShoppingCartItem actual = shoppingCart1.RemoveProduct(Product prod, int quant);

//            // Assert: This is what I expect and here is the actual value 
//            Assert.Equal(expected, actual);
//        }

//        [Fact]
//        public void ShouldGetTotal()
//        {
//            // Assemble
//            // Create a unit test that checks to see if the total is accurate
//            ShoppingCart shoppingCart1 = new ShoppingCart();

//            // Act
//            decimal actual = shoppingCart1.GetTotal();

//            // Assert: This is what I expect and here is the actual value 
//            Assert.Equal(expected, actual);
//        }


//    }
//}




/* FROM CKK.TESTSFORSTUDENTS  from Module 4 Deliverable 3 */

//[Fact]
//public void AddStoreItem_ShouldAddProductToNextSpot_FromEmpty()
//{
//    try
//    {
//        //Assemble
//        Store store = new();
//        var expected = new Product();
//        store.AddStoreItem(expected);
//        //Act
//        var actual = store.GetStoreItem(1);
//        //Assert
//        Assert.Equal(expected, actual);
//    }
//    catch
//    {
//        throw new XunitException("The product was not populated correctly.");
//    }
//}


//[Fact]
//public void RemoveStoreItem_ShouldRemoveSelectedItem()
//{
//    try
//    {
//        //Assemble
//        Store store = new();
//        var product1 = new Product();
//        var product2 = new Product();
//        var product3 = new Product();
//        store.AddStoreItem(product1);
//        store.AddStoreItem(product2);
//        store.AddStoreItem(product3);

//        //Act
//        store.RemoveStoreItem(1);

//        //Assert
//        Assert.Null(store.GetStoreItem(1));
//    }
//    catch
//    {
//        throw new XunitException("The item was not removed correctly");
//    }
//}

//[Fact]
//public void GetTotal_ShouldReturnTheCorrectTotal()
//{
//    try
//    {
//        //Assemble
//        var price = 4.0m;
//        var quantity = 2;
//        var expected = 8m;
//        var testProduct = new Product();
//        testProduct.SetPrice(price);

//        var cartItem = new ShoppingCartItem(testProduct, quantity);
//        //Act
//        var actual = cartItem.GetTotal();
//        //Assert
//        Assert.Equal(expected, actual);
//    }
//    catch
//    {
//        throw new XunitException("The Price that was given was incorrect.");
//    }
//}