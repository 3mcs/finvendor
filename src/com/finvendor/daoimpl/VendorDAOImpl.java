/**
 * 
 */
package com.finvendor.daoimpl;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.theme.ThemeChangeInterceptor;

import com.finvendor.dao.VendorDAO;
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
public class VendorDAOImpl implements VendorDAO{
	
	private static Logger logger = Logger.getLogger(VendorDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#saveVendorInfo(com.finvendor.model.Vendor)
	 */
	@Transactional
	@Override
	public void saveVendorInfo(Vendor vendor) {
		logger.info("saveVendorInfo method---");
		try{
			this.sessionFactory.getCurrentSession().save(vendor);
		}catch(Exception ex){
			ex.printStackTrace();
			logger.error("Error in saveVendorInfo---- " + ex);
		}
		
	}
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getVendorInfoByEmail(com.finvendor.model.Vendor)
	 */
	@Transactional
	@Override
	public Vendor getVendorInfoByEmail(String email) {
		logger.info("getVendorInfoByEmail method---");
		Vendor vendor=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(Vendor.class);
			criteria.add(Restrictions.sqlRestriction("lower(email) like '" + email.toLowerCase() + "'"));
			vendor = (Vendor) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getVendorInfoByEmail---- " + ex);
		}
		return vendor;
	}
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#updateVendorPersonalInfoTab(com.finvendor.model.Vendor)
	 */
	@Transactional
	@Override
	public void updateVendorPersonalInfoTab(Vendor vendor, String username) {
		logger.info("updateVendorPersonalInfoTab method---");
		String sqlQuery = null;
		Query query = null;
		try{
			sqlQuery = " update vendor set fname='"+ vendor.getFirstName() +"', lname='"+vendor.getLastName()+"',company='"+vendor.getCompany()+"', email='"+vendor.getEmail()+"'," +
					" telephone='"+vendor.getTelephone()+"', regionofincorp='"+vendor.getRegionofincorp()+"', " +
							"countryofincorp='"+vendor.getCountryofincorp()+"' where username= '"+username+"'   " ;
			query= this.sessionFactory.getCurrentSession().createSQLQuery(sqlQuery);
			query.executeUpdate();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in updateVendorPersonalInfoTab---- " + ex);
		}
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getVendorDetails(com.finvendor.model.Vendor)
	 */
	@Transactional
	@Override
	public Vendor getVendorDetails(String appUser) {
		logger.info("getVendorDetails method---");
		Vendor vendor=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(Vendor.class);
			criteria.add(Restrictions.sqlRestriction("lower(username) like '" + appUser.toLowerCase() + "'"));
			vendor = (Vendor) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getVendorDetails---- " + ex);
		}
		return vendor;
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getVendorDetails(com.finvendor.model.AssetClass)
	 */
	@Transactional
	@Override
	public AssetClass getAssetClassDetails(String asset_class) {
		logger.info("getAssetClassDetails method---");
		AssetClass assetClass=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(AssetClass.class);
			criteria.add(Restrictions.sqlRestriction("lower(description) like '" + asset_class.toLowerCase() + "'"));
			assetClass = (AssetClass) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getAssetClassDetails---- " + ex);
		}
		return assetClass;
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getSecurityTypes(com.finvendor.model.SecurityType)
	 */
	@Transactional
	@Override
	public SecurityType getSecurityTypes(String securities) {
		logger.info("getSecurityTypes method---");
		SecurityType securityType=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(SecurityType.class);
			criteria.add(Restrictions.sqlRestriction("lower(name) like '" + securities.toLowerCase() + "'"));
			securityType = (SecurityType) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getSecurityTypes---- " + ex);
		}
		return securityType;
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#updateVendorOfferingDetails(com.finvendor.model.VendorOffering)
	 */
	@Transactional
	@Override
	public void updateVendorOfferingDetails(VendorOffering vendorOffering) {
		logger.info("updateVendorOfferingDetails method---");
		try{
				this.sessionFactory.getCurrentSession().save(vendorOffering);	
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in updateVendorOfferingDetails---- " + ex);
		}
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getRegionsByName(com.finvendor.model.Region)
	 */
	@Transactional
	@Override
	public Region getRegionsByName(String regionsName) {
		logger.info("getRegionsByName method---");
		Region region=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(Region.class);
			criteria.add(Restrictions.sqlRestriction("lower(name) like '" + regionsName.toLowerCase() + "'"));
			region = (Region) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getRegionsByName---- " + ex);
		}
		return region;
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#getCountryByName(com.finvendor.model.Country)
	 */
	@Transactional
	@Override
	public Country getCountryByName(String countryName) {
		logger.info("getCountryByName method---");
		Country country=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(Country.class);
			criteria.add(Restrictions.sqlRestriction("lower(name) like '" + countryName.toLowerCase() + "'"));
			country = (Country) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getCountryByName---- " + ex);
		}
		return country;
	}
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#updateVendorOfferingDetails(com.finvendor.model.Exchange)
	 */
	@Transactional
	@Override
	public Exchange getExchangesByName(String exchangeName) {
		logger.info("getExchangesByName method---");
		Exchange exchange=null; Criteria criteria=null;
		try{
			criteria = this.sessionFactory.getCurrentSession().createCriteria(Exchange.class);
			criteria.add(Restrictions.sqlRestriction("lower(name) like '" + exchangeName.toLowerCase() + "'"));
			exchange = (Exchange) criteria.uniqueResult();
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in getExchangesByName---- " + ex);
		}
		return exchange;
	}
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.VendorDAOImpl#updateVendorRegionCountryExchangeInfos(com.finvendor.model.VendorRegionCountryExchangeMap)
	 */
	@Transactional
	@Override
	public void updateVendorRegionCountryExchangeInfos(
			VendorRegionCountryExchangeMap vendorRegionCountryExchangeMap) {
		logger.info("updateVendorRegionCountryExchangeInfos method---");
		try{
				this.sessionFactory.getCurrentSession().save(vendorRegionCountryExchangeMap);	
		}catch (Exception ex) {
			ex.printStackTrace();
			logger.error("Error in updateVendorRegionCountryExchangeInfos---- " + ex);
		}
	}

}
