/**
 * 
 */
package com.finvendor.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * @author rayulu vemula
 *
 */
@Entity
@Table(name="users")
public class Users implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="username")
	private String userName;

	@Column(name="password")
	private String password;
	
	@Column(name="enabled")
	private Boolean enabled;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="users")
	private Set<UserRole> userRoles=new HashSet<UserRole>();
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="users")
	private Set<Vendor> vendor=new HashSet<Vendor>();
	 
 
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the enabled
	 */
	public Boolean getEnabled() {
		return enabled;
	}

	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * @return the userRoles
	 */
	public Set<UserRole> getUserRoles() {
		return userRoles;
	}

	/**
	 * @param userRoles the userRoles to set
	 */
	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	/**
	 * @return the vendor
	 */
	public Set<Vendor> getVendor() {
		return vendor;
	}

	/**
	 * @param vendor the vendor to set
	 */
	public void setVendor(Set<Vendor> vendor) {
		this.vendor = vendor;
	}


}

