package com.omrbranch.runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith (Cucumber.class)
@CucumberOptions(tags="@cancelbooking and SelectHotel",features={"src\\main\\resources\\Features\\TC1_Login.feature","src\\main\\resources\\Features\\TC2_ExploreHotel.feature","src\\main\\resources\\Features\\TC3_SelectHotel.feature","src\\main\\resources\\Features\\TC4_BookHotel.feature","src\\main\\resources\\Features\\TC5_changeBooking.feature","src\\main\\resources\\Features\\TC6_CancelBooking.feature"} ,glue="com.omrbranch.stepdefinition")
public class TestRunnerClass {

	
}
