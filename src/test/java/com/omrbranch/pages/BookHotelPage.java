package com.omrbranch.pages;


import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbrach.base.BaseClass;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BookHotelPage extends BaseClass {
	public BookHotelPage() {

		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath="//h2[text()='Book Hotel - Hilton Deluxe']")
	private WebElement txtBooking;
	@FindBy(id="own")
	private WebElement btnMy;
	@FindBy(id="user_title")
	private WebElement add;
	@FindBy(id="first_name")
	private WebElement txtFirst;
	@FindBy(id="last_name")
	private WebElement txtLast;
	@FindBy(id="user_phone")
	private WebElement txtPhone;
	@FindBy(id="user_email")
	private WebElement txtEmail;
	@FindBy(id="gst")
	private WebElement btngst;
	@FindBy(id="gst_registration")
	private WebElement txtRegistration;
	@FindBy(id="company_name")
	private WebElement txtCompany;
	@FindBy(id="company_address")
	private WebElement txtAddress;
	@FindBy(id="step1next")
	private WebElement btnNext;
	@FindBy(id="high")
	private WebElement btnSpecial;
	@FindBy(id="step2next")
	private WebElement btnNext2;
	@FindBy(xpath="//h5[text()='Credit/Debit/ATM Card']")
	private WebElement btnCard;
	@FindBy(id="payment_type")
	private WebElement cardType;
	@FindBy(id="card_type")
	private WebElement selectCard;
	@FindBy(id="card_no")
	private WebElement txtCardNo;
	@FindBy(id="card_name")
	private WebElement txtCardName;
	@FindBy(id="card_month")
	private WebElement month;
	@FindBy(id="card_year")
	private WebElement year;
	@FindBy(id="cvv")
	private WebElement cvv;
	@FindBy(id="submitBtn")
	private WebElement btnSubmit;
	@FindBy(xpath="//h2[text()=' Booking is Confirmed ']")
	private WebElement printOrderId;
	@FindBy(id="invalid-payment_type")
	private WebElement txtPayment;
	@FindBy(id="invalid-card_type")
	private WebElement cardType1;
	@FindBy(id="invalid-card_no")
	private WebElement cardNo;
	@FindBy(id="invalid-card_name")
	private WebElement cardName;
	@FindBy(id="invalid-card_month")
	private WebElement month1;
	@FindBy(id="invalid-cvv")
	private WebElement cvv1;
	
	public WebElement getTxtBooking() {
		String txtBookHotel = elementGetText(txtBooking);
		return txtBooking;
	}
	public WebElement getBtnMy() {

		Click(btnMy);
		Click(add);
		SelectOptionByIndex(add, 2);
		SendKeys(txtFirst, "priyanga");
		SendKeys(txtLast, "sivaraj");
		SendKeys(txtPhone, "9344979743");
		SendKeys(txtEmail, "priyangasiva1@gmail.com");
		Click(btngst);
		return btnMy;
	}
	public String verifyBookHotel() {
		String txtBookHotel = elementGetText(txtBooking);
		return txtBookHotel;
	}
	public void addGuestDetails() {
		Click(btnMy);
		Click(add);
		SelectOptionByIndex(add, 2);
		SendKeys(txtFirst, "priyanga");
		SendKeys(txtLast, "sivaraj");
		SendKeys(txtPhone, "9344979743");
		SendKeys(txtEmail, "priyangasiva1@gmail.com");
		Click(btngst);
	}
	public void	addGsttDetails() {
		SendKeys(txtRegistration, "9043592058");
		SendKeys(txtCompany, "Greens Tech OMR Branch");
		SendKeys(txtAddress, "Thoraipakkam");
		Click(btnNext);
	}
	public void addSpecialRequest() {
		
		Click(btnSpecial);
		Click(btnNext2);
	}
	public void addPaymentDetails() {
		Click(btnCard);
		Click(cardType);
		SelectOptionByIndex(cardType, 1);
		Click(selectCard);
		SelectOptionByIndex(selectCard, 1);
		SendKeys(txtCardNo, "5555555555552222");
		SendKeys(txtCardName, "priyanga");
		SendKeys(month, "December");
		SendKeys(year, "2023");
		SendKeys(cvv, "258");
		Click(btnSubmit);
		
	}
	public String getOrderId() {
		String txtOrderId = elementGetText(printOrderId);
		return txtOrderId;
	}
	public String getCardTypeErrorMsg() {
			String txtInvaliCardType = elementGetText(txtPayment);
			return txtInvaliCardType;

		}
	public String getCardErrorMsg() {
		String txtInvalidCard = elementGetText(cardType1);
		return txtInvalidCard;

	}
	public String getCardNumberErrorMsg() {
		String txtInvalidCardNumber = elementGetText(cardNo);
		return txtInvalidCardNumber;
		
	}
	public String getCardNameErrorMsg() {
		String txtInvalidCardName = elementGetText(cardName);
		return txtInvalidCardName;
		}
	public String getCardExpiryMonthErrorMsg() {
	String txtInvalidMonth = elementGetText(month1);
	return txtInvalidMonth;

	}
	public String getCardCvvErrorMSg() {
		String txtInvalidCvv = elementGetText(cvv1);
		return txtInvalidCvv;
	
	
}
}









