/**
 * 
 */
package com.jee.course.loginsample;

/**
 * @author Y9EB6R784
 *  Ceci un javabean utilisé dans l'exemple 
 *  this is a javabean to be used in the sample
 *
 */
public class LoginBean {
	private String userName;
	private String password;

	public boolean isValidUser() {
		return "admin".equalsIgnoreCase(this.userName) && "admin".equalsIgnoreCase(this.password);
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
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
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

}
