package ProductCRUD.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import ProductCRUD.Dao.ProductDao;
import ProductCRUD.model.Product;


@Controller
public class ProductController {

	@Autowired
	private ProductDao productDao;   //intstead of using service layer we directly use product dao in our controller to save data in database
	
		@RequestMapping("/")
		public String home(Model m)
		{
			List<Product> products= productDao.getProducts();
			m.addAttribute("products",products);
			return "home";
		}
		
		@RequestMapping("/add-product")
		public String addproduct(Model m)
		{
			m.addAttribute("title", "Add product");
			return "add_product";
		}
		
		
		//handle product form
		@RequestMapping(value="/handle-product",method=RequestMethod.POST)
		public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
		{

			System.out.println(product);
			
			productDao.createProduct(product);
			RedirectView redirectview=new RedirectView();
			redirectview.setUrl(request.getContextPath()+"/");
					
			return redirectview;
		}


		
		//delete the product
		@RequestMapping("/delete/{pid}")
		public RedirectView deleteproduct(@PathVariable("pid") Long pid,HttpServletRequest request)
		{
			this.productDao.deleteproduct(pid);
			RedirectView redirectview=new RedirectView();
			redirectview.setUrl(request.getContextPath()+"/");
			return redirectview;
		}
		

		
		//update the product details
		@RequestMapping("/update/{pid}")
		public String updateproduct(@PathVariable("pid") Long productid,Model m)
		{
		
			Product product=this.productDao.getproduct(productid);
			m.addAttribute("product", product);
			return "update_form";
					
		}
	
		//we handle that exception by using Exceptionhandler annotation  
		//when user type mismatch data in the form then exception comes then we can handle by using Exceptionhandler
		@ExceptionHandler(value=Exception.class)
		public String ExceptionGenric()
		{
			return "add_product";
		}
}

