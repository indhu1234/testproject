package test.com.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import test.com.model.Category;
import test.com.model.Product;
import test.com.model.Supplier;
import test.com.model.UserDetail;

@Configuration
@EnableTransactionManagement
public class DBConfig
{
@Bean(name="dataSource")
	
	//1.Create  a DataSource object
	public DataSource getH2DataSource() {
		DriverManagerDataSource  datasource=new DriverManagerDataSource();
		
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUsername("sa");
		datasource.setPassword("sa");
		datasource.setUrl("jdbc:h2:tcp://localhost/~/project1");
		System.out.println("===Creating DataSource Bean==");
		return datasource;
		
	}
	
	//2. Create a SessionFactory object
	@Bean
    public SessionFactory getsessionFactory() 
	{
	Properties hibernateproperties=new Properties();
		hibernateproperties.put("hibernate.hbm2ddl.auto","update");
		
		hibernateproperties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		hibernateproperties.put("hibernate.show_sql", true);
		hibernateproperties.put("hibernate.format_sql", true);
		LocalSessionFactoryBuilder factory1=new LocalSessionFactoryBuilder(getH2DataSource());
		factory1.addProperties(hibernateproperties)	;
		
		factory1.addAnnotatedClass(Category.class);
		factory1.addAnnotatedClass(Product.class);
		factory1.addAnnotatedClass(Supplier.class);
		factory1.addAnnotatedClass(UserDetail.class);
		//factory1.addAnnotatedClasses(Category.class,Product.class);
		/*factory1.addAnnotatedClass(Supplier.class);
		factory1.addAnnotatedClass(Product.class);
		factory1.addAnnotatedClass(UserDetail.class);
		factory1.addAnnotatedClass(Cart.class);	
		factory1.addAnnotatedClass(OrderDetail.class);	*/
		SessionFactory sessionFactory=factory1.buildSessionFactory();
		System.out.println("===Creating the SessionFactory Bean====");
		return sessionFactory;
		
	}
	
	//3. Create a HibernateTransactionManager
	@Bean
	
	public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println("Creating the TransactionManager Bean");
		return new HibernateTransactionManager(sessionFactory);
		
	}

}
