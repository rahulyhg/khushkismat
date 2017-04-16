package tablecategory;

import java.util.List;

import javax.naming.Binding;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tablecategory.mytable.*;

@Controller
public class mycontroller{

	@Autowired
	personaldetailsdao cdao;
	@Autowired
	productcategorydao  pdao;
	
	@RequestMapping("/")
	ModelAndView nourl()
	{
		ModelAndView modelAndView = new ModelAndView("index");
		
		return modelAndView;
	}
	@RequestMapping("/signup")
	ModelAndView addcategory()
	{
		ModelAndView modelAndView = new ModelAndView("signup");
	
		modelAndView.addObject("cat", new personaldetails());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/AddCategoryToDB", method=RequestMethod.POST)
	
	ModelAndView AddCategoryToDB( @Valid @ModelAttribute("cat") personaldetails c123, BindingResult bind )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		if (bind.hasErrors())
		{
			modelAndView=new ModelAndView("signup");
			modelAndView.addObject("myerrors", "myerrors");
			return modelAndView;
		}
		else
		{
			
			
			if( !c123.getNewpassword().equals(c123.getConfirmpassword()) )
			{
				modelAndView = new ModelAndView("signup");
				modelAndView.addObject("mypasswordmismatch", "trypasswordmismatch");
				return modelAndView;
			}
			else
			{
				List<personaldetails> l = cdao.getAllcategories();
					boolean found = false;
				for( personaldetails s1 : l )
				{
					if( s1.getName().equals(c123.getName()) )
					{
						found = true;
						break;
					}
				}
				
				if( found )
				{
					modelAndView = new ModelAndView("signup");
					modelAndView.addObject("useralreadyexists", "useralreadyexists");
					return modelAndView;
				}
				else
				{
					modelAndView = new ModelAndView("redirect:/");
					cdao.insert(c123);
					
					return modelAndView;
				}
				
				
			}
				
		}
		
	}
	
	@RequestMapping("/buyproducts")
	ModelAndView addpcategory()
	{
		ModelAndView modelAndView = new ModelAndView("buyproducts");
	
		modelAndView.addObject("cat", new productcategory());
		
		return modelAndView;
	}
	
		@RequestMapping("/review")
	ModelAndView category()
	{
		ModelAndView modelAndView = new ModelAndView("allmembers");
	
		modelAndView.addObject("catlist", cdao.getAllcategories() );
		
		return modelAndView;
	}
	@RequestMapping("/partners")
	ModelAndView pacategory()
	{
		ModelAndView modelAndView = new ModelAndView("partners");
			return modelAndView;
	}
	
	
	
	@RequestMapping("/AddpaCategoryToDB")
	ModelAndView AddpaCategoryToDB( @RequestParam("miid")  String miid, @RequestParam("miad")  String miad,@RequestParam("gender") String gender, @RequestParam("religion") String religion)
	{
		ModelAndView modelAndView = new ModelAndView("partnerslist");
				modelAndView.addObject("patlist", cdao.getpaAllcategories(miid,miad,gender,religion));
					return modelAndView;
				}
	
	@RequestMapping("/AddpCategoryToDB")
	ModelAndView AddpCategoryToDB( @ModelAttribute("cat") productcategory c123 )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
				pdao.insert(c123);
				return modelAndView;
	}
	@RequestMapping("/cart")
	ModelAndView pcategory()
	{
		ModelAndView modelAndView = new ModelAndView("cart");
	
		modelAndView.addObject("patlist", pdao.getAllcategories() );
		
		return modelAndView;
	}
	@RequestMapping("/DeleteCategoryFromDB/{cid}")
	ModelAndView DeleteCategoryFromDB( @PathVariable("cid") int c123)
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		
		cdao.delete(c123);
				return modelAndView;
	}
		
		@RequestMapping("/DeletepCategoryFromDB/{cid}")
		ModelAndView DeletepCategoryFromDB( @PathVariable("cid") int c123)
		{
			ModelAndView modelAndView = new ModelAndView("redirect:/");
			
			pdao.delete(c123);
			
			return modelAndView;
	}
	@RequestMapping("/updatecategory/{id}")
	ModelAndView update( @PathVariable("id") int id )
	{
		ModelAndView modelAndView = new ModelAndView("UpdateCategory");
	
		personaldetails t = cdao.getcategory(id);
		
		modelAndView.addObject("cat", t );
		
		return modelAndView;
	}

	@RequestMapping("/UpdateCategoryToDB")
	ModelAndView DeleteCategoryFromDB( @ModelAttribute("cat") personaldetails t )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		
		cdao.update(t);
		
		return modelAndView;
	}
	

	@RequestMapping("/UpdatepCategoryToDB")
	ModelAndView DeleteCategoryFromDB( @ModelAttribute("cat") productcategory t )
	{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		
		pdao.update(t);
		
		return modelAndView;
	}
	@RequestMapping("/contact")
	ModelAndView index()
	{
		ModelAndView modelAndView = new ModelAndView("Contact");
		
		return modelAndView;
	}	
	
	
	
}