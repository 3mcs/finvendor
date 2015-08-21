/**
 * 
 */
package com.finvendor.service;

import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import com.finvendor.model.AssetClass;
import com.finvendor.model.Country;
import com.finvendor.model.Exchange;
import com.finvendor.model.Region;
import com.finvendor.model.SecurityType;
import com.finvendor.model.Vendor;
import com.finvendor.model.VendorOffering;
import com.finvendor.model.VendorRegionCountryExchangeMap;

/**
 * @author rayulu vemula
 *
 */
@Service
public interface VendorService {

	/** --------------------------------------------------------------------- */
	/**
	 * Method to save vendor info 
	 * 
	 * @param vendor
	 * @return 
	 */
	void saveVendorInfo(Vendor vendor);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get vendor info 
	 * 
	 * @param email
	 * @return 
	 */
	Vendor getVendorInfoByEmail(String email);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to update vendor personal info tab 
	 * 
	 * @param vendor
	 * @param username
	 * @return 
	 */
	void updateVendorPersonalInfoTab(Vendor vendor, String username);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get vendor details
	 * 
	 * @param username
	 * @return 
	 */
	Vendor getVendorDetails(String username);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get Asset Class Details
	 * 
	 * @param asset_class
	 * @return 
	 */
	AssetClass getAssetClassDetails(String asset_class);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get security type Details
	 * 
	 * @param securities
	 * @return 
	 */
	SecurityType getSecurityTypes(String securities);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to update vendor offering details
	 * 
	 * @param vendorOffering
	 * @return 
	 */
	void updateVendorOfferingDetails(VendorOffering vendorOffering);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get regions by name
	 * 
	 * @param regionsName
	 * @return 
	 */
	Region getRegionsByName(String regionsName);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get countries by name
	 * 
	 * @param countryName
	 * @return 
	 */
	Country getCountryByName(String countryName);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to get exchange by name
	 * 
	 * @param exchangeName
	 * @return 
	 */
	Exchange getExchangesByName(String exchangeName);

	/** --------------------------------------------------------------------- */
	/**
	 * Method to update vendor region country exchange map infos
	 * 
	 * @param vendorRegionCountryExchangeMap
	 * @return 
	 */
	void updateVendorRegionCountryExchangeInfos(
			VendorRegionCountryExchangeMap vendorRegionCountryExchangeMap);

}
