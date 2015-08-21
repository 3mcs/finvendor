package com.finvendor.util;


/**
 * @author rayulu vemula
 *
 */
public class RequestConstans {
	
	public interface Anonymous{
		public static final String ANONYMOUS_USER="anonymousUser";
	}
	
	public interface Home{
		public static final String HOME_PAGE="homePage";
	}
	
	public interface Document{
		public static final String DOCUMENT_DOWNLOAD="downloaddocument";
	}
	
	public interface ConstantValues{
		public static final String ZERO_VALUE="0";
	}
	
	public interface Login{
		public static final String LOGIN="login";
		public static final String LOGOUT="logout";
		public static final String LOGINVALIDATION="checkUserLoginValidation";
		public static final String WELCOME="welcometodashboards";
		public static final String ADMIN_INFO="admin";
		public static final String VENDOR_INFO ="vendor";
		public static final String CONSUMER_INFO ="consumer";
		public static final String SIGNIN_FAILED="loginfailed";
		public static final String HOME = "index";
		public static final String FORGET="forget";
		public static final String RESET_PASSWORD="resetPassword";
	}
	
	public interface Roles{
		public static final String ROLE_VENDOR="ROLE_VENDOR";
		public static final String ROLE_CONSUMER="ROLE_CONSUMER";
		public static final String ROLE_ADMIN="ROLE_ADMIN";
		public static final String ROLE_VENDOR_VALUE="2";
		public static final String ROLE_CONSUMER_VALUE="3";
	}

	public interface Register{
		public static final String REGISTER="register";
		public static final String REGISTERATION="registration";
		public static final String REGISTERUSERCHECK = "checkregisteruservalidation";
		public static final String EMPTY = "empty";
		public static final String EMAILVALIDATION = "emailvalidation";
		public static final String CHECKEMAILEXIST = "checkemailvalidationexist";
	}
	
	public interface MarketAggregators{
		public static final String MARKETAGGREGATORS="marketaggregators";
		public static final String SINGLE_ASSET_CLASS_SEARCH_RESULT = "singleassetsearchresult";
		public static final String MULTI_ASSET_CLASS_SEARCH_RESULT = "multiassetsearchresult";
		public static final String LOAD_REGION_NAME_TYPES = "loadRegionNameTypes";
		public static final String LOAD_SECURITY_TYPES = "loadSecurityTypes";
		public static final String LOAD_EQUITIES_SECURITY_TYPES = "loadEquitiesSecurityTypes";
		public static final String LOAD_FI_SECURITY_TYPES = "loadFISecurityTypes";
		public static final String LOAD_INDICES_SECURITY_TYPES = "loadIndicesSecurityTypes";
		public static final String LOAD_COUNTRY_TYPES = "loadCountryTypes";
		public static final String LOAD_COUNTRY_TYPES_INFO = "loadCountryTypesInfo";
		public static final String LOAD_COUNTRY_TYPES_INFO_MULTI = "loadCountryTypesInfoMulti";
		public static final String LOAD_COUNTRY_TYPES_INFO_ASSET = "loadCountryListAssetInfo";
		public static final String LOAD_COUNTRY_TYPES_INFO_ASSET_FI = "loadCountryListAssetInfoFI";
		public static final String LOAD_EXCHANGE_TYPES = "loadExchangeTypes";
		public static final String LOAD_EXCHANGE_TYPES_ASSET = "loadExchangeAssetList";
		public static final String LOAD_EXCHANGE_TYPES_ASSET_FI = "loadExchangeAssetListFI";
	}
	public interface Vendor{
		//My profile
		public static final String VENDOR_RFP_INBOX="rfpinbox";
		public static final String VENDOR_MY_PROFILE="vendormyprofile";
		public static final String VENDOR_MY_OFFERINGS="vendormyofferings";
		public static final String LOAD_VENDOR_SECURITY_TYPES = "loadVendorSecurityTypes";
		public static final String LOAD_VENDOR_SECURITY_AWARD_TYPES = "loadSecurityAwardTypes";
		public static final String LOAD_VENDOR_SECURITY_DISTRI_TYPES = "loadSecurityDistriTypes";
		
		public static final String UPDATE_VENDOR_PERSONAL_INFO_TAB = "updateVendorPersonalTabInfo";
		public static final String UPDATE_VENDOR_SUPPORT_COVEAGE_TAB = "updateVendorSupportCoverageInfo";
		
		
		public static final String PERSONALDETAILS = "personaldetails";
		public static final String SUPPORTCOVERAGE = "supportcoverage";
		public static final String SUPPORTDETAILS= "supportdetails";
		public static final String AWARDDETAILS= "awarddetails";
		public static final String DATADISTRIBUTION = "datadistribution";
		public static final String SEARCHDATABUYERS = "searchdatabuyers";
		public static final String MYRFP = "myrfp";
		
		//My Offerings
		public static final String VENDOR_MYOFFERINGS_DATACOVERAGE="vendormyofferingsdatacoverage";
		public static final String VENDOR_MYOFFERINGS_DATA_DISTEIBUTION="vendormyofferingsdatadistribution";
	}
	
	public interface Consumer{
		// My Profile--:
		public static final String VENDOR_RFP_INBOX="rfpinbox";
		public static final String CONSUMER_MY_PROFILE="consumermyprofile";
		public static final String CONSUMER_MY_OFFERINGS="consumermyofferings";
		
		public static final String CONSUMER_INVITE_AN_RFP="consumermarketdatainviteanrfp";
		
		// Invite RFP start here---
		public static final String CONSUMER_MARKET_DATANEEDS_INVITE_AN_RFP="consumermarketdataneedsinviteanrfp";
		public static final String CONSUMER_TRADING_APPLICATION_NEEDS_INVITE_AN_RFP="consumertradingapplicationinviteanrfp";
		public static final String CONSUMER_ANALYTICS_APPLICATION_NEEDS_INVITE_AN_RFP="consumeranalyticsapplicationinviteanrfp";
		public static final String CONSUMER_RESEARCG_REPORT_NEEDS_INVITE_AN_RFP="consumerresearchreportinviteanrfp";
		
		// Invite RFP end here----
		
		public static final String LOAD_CONSUMER_SECURITY_TYPES = "loadConsumerSecurityTypes";
		public static final String LOAD_CONSUMER_SECURITY_DATADELIVERY_TYPES = "loadConsumerDataDeliverySecurityTypes";
		public static final String LOAD_VENDOR_SECURITY_DISTRI_TYPES = "loadSecurityDistriTypes";
		public static final String LOAD_COST_PREFERENCE_SECURITY_DISTRI_TYPES = "loadCostPreferenceSecurityTypes";
		
		public static final String COMPANYDETAILS = "companydetails";
		
		public static final String MY_BUSINESS_NEEDS = "mybusinessneeds";
		
		public static final String MARKET_DATA_NEEDS = "marketdataneeds";
		public static final String TRADING_APPLICATION_NEEDS = "tradingapplicationneeds";
		public static final String ANALYTICS_APPLICATION_NEEDS = "analyticsapplicationneeds";
		public static final String RESEARCH_REPORT_NEEDS = "researchreportneeds";
		
		
		
		public static final String MYVENDORPREFERENCE = "myvendorpreference";
		
		public static final String MY_PREFERENCE_MARKET_DATA_NEEDS = "mypreferencemarketdataneeds";
		public static final String MY_PREFERENCE_TRADING_APPLICATION_NEEDS = "mypreferencetradingapplicationneeds";
		public static final String MY_PREFERENCE_ANALYTICS_APPLICATION_NEEDS = "mypreferenceanalyticsapplicationneeds";
		public static final String MY_PREFERENCE_RESEARCH_REPORT_NEEDS = "mypreferenceresearchreportneeds";
		
		public static final String DATADELIVERY_COSTPREFERENCE = "datadeliverycostpreference";
		 
		public static final String COST_PREFERENCE_MARKET_DATA_NEEDS = "costpreferencemarketdataneeds";
		public static final String COST_PREFERENCE_TRADING_APPLICATION_NEEDS = "costpreferenceapplicationneeds";
		public static final String COST_PREFERENCE_ANALYTICS_APPLICATION_NEEDS = "costpreferenceanalyticsapplicationneeds";
		public static final String COST_PREFERENCE_RESEARCH_REPORT_NEEDS = "costpreferencesearchreportneeds";
		
		//My Offerings ----:
		
		public static final String CONSUMER_MYOFFER_MARKET_DATA_NEEDS = "consumermyoffermarketdataneeds";
		public static final String CONSUMER_MYOFFER_TRADING_APPLICATION_NEEDS = "consumermyoffertradingapplicationneeds";
		public static final String CONSUMER_MYOFFER_ANALYTICS_APPLICATION_NEEDS = "consumermyofferanalyticsapplicationneeds";
		public static final String CONSUMER_MYOFFER_RESEARCH_REPORT_NEEDS = "consumermyofferresearchreportneeds";
		
		// Invite an RFP
		
		public static final String CONSUMER_INVITE_RFP_MARKET_DATA_NEEDS = "consumerinviteanrfpmarketdataneeds";
		public static final String CONSUMER_INVITE_RFP_TRADING_APPLICATION_NEEDS = "consumerinviteanrfptradingapplicationneeds";
		public static final String CONSUMER_INVITE_RFP_ANALYTICS_APPLICATION_NEEDS = "consumerinviteanrfpanalyticsapplicationneeds";
		public static final String CONSUMER_INVITE_RFP_RESEARCH_REPORT_NEEDS = "consumerinviteanrfpsearchreportneeds";
		
		
		public static final String CONSUMER_WRITE_AN_RFP_TAB1 = "consumerwriteanrfp1";
		public static final String CONSUMER_TRACK_RFP_RESPONSE1 = "consumerrfpresponse1";
		public static final String CONSUMER_SHORTLISTED_VENDORS1 = "consumershortlistedvendor1";
		public static final String CONSUMER_FINAL_VENDOR1 = "consumerfinalvendor1";
		
		
	}
	
	
	
	
	
	
	public static String[] ASSETSLIST = { "Equities", "FI", "Indices", "Derivatives", "FX", "AI", "Misc" };
}
