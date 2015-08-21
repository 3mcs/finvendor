/**
 * 
 */
package com.finvendor.dao;

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
public interface VendorDAO {

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to save vendor info
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#saveVendorInfo()
	 */
	void saveVendorInfo(Vendor vendor);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get vendor info
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getVendorInfoByEmail()
	 */
	Vendor getVendorInfoByEmail(String email);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to update vendor personal info
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#updateVendorPersonalInfoTab()
	 */
	void updateVendorPersonalInfoTab(Vendor vendor, String username);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get vendor details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getVendorDetails()
	 */
	Vendor getVendorDetails(String appUser);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get asset class details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getAssetClassDetails()
	 */
	AssetClass getAssetClassDetails(String asset_class);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get asset class details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getSecurityTypes()
	 */
	SecurityType getSecurityTypes(String securities);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get asset class details
	 * 
	 * @see com.finvendor.dao.VendorDAO#updateVendorOfferingDetails()
	 */
	void updateVendorOfferingDetails(VendorOffering vendorOffering);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get region details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getRegionsByName()
	 */
	Region getRegionsByName(String regionsName);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get  country details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getCountryByName()
	 */
	Country getCountryByName(String countryName);

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc) Method to get exchange details
	 * 
	 * @return  
	 * @see com.finvendor.dao.VendorDAO#getExchangesByName()
	 */
	Exchange getExchangesByName(String exchangeName);

	void updateVendorRegionCountryExchangeInfos(
			VendorRegionCountryExchangeMap vendorRegionCountryExchangeMap);

}
