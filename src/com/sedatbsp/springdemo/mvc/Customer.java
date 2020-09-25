package com.sedatbsp.springdemo.mvc;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.sedatbsp.springdemo.mvc.validation.DiscountCode;

public class Customer {

	private String firstName;
	
	@NotNull(message="Zorunlu!")
	@Size(min=1,message="Zorunlu!")
	private String lastName;
	
	@NotNull(message = "Zorunlu!")
	@Min(value=1,message="En az 1 tane veya daha fazla alabilirsiniz.")
	@Max(value=10,message="En fazla 10 tane alabilirsiniz.")
	private Integer maxPurchase;
	
	@Pattern(regexp = "^[a-zA-Z0-9]{5}",message = "5 karakter girmelisiniz.")
	private String postalCode;
	
	@DiscountCode
	@NotNull(message = "Zorunlu!")
	private String discountCode;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Integer getMaxPurchase() {
		return maxPurchase;
	}
	public void setMaxPurchase(Integer maxPurchase) {
		this.maxPurchase = maxPurchase;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getDiscountCode() {
		return discountCode;
	}
	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}
	
	

	
	
	
}
