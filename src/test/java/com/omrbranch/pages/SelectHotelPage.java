package com.omrbranch.pages;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbrach.base.BaseClass;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SelectHotelPage extends BaseClass {

	public SelectHotelPage() {
		PageFactory.initElements(driver, this);
			}
	@FindBy(xpath="//h5[text()='Select Hotel']")
	private WebElement txtSearch;
	@FindBy(xpath="//h5[text()='Hilton Deluxe']")
	private WebElement txtHotelName;
	@FindBy(xpath="(//strong[@class='total-prize'])[1]")
	private WebElement txtPrice;
	@FindBy(xpath="(//a[text()='Continue'])[1]")
	private WebElement btnContinue;
	@FindBy(xpath="//h2[text()='Book Hotel - Hilton Deluxe']")
	private WebElement bookhotel;
	@FindBy(xpath="//label[text()='Price low to high']")
	private WebElement radiobtn;
	@FindBy(xpath="//label[text()='Name Descending']")
	private WebElement decending;
	
	public static  String firstHotelName;
	public static  String firstHotelprice;
	public String getSelectHotelSuccessMsg() {
		String txtSelectHotelSuccessMessage = elementGetText(txtSearch);
		return txtSelectHotelSuccessMessage;
		}
	public String getRoomTypeHeaderMsg() {
		String txtRoomTypeHeader = elementGetText(bookhotel);
		return txtRoomTypeHeader;
		
	}
	public void selectHotelFirstName() {
		firstHotelName="";
		firstHotelprice="";
		Click(btnContinue);
	
	}
	public void accept() {
		accept();
	}
	public void cancel() {
		alertCancel();

	}
	public void clickPriceLowToHigh() {
		Click(radiobtn);

	}
	public void clickDescending() {
		Click(decending);

	}
	
	public void sortHotelPriceAscending() {
		List<WebElement> li = driver.findElements(By.xpath("//Strong [@class=\"total-prize\"]"));
		
		//Expected List
		List<String> exp =new ArrayList<String>();
		for (WebElement e : li) {
			exp.add(e.getText());
		}
		System.out.println(exp);
		
		//Actual list
		List<String>act=new ArrayList<String>();
		act.addAll(exp);
		Collections.sort(act);
		System.out.println(act);
	if (exp.equals(act)) {
		System.out.println("Hotel prices are listed in ascending order");
	} else {
        System.out.println("Hotel price not listed in ascending order");
	}
	}
	public void sortHotelNameDescending() {
		
		List<WebElement> li= driver.findElements(By.xpath("//h5[contains(text(),'Deluxe')]"));
		
		//Expected list
		List<String>exp = new ArrayList<String>();
		for (WebElement e : li) {
			exp.add(e.getText());
		}	
		System.out.println(exp);	
		
		//Actual list
		List<String> act = new ArrayList<String>();
		act.addAll(exp);
		Collections.sort(act);
		Collections.reverse(act);
		System.out.println(act);	
		if (exp.equals(act)) {
			System.out.println("Hotel name listed in descending order");
			
		} else {
                System.out.println("Hotel name not listed in descending order");
		}

	}
	
	
	


}
