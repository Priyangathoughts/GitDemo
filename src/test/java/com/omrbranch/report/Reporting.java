package com.omrbranch.report;

import java.io.File;


import java.util.ArrayList;
import java.util.List;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class Reporting {
    public static void generateJVMReport(String jsonFile) {
    File file=new File("C:\\Users\\vijay krishnan\\java selenium\\CucumberTask\\target");
    Configuration configuration=new Configuration(file,"Omr Branch automation");
    configuration.addClassifications("OS", "Window");
    configuration.addClassifications("Browser", "chrome");
    configuration.addClassifications("Browser Version", "158");
    configuration.addClassifications("sprint", "34");
    configuration.addClassifications("Testing", "Reg");
    
    List<String>jsonFiles=new ArrayList<String>();
    jsonFiles.add(jsonFile);
    ReportBuilder builder=new ReportBuilder(jsonFiles,configuration);
    builder.generateReports();
}
}