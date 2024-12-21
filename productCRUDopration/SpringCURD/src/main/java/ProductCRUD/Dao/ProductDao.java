package ProductCRUD.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ProductCRUD.model.Product;

@Repository
public class ProductDao {

		@Autowired
		private HibernateTemplate hibernatetemplate;
		
		@Transactional                  //for enabling writing mode
		//create
		public void createProduct(Product product)
		{
			
			 this.hibernatetemplate.saveOrUpdate(product);
			
		}
		
		@Transactional
		//get all product list	
		public List <Product> getProducts()
		{
			List<Product> products=this.hibernatetemplate.loadAll(Product.class);
			return products;
		}
		
		

		@Transactional
		//delete a product
		public void deleteproduct(Long id)
		{
			Product p= this.hibernatetemplate.load(Product.class, id);
			this.hibernatetemplate.delete(p);
		}
		
		@Transactional
		//update the product
		public void updateproduct(Long id)
		{
			Product p=this.hibernatetemplate.load(Product.class,id);
			this.hibernatetemplate.update(p);
		}
	
		
		//getting the single product
		public Product getproduct(Long id)
		{
			return this.hibernatetemplate.get(Product.class,id);
		}
		
		
	}
		

