/**
 * 
 */
package com.finvendor.controller;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finvendor.model.Consumer;
import com.finvendor.model.Roles;
import com.finvendor.model.UserRole;
import com.finvendor.model.Users;
import com.finvendor.model.Vendor;
import com.finvendor.service.ConsumerService;
import com.finvendor.service.UserService;
import com.finvendor.service.VendorService;
import com.finvendor.util.CommonUtils;
import com.finvendor.util.RequestConstans;

/**
 * @author rayulu vemula
 *
 */
@Controller
public class RegistrationController {

	private static Logger logger = Logger.getLogger(RegistrationController.class);
	
	String[] vendorTypes = {"Financial Vendor- Data Aggregators", "Financial Vendor- Trading Applications","Financial Vendor- Financial Analytics applications","Financial Vendor- Research report"};
	String[] consumerTypes = {"Financial Firm - Sell side", "Financial Firm - Buy side","Financial Firm - Others","University/College","Other firm"};
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private VendorService vendorService;
	
	@Autowired
	private ConsumerService consumerService;
	
	/**
	 * method for register navigation
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Register.REGISTER, method=RequestMethod.GET)
	public ModelAndView registerNavigation(HttpServletRequest request,@ModelAttribute("users") Users users){
		logger.info("Mehtod for toregisterNavigation--:");
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Register.REGISTER);
		modelAndView.addObject("users", new Users());
		return modelAndView;
	}

	/**
	 * method for check user name in database validation
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Register.REGISTERUSERCHECK, method=RequestMethod.POST)
	public ModelAndView checkUserNameValidation(HttpServletRequest request,@ModelAttribute("users") Users users,
			@RequestParam(value = "VEuLA", required = false) String username){
		logger.info("Mehtod for check username in database --:");
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Register.EMPTY);
		try{
			username = CommonUtils.decrypt(username.getBytes());
			boolean isRxist = userService.validateUsername(username);
			modelAndView.addObject("status", isRxist);
		}catch (Exception e) {
			e.printStackTrace();
			logger.info("Mehtod for check username validaton --:");
		}
		return modelAndView;
	}
	/**
	 * method for check user name in database validation
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Register.CHECKEMAILEXIST, method=RequestMethod.POST)
	public ModelAndView checkEmailValidationExist(HttpServletRequest request,
			@RequestParam(value = "RAyVE", required = false) String email,
			@ModelAttribute("vendor") Vendor vendor,
			@ModelAttribute("consumer") Consumer consumer){
		logger.info("Mehtod for check email validation in database --:");
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Register.EMPTY);
		boolean isExist = false;
		try{
			email = CommonUtils.decrypt(email.getBytes());
			vendor= vendorService.getVendorInfoByEmail(email);
			consumer = consumerService.getConsumerInfoByEmail(email);
			if(vendor!=null || consumer !=null){
				isExist = true;
			}else{
				isExist = false;
			}
			modelAndView.addObject("status", isExist);
		}catch (Exception e) {
			e.printStackTrace();
			logger.info("Mehtod for check email validaton in database--:");
		}
		return modelAndView;
	}
	/**
	 * method for check email validation
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value=RequestConstans.Register.EMAILVALIDATION, method=RequestMethod.POST)
	public ModelAndView emailValidationCheck(HttpServletRequest request,
			@RequestParam(value = "VeM", required = false) String emailId){
		logger.info("Mehtod to check email validation--:");
		ModelAndView modelAndView = new ModelAndView(RequestConstans.Register.EMPTY);
		String extension = ""; String status = "failed"; String checkValues = "gmail,yahoo,aol,rediff,hotmail,in,msn"; List<String>  emailList= null;
		try{
			if(emailId != null && !emailId.isEmpty()) {
				emailId=CommonUtils.decrypt(emailId.getBytes());
				if(emailId.split("@").length > 1) {
					if(emailId.split("@")[1].split("\\.").length > 1) {
						extension = emailId.split("@")[1].split("\\.")[0];
					} else {
						status = "success";
					}
				} else {
					status = "success";
				}
			} 
			 emailList = Arrays.asList(checkValues.split(","));
			for(String checkNames : emailList) {
				if(checkNames.equalsIgnoreCase(extension) ||
					(emailId.contains("@") && emailId.split("@").length >= 1 && emailId.split("@")[1].toLowerCase().contains(checkNames.toLowerCase()+"."))) {
					status="success";
					break;
				} 
			}
			modelAndView.addObject("status", status);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Mehtod to check email validation--:"+ e);
		}
		return modelAndView;
	}
	/**
	 * method for register navigation
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Register.REGISTERATION, method=RequestMethod.POST)
	public ModelAndView saveVendorInfo(HttpServletRequest request,@ModelAttribute("users") Users users,
							@ModelAttribute("userRole") UserRole userRole,
							@ModelAttribute("roles") Roles roles,
							@ModelAttribute("vendor") Vendor vendor,
							@ModelAttribute("consumer") Consumer consumer,
							@RequestParam(value = "VEuMlA", required = false) String uname,
							@RequestParam(value = "RaYulU", required = false) String password,
							@RequestParam(value = "ChEnGA", required = false) String email,
							@RequestParam(value = "LaKS", required = false) String company,
							@RequestParam(value = "ZaB", required = false) String companytype,
							@RequestParam(value = "NoR", required = false) String tags){
		ModelAndView modelAndView=null;
		boolean status = false;
		try{
			uname=CommonUtils.decrypt(uname.getBytes());
			password=CommonUtils.decrypt(password.getBytes());
			email=CommonUtils.decrypt(email.getBytes());
			logger.info("Mehtod to save vendor information--:");
			modelAndView=new ModelAndView(RequestConstans.Register.EMPTY);
			users.setUserName(uname.toLowerCase());
			users.setPassword(password);
			users.setEnabled(true);
			userService.saveUserInfo(users);
			// Vendor information Registration
			if (Arrays.asList(vendorTypes).contains(companytype)) {
				roles.setId(new Integer(RequestConstans.Roles.ROLE_VENDOR_VALUE));
				userRole.setUsers(users);
				userRole.setRoles(roles);
				userService.saveUserRolesInfo(userRole);
				vendor.setId(UUID.randomUUID().toString());
				vendor.setFirstName(uname.toLowerCase());
				vendor.setLastName(uname.toLowerCase());
				vendor.setEmail(email.toLowerCase());
				vendor.setTelephone("9999999999");
				vendor.setCompany(company);
				vendor.setCompanyType(companytype);
				vendor.setTags(tags);
				vendor.setUsers(users);
				vendor.setCompanyAddress("Bengalure");
				vendor.setCountryofincorp("India");
				vendor.setRegionofincorp(new Integer(1));
				vendorService.saveVendorInfo(vendor);
				modelAndView.addObject("status", true);
			}else{
				roles.setId(new Integer(RequestConstans.Roles.ROLE_CONSUMER_VALUE));
				userRole.setUsers(users);
				userRole.setRoles(roles);
				userService.saveUserRolesInfo(userRole);
				consumer.setId(UUID.randomUUID().toString());
				consumer.setFirstName(uname.toLowerCase());
				consumer.setLastName(uname.toLowerCase());
				consumer.setEmail(email.toLowerCase());
				consumer.setTelephone("8888888888");
				consumer.setCompany(company);
				consumer.setCompanyType(companytype);
				consumer.setTags(tags);
				consumer.setUsers(users);
				consumerService.saveConsumerInfo(consumer);
				modelAndView.addObject("status", true);
			}
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Error saving vendor inforamtion--"+ e);
			modelAndView.addObject("status", status);
		}
				
		return modelAndView;
	}
	
	
}
