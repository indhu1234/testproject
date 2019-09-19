package test.com.backproj;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import junit.framework.TestCase;
import test.com.dao.ProductDao;
import test.com.model.Product;

public class ProductTest extends TestCase
{
  public static AnnotationConfigApplicationContext context;
  private static ProductDao productdao;
  private Product product;
  
  @BeforeClass
  public static void testinitialize()
  {
	  context=new AnnotationConfigApplicationContext();
	  
  }
	
	

}
