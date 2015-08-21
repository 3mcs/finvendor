/**
 * 
 */
package com.finvendor.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finvendor.model.AssetClass;
import com.finvendor.model.AssetClassSecurityMap;
import com.finvendor.model.Awards;
import com.finvendor.model.Cost;
import com.finvendor.model.Country;
import com.finvendor.model.Exchange;
import com.finvendor.model.Region;
import com.finvendor.model.SecurityType;
import com.finvendor.model.Solutions;
import com.finvendor.model.Support;
import com.finvendor.model.Users;
import com.finvendor.model.Vendor;
import com.finvendor.model.VendorOffering;
import com.finvendor.model.VendorRegionCountryExchangeMap;
import com.finvendor.model.VendorSupportCoverage;
import com.finvendor.service.MarketDataAggregatorsService;
import com.finvendor.service.UserService;
import com.finvendor.service.VendorService;
import com.finvendor.util.CommonUtils;
import com.finvendor.util.RequestConstans;
import com.google.gson.Gson;

/**
 * @author rayulu vemula
 *
 */
@Controller
public class VendorController {
	
private static Logger logger = Logger.getLogger(VendorController.class);
	
	String[] vendorTypes = {"Financial Vendor- Data Aggregators", "Financial Vendor- Trading Applications","Financial Vendor- Financial Analytics applications","Financial Vendor- Research report"};
	String[] consumerTypes = {"Financial Firm - Sell side", "Financial Firm - Buy side","Financial Firm - Others","University/College","Other firm"};
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private VendorService vendorService;

	@Autowired
	private MarketDataAggregatorsService marketDataAggregatorsService;
	
	/**
	 * method for navigate vendor profile
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Vendor.VENDOR_MY_PROFILE, method=RequestMethod.GET)
	public ModelAndView vendorMyProfile(HttpServletRequest request,@ModelAttribute("users") Users users,
			@RequestParam(value = "RaYUnA", required = false) String username){
		logger.info("Mehtod for vendorNavigation--:");
		List<AssetClass> assetClasses = null;
		List<Region> regions = null;
		List<Country> countries = null;
		List<Exchange> exchanges = null;
		List<Support> supports = null;
		List<Cost> costs = null;
		List<Awards> awards = null;
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Vendor.VENDOR_MY_PROFILE);
		try{
			assetClasses = marketDataAggregatorsService.getAllAssetClass();
			regions = marketDataAggregatorsService.getAllRegionClass();
			countries = marketDataAggregatorsService.getAllCountries();
			exchanges = marketDataAggregatorsService.getAllExchanges();
			supports =  marketDataAggregatorsService.getAllVendorSupports();
			costs  = marketDataAggregatorsService.getAllCostInfo();
			awards = marketDataAggregatorsService.getAllAwards();
			
			username = CommonUtils.decrypt(username.getBytes());
			
			modelAndView.addObject("assetClasses", assetClasses);
			modelAndView.addObject("regions", regions);
			modelAndView.addObject("regionslist", regions);
			modelAndView.addObject("countries", countries);
			modelAndView.addObject("exchanges", exchanges);
			modelAndView.addObject("supports", supports);
			modelAndView.addObject("costs", costs);
			modelAndView.addObject("awards", awards);
			modelAndView.addObject("myprofiletab", "myprofile");
			modelAndView.addObject("username", username);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Mehtod for vendorNavigation--:");
		}
		return modelAndView;
	}
	
	/**
	 * method for navigate vendor profile
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Vendor.VENDOR_MY_OFFERINGS, method=RequestMethod.GET)
	public ModelAndView vendorMyOFFERINGS(HttpServletRequest request,@ModelAttribute("users") Users users,
			@RequestParam(value = "RaYUnA", required = false) String username){
		logger.info("Mehtod for vendorNavigation--:");
		List<AssetClass> assetClasses = null;
		List<Region> regions = null;
		List<Country> countries = null;
		List<Exchange> exchanges = null;
		List<Support> supports = null;
		List<Cost> costs = null;
		List<Awards> awards = null;
		Vendor vendor=null;
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Vendor.VENDOR_MY_OFFERINGS);
		try{
			assetClasses = marketDataAggregatorsService.getAllAssetClass();
			regions = marketDataAggregatorsService.getAllRegionClass();
			countries = marketDataAggregatorsService.getAllCountries();
			exchanges = marketDataAggregatorsService.getAllExchanges();
			supports =  marketDataAggregatorsService.getAllVendorSupports();
			costs  = marketDataAggregatorsService.getAllCostInfo();
			awards = marketDataAggregatorsService.getAllAwards();
			
			username = CommonUtils.decrypt(username.getBytes());
			
			vendor = vendorService.getVendorInfoByEmail(username);
			
			/*System.out.println("getting dataagge---:" + vendor.getCompanyType());*/
			
			modelAndView.addObject("assetClasses", assetClasses);
			modelAndView.addObject("regions", regions);
			modelAndView.addObject("regionslist", regions);
			modelAndView.addObject("countries", countries);
			modelAndView.addObject("exchanges", exchanges);
			modelAndView.addObject("supports", supports);
			modelAndView.addObject("costs", costs);
			modelAndView.addObject("awards", awards);
			modelAndView.addObject("myofferingstab", "myofferings");
			
			modelAndView.addObject("username", username);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Mehtod for vendorNavigation--:");
		}
		return modelAndView;
	}
	
	
	/**
	 * method for navigate vendor profile
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	
	@RequestMapping(value=RequestConstans.Vendor.VENDOR_RFP_INBOX, method=RequestMethod.GET)
	public ModelAndView vendorRFPInbox(HttpServletRequest request,@ModelAttribute("users") Users users,
			@RequestParam(value = "RaYUnA", required = false) String username){
		logger.info("Mehtod for vendorNavigation--:");
		List<AssetClass> assetClasses = null;
		List<Region> regions = null;
		List<Country> countries = null;
		List<Exchange> exchanges = null;
		List<Support> supports = null;
		List<Cost> costs = null;
		List<Awards> awards = null;
		Vendor vendor=null;
		ModelAndView modelAndView=new ModelAndView(RequestConstans.Vendor.VENDOR_RFP_INBOX);
		try{
			assetClasses = marketDataAggregatorsService.getAllAssetClass();
			regions = marketDataAggregatorsService.getAllRegionClass();
			countries = marketDataAggregatorsService.getAllCountries();
			exchanges = marketDataAggregatorsService.getAllExchanges();
			supports =  marketDataAggregatorsService.getAllVendorSupports();
			costs  = marketDataAggregatorsService.getAllCostInfo();
			awards = marketDataAggregatorsService.getAllAwards();
			
			username = CommonUtils.decrypt(username.getBytes());
			
			vendor = vendorService.getVendorInfoByEmail(username);
			
			/*System.out.println("getting dataagge---:" + vendor.getCompanyType());*/
			
			modelAndView.addObject("assetClasses", assetClasses);
			modelAndView.addObject("regions", regions);
			modelAndView.addObject("regionslist", regions);
			modelAndView.addObject("countries", countries);
			modelAndView.addObject("exchanges", exchanges);
			modelAndView.addObject("supports", supports);
			modelAndView.addObject("costs", costs);
			modelAndView.addObject("awards", awards);
			modelAndView.addObject("RFPInbox", "RFPInbox");
			
			modelAndView.addObject("username", username);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Mehtod for vendorNavigation--:");
		}
		return modelAndView;
	}
	
	
	/**
	 * method to full Security types
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value =RequestConstans.Vendor.LOAD_VENDOR_SECURITY_TYPES, method = RequestMethod.GET)
	public ModelAndView loadVendorSecurityType(@RequestParam(value = "RAyuL", required = false) String assetType) {
		ModelAndView modelAndView = new ModelAndView("vendorpage/vendorsecuritylist");
		List<AssetClassSecurityMap> assetClassSecurityMaps = null;
		try {
			assetType = CommonUtils.decrypt(assetType.getBytes());
			if(!assetType.equals("") && !assetType.equals("-SELECT-")){
				AssetClass assetClass = marketDataAggregatorsService.getAssetClassByName(assetType);
				assetClassSecurityMaps = marketDataAggregatorsService.getSecurityTypeByAssetClassId(Integer.parseInt(assetClass.getAsset_class_cd()));
		 	}
			modelAndView.addObject("assetClassVendorSecurityMaps", assetClassSecurityMaps);
		} catch (Exception ex) {
			logger.error("Exception in loadSecurityType -- ", ex);
			modelAndView.addObject("errorMsg", "Unable to load Security type details, Please contact administrator");
		}
		return modelAndView;
	}
	/**
	 * method to full Security types
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value =RequestConstans.Vendor.LOAD_VENDOR_SECURITY_AWARD_TYPES, method = RequestMethod.GET)
	public ModelAndView loadVendorAwardSecurityType(@RequestParam(value = "RAyuL", required = false) String assetType) {
		ModelAndView modelAndView = new ModelAndView("vendorpage/vendorsecurityawardlist");
		List<AssetClassSecurityMap> assetClassSecurityMaps = null;
		try {
			assetType = CommonUtils.decrypt(assetType.getBytes());
			if(!assetType.equals("") && !assetType.equals("-SELECT-")){
				assetClassSecurityMaps = marketDataAggregatorsService.getSecurityTypeByAssetClassId(Integer.parseInt(assetType));
		 	}
			modelAndView.addObject("assetClassVendorSecurityAwardMaps", assetClassSecurityMaps);
		} catch (Exception ex) {
			logger.error("Exception in loadSecurityType -- ", ex);
			modelAndView.addObject("errorMsg", "Unable to load Security type details, Please contact administrator");
		}
		return modelAndView;
	}
	/**
	 * method to full Security types
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value =RequestConstans.Vendor.LOAD_VENDOR_SECURITY_DISTRI_TYPES, method = RequestMethod.GET)
	public ModelAndView loadVendorDstributionSecurityType(@RequestParam(value = "RAyuL", required = false) String assetType) {
		ModelAndView modelAndView = new ModelAndView("vendorpage/vendorsecurityDistrilist");
		List<AssetClassSecurityMap> assetClassSecurityMaps = null;
		try {
			assetType = CommonUtils.decrypt(assetType.getBytes());
			if(!assetType.equals("") && !assetType.equals("-SELECT-")){
				AssetClass assetClass = marketDataAggregatorsService.getAssetClassByName(assetType);
				assetClassSecurityMaps = marketDataAggregatorsService.getSecurityTypeByAssetClassId(Integer.parseInt(assetClass.getAsset_class_cd()));
		 	}
			modelAndView.addObject("assetClassVendorSecurityDistriMaps", assetClassSecurityMaps);
		} catch (Exception ex) {
			logger.error("Exception in loadSecurityType -- ", ex);
			modelAndView.addObject("errorMsg", "Unable to load Security type details, Please contact administrator");
		}
		return modelAndView;
	}
	
	/**
	 * method to update vendor personal info
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value =RequestConstans.Vendor.UPDATE_VENDOR_PERSONAL_INFO_TAB, method = RequestMethod.GET)
	public ModelAndView updateVendorPersonalTabInfo(@ModelAttribute("vendor") Vendor vendor,
			@RequestParam(value = "venFirstname", required = false) String venFirstname,
			@RequestParam(value = "venLastname", required = false) String venLastname,
			@RequestParam(value = "venDesignation", required = false) String venDesignation,
			@RequestParam(value = "venCompany", required = false) String venCompany,
			@RequestParam(value = "venCompanyUrl", required = false) String venCompanyUrl,
			@RequestParam(value = "venCompanyInfo", required = false) String venCompanyInfo,
			@RequestParam(value = "venPrimEmail", required = false) String venPrimEmail,
			@RequestParam(value = "venSecEmail", required = false) String venSecEmail,
			@RequestParam(value = "venPhoneNum", required = false) String venPhoneNum,
			@RequestParam(value = "venRegionOfIncorp", required = false) String venRegionOfIncorp,
			@RequestParam(value = "venCountryOfIncorp", required = false) String venCountryOfIncorp,
			@RequestParam(value = "venCompanyLogo", required = false) String venCompanyLogo) {
		ModelAndView modelAndView = new ModelAndView("empty");
		logger.info("Mehtod for update Vendor Personal info tab--:");
		User appUser = null;
		
		try {
			appUser = (User)SecurityContextHolder.getContext().
					getAuthentication().getPrincipal();
			if(!venFirstname.equals("")){
				vendor.setFirstName(venFirstname);
				vendor.setLastName(venLastname);
				vendor.setCompany(venCompany);
				vendor.setEmail(venPrimEmail);
				vendor.setTelephone(venPhoneNum);
				vendor.setRegionofincorp(Integer.parseInt(venRegionOfIncorp));
				vendor.setCountryofincorp(venCountryOfIncorp);
				vendorService.updateVendorPersonalInfoTab(vendor,appUser.getUsername());
		 	}
		} catch (Exception ex) {
			logger.error("Mehtod for update Vendor Personal info tab -- ", ex);
			modelAndView.addObject("errorMsg", "Unable to update vendor personal details, Please contact administrator");
		}
		return modelAndView;
	}
	
	/**
	 * method to update vendor support coverage info
	 * 
	 * @return modelAndView
	 * @throws Exception
	 *             the exception
	 */
	@RequestMapping(value =RequestConstans.Vendor.UPDATE_VENDOR_SUPPORT_COVEAGE_TAB, method = RequestMethod.GET)
	public ModelAndView updateVendorSupportCoverageInfo(@ModelAttribute("vendor") Vendor vendor,
			@ModelAttribute("assetClass") AssetClass assetClass,
			@ModelAttribute("securityType") SecurityType securityType,
			@ModelAttribute("region") Region region,
			@ModelAttribute("country") Country country,
			@ModelAttribute("exchange") Exchange exchange,
			@ModelAttribute("vendorOffering") VendorOffering vendorOffering,
			@ModelAttribute("solutions") Solutions solutions,
			@ModelAttribute("vendorRegionCountryExchangeMap") VendorRegionCountryExchangeMap vendorRegionCountryExchangeMap,
			@RequestParam(value = "supportCoverageInfo", required = false) String supportCoverageInfo) {
		ModelAndView modelAndView = new ModelAndView("empty");
		logger.info("Mehtod for update Vendor Personal info tab--:");
		User appUser = null;
		try {
			System.out.println("getting support coverage info--:" + supportCoverageInfo);
			Gson gson = new Gson();
			VendorSupportCoverage[] vendorSupportCoverages = null;
			String[] securityTypes= null;
			String[] regions = null;
			String[] countries = null;
			String[] exchanges = null;
			appUser = (User)SecurityContextHolder.getContext().
					getAuthentication().getPrincipal();
			if(!supportCoverageInfo.equals("") && supportCoverageInfo != null){
				vendorSupportCoverages = gson.fromJson(replaceJsonInput(supportCoverageInfo.toString()), VendorSupportCoverage[].class);
				vendor = vendorService.getVendorDetails(appUser.getUsername());
				vendor.setId(vendor.getId());
				if(vendorSupportCoverages.length > 0)
				for (VendorSupportCoverage vendorSupportCoverage : vendorSupportCoverages) {
					  assetClass = vendorService.getAssetClassDetails(vendorSupportCoverage.getAsset_class());
					  assetClass.setAsset_class_id(assetClass.getAsset_class_id());
					  securityTypes = vendorSupportCoverage.getSecurity_type().split(",");	
					  regions = vendorSupportCoverage.getCoverage_region().split(",");
					  countries = vendorSupportCoverage.getCoverage_country().split(",");
					  exchanges = vendorSupportCoverage.getCoverage_exchange().split(",");
					  if(securityTypes.length > 0)
						for (String securities : securityTypes) {
							securityType = vendorService.getSecurityTypes(securities);
							securityType.setSecurity_type_id(securityType.getSecurity_type_id());
							solutions.setSolution_id(1);
							vendorOffering.setAssetClass(assetClass);
							vendorOffering.setSecurityType(securityType);
							vendorOffering.setVendor(vendor);
							vendorOffering.setSolutions(solutions);
							vendorOffering.setName("Best plans");
							vendorService.updateVendorOfferingDetails(vendorOffering);
						}
						for (String regionsName : regions) {
							region = vendorService.getRegionsByName(regionsName);
							vendorRegionCountryExchangeMap.setVendor(vendor);
							region.setRegion_id(region.getRegion_id());
							vendorRegionCountryExchangeMap.setRegion(region);
							for (String countryName : countries) {
								country = vendorService.getCountryByName(countryName);
								country.setCountry_id(country.getCountry_id());
								vendorRegionCountryExchangeMap.setCountry(country);
								for (String exchangeName : exchanges) {
									exchange = vendorService.getExchangesByName(exchangeName);
									exchange.setExchange_id(exchange.getExchange_id());
									vendorRegionCountryExchangeMap.setExchange(exchange);
								    vendorService.updateVendorRegionCountryExchangeInfos(vendorRegionCountryExchangeMap);
								}
							}
					}
					
				}
				
		 	}
		} catch (Exception ex) {
			logger.error("Mehtod for update Vendor Support Coverage info-- ", ex);
			modelAndView.addObject("errorMsg", "Unable to update vendor support coverage info, Please contact administrator");
		}
		return modelAndView;
	}

	/**
	 * method to convert JSON values
	 * 
	 * @return String
	 * @throws Exception
	 *             the exception
	 */
	private String replaceJsonInput(String inputField) {
		String returnValue = "";
		try {
			returnValue = inputField.replace("Asset Class", "asset_class");
			returnValue = returnValue.replace("Security type", "security_type");
			returnValue = returnValue.replace("Data Coverage Region", "coverage_region");
			returnValue = returnValue.replace("Data Coverage Country", "coverage_country");
			returnValue = returnValue.replace("Data Coverage Exchange", "coverage_exchange");
			returnValue = returnValue.replace("Data Attribute", "data_attribute");
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return returnValue;
	}
}
