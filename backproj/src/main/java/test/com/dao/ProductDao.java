package test.com.dao;

import java.util.List;

import test.com.model.Category;
import test.com.model.Product;
import test.com.model.Supplier;

public interface ProductDao {
boolean saveProduct(Product product);//product.id=0, new Object, insert
Product getProduct(int id);

//updated product details
void updateProduct(Product product);//product.id= ,already existing obj, update
void deleteProduct(int id);
List<Product> getAllProducts();//fetch all the records from product table
List<Category> getAllCategories();
List<Supplier> getAllSuppliers();
}

