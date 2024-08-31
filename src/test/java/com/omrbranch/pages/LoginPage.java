package com.omrbranch.pages;

import java.awt.AWTException;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbrach.base.BaseClass;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginPage extends BaseClass {

	public LoginPage() {
		PageFactory.initElements(driver, this);
	}
	

	@FindBy(id="email")
	private WebElement txtEmail;
	
	@FindBy(id="pass")
	private WebElement txtPass;
	
	@FindBy(xpath="//button[@value='login']")
	private WebElement btnLogin;
	@FindBy(xpath="//b[contains(text(),'Invalid Login')]")
	private WebElement invalid;
	
	public void login(String Username , String Password) {
		SendKeys(txtEmail, Username);
		SendKeys(txtPass, Password);
		Click(btnLogin);
		
		}
	
	public void loginEnterPage(String Username,String Password) throws AWTException {
		SendKeys(txtEmail, Username);
		SendKeys(txtPass, Password);
		EnterKey();
	
	}
	
	public String getLoginErrorMsg() {
		String textLoginError = elementGetText(invalid);
		return textLoginError;
		
	

	}
	

}

	

