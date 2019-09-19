package test.com.backproj;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import junit.framework.TestCase;
import test.com.dao.CategoryDAO;
import test.com.model.Category;

public class CategoryTest extends TestCase
{
public static AnnotationConfigApplicationContext context;
private static CategoryDAO categorydao;
private Category category;

@BeforeClass
public static void testinitialize()
{
	 
	context=new AnnotationConfigApplicationContext();
	context.scan("test.com");
	System.out.println("Main Test");
	context.refresh();
	System.out.println("Category");
	categorydao=(CategoryDAO) context.getBean("CategoryDAO");
}

/*
@Test
public void testCategory()
{
	category=new Category();
	category.setCategoryName("nokia");
	category.setCategoryDesc("All Models");
	System.out.println("Added");
	assertTrue("Successfully added",categorydao.addCategory(category));
   
}*/
/*
@Test
public void testget()
{
	category=categorydao.getCategory(1);
	assertEquals("Fetched Name","Samsung",category.getCategoryName());
	assertEquals("Fetched Desc","All",category.getCategoryDesc());
}
@Test
public void testupdate()
{
	category=categorydao.getCategory(6);
	category.setCategoryName("Moto G2");
	category.setCategoryDesc("Good");
	categorydao.updateCategory(category);
	System.out.println("Updated");
	//assertEquals("Updated",true,categorydao.updateCategory(category));
}
@Test
public void testdelete()
{
	category=categorydao.getCategory(5);
	//categorydao.deleteCategory(category);
	assertEquals("Deleted",true,categorydao.deleteCategory(category));
}

@Test
public void testlist()
{
	categorydao.listCategories().listIterator();
	assertEquals("Listed",1,categorydao.listCategories().size());
}*/
}