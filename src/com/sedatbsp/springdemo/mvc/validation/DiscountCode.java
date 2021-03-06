package com.sedatbsp.springdemo.mvc.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import org.springframework.beans.factory.annotation.Value;

@Constraint(validatedBy = DiscountCodeConstraintValidator.class)
@Target({ElementType.METHOD,ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface DiscountCode {

	// default DiscountCode tanımlama
	public String value() default "IND";
	
	// default error message tanımlama
	public String message() default "IND ile başlamalıdır!";
	
	public Class<?>[] groups() default {};
	
	public Class<? extends Payload>[] payload() default {};
	
}
