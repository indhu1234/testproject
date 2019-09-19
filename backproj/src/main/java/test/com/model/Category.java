package test.com.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table
	public class Category 
	{
		@Id
		@GeneratedValue
		int categoryId;
		
		String categoryName;
		String categoryDesc;
		
		/*@ManyToOne 
	    private Product product;
		*/
		
		
		 
		
		
		/*public Product getProduct() {
			return product;
		}
		public void setProduct(Product product) {
			this.product = product;
		}*/
		
		
		public int getCategoryId() {
			return categoryId;
		}
		public void setCategoryId(int categoryId) {
			this.categoryId = categoryId;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}
		public String getCategoryDesc() {
			return categoryDesc;
		}
		public void setCategoryDesc(String categoryDesc) {
			this.categoryDesc = categoryDesc;
		}
		@Override
		public String toString() {
			return "Category [categoryId=" + categoryId + ", categoryName=" + categoryName + ", categoryDesc="
					+ categoryDesc + "]";
		}
		
		
		
		
		
		
	}

	

