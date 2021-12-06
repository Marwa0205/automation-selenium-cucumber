package com.e2eTests.automation.util;

import org.junit.BeforeClass;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

public class Setup {

	public static WebDriver driver;
	static DriverManager driverManager;
	
	@Before
	/**
	 * Call browser with the design pattern factory navigator 
	 */

	public static void setup() {

		driverManager = DriverManagerFactory.getManager(DriverType.CHROME);
		driver = driverManager.getDriver();
	}
	
	@After
	/**
	 * 
	 * @param scenario :Embed a screenshot in test if test is marked as failed 
	 */
	public void embedScreenShot(Scenario scenario) {
		if (scenario.isFailed()) {
			try {
				scenario.write("Current page URL is" + driver.getCurrentUrl());
				byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
				scenario.embed(screenshot, "Image/png");

			}catch(WebDriverException somePlatformDontSupportScreenshots) {
				System.err.print(somePlatformDontSupportScreenshots.getMessage());
			}
		}
		driver.quit();


	}
}