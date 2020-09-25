package com.sedatbsp.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class DiscountCodeConstraintValidator implements ConstraintValidator<DiscountCode, String> {

	private String discountPrefix;
	
	@Override
	public void initialize(DiscountCode constraintAnnotation) {
		
		discountPrefix = constraintAnnotation.value();
		ConstraintValidator.super.initialize(constraintAnnotation);
	}
	
	@Override
	public boolean isValid(String theCode, ConstraintValidatorContext constraintValidatorContext) {
		
		boolean result;
		
		if(theCode!=null) {
			result = theCode.startsWith(discountPrefix);
		}
		else {
			result = true;
		}
		
		return result;
	}

}
