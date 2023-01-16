package com.dvops.selenium_maven.eclipse;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
//import necessary Selenium WebDriver classes
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;
import org.testng.annotations.BeforeTest;
import org.testng.Assert;
import org.testng.annotations.AfterTest;

public class NewTest {
	// declare Selenium WebDriver
	private WebDriver webDriver;

	@Test
	public void checkId() {
		// Load website as a new page
		webDriver.navigate().to("http://localhost:8080/DevopsAssignment/GameServlet/dashboard");
		WebElement we = webDriver.findElement(By.id("title"));

		System.out.println("id we: " + we.getAttribute("role"));
		Assert.assertEquals(we.getAttribute("role"), "title");
	}

	@Test
	public void checkTitle() {
		// Load website as a new page
		webDriver.navigate().to("http://localhost:8080/DevopsAssignment/GameServlet/dashboard");

		// Assert the title to check that we are indeed in the correct website
		Assert.assertEquals(webDriver.getTitle(), "Page for the listing and description of games");

		System.out.println("title: " + webDriver.getTitle());

		// Retrieve link using it's class name and click on it
		webDriver.findElement(By.className("link")).click();

		// Assert the new title to check that the title contain Wikipedia and the button
		// had successfully bring us to the new page
		Assert.assertTrue(webDriver.getTitle().contains("Game Review"));
		System.out.println("new title(next page): " + webDriver.getTitle());
	}

	@Test
	public void login() {
		System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8080/DevopsAssignment/login.jsp");
		WebElement username = driver.findElement(By.id("YourUserName"));
		WebElement password = driver.findElement(By.id("YourPassword"));
		WebElement login = driver.findElement(By.id("login"));
		username.sendKeys("carolyn123");
		password.sendKeys("12345");
		login.click();
		String actualUrl = "http://localhost:8080/DevopsAssignment/LoginServlet";
		String expectedUrl = driver.getCurrentUrl();
		Assert.assertEquals(expectedUrl, actualUrl);
	}

	@Test
	public void register() {
		System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8080/DevopsAssignment/register.jsp");
		WebElement name = driver.findElement(By.id("yourName"));
		WebElement username = driver.findElement(By.id("yourUserName"));
		WebElement password = driver.findElement(By.id("yourPassword"));
		WebElement email = driver.findElement(By.id("yourEmail"));
		WebElement register = driver.findElement(By.id("register"));
		name.sendKeys("mary");
		username.sendKeys("mary123");
		password.sendKeys("12345");
		email.sendKeys("mary@gmail.com");

		register.click();
		String actualUrl = "http://localhost:8080/DevopsAssignment/RegisterServlet";
		String expectedUrl = driver.getCurrentUrl();
		Assert.assertEquals(expectedUrl, actualUrl);
	}

	@Test
	public void addReview() {
		System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8080/DevopsAssignment/login.jsp");
		WebElement username = driver.findElement(By.id("YourUserName"));
		WebElement password = driver.findElement(By.id("YourPassword"));
		WebElement login = driver.findElement(By.id("login"));
		username.sendKeys("carolyn123");
		password.sendKeys("12345");
		login.click();
		String actualUrl = "http://localhost:8080/DevopsAssignment/LoginServlet";
		String expectedUrl = driver.getCurrentUrl();
		Assert.assertEquals(expectedUrl, actualUrl);

		driver.manage().window().maximize();
		// to navigate to the website
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");

		// to click Launch model button - Trigger element
		driver.findElement(By.xpath("//button[@data-target='#myModal']")).click();

		// wait to let the modal box be visible
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("modal")));

		// to fetch the web element of the modal container
		System.out.println("Fetching the web element for modal container");
		WebElement modalContainer = driver.findElement(By.className("modal"));
		WebElement rate = driver.findElement(By.id("rate"));
		WebElement feedback = driver.findElement(By.id("review"));
		rate.sendKeys("2");
		feedback.sendKeys("3");
		WebElement modalAcceptButton = modalContainer.findElement(By.xpath(".//button[contains(text(),'Submit')]"));
		modalAcceptButton.click();
	}

	@BeforeTest
	public void beforeTest() {
		// Setting system properties of ChromeDriver
		// to amend directory path base on your local file path
		String chromeDriverDir = "C:\\Program Files\\Google\\Chrome\\chromedriver.exe";

		System.setProperty("webdriver.chrome.driver", chromeDriverDir);

		// initialize FirefoxDriver at the start of test
		webDriver = new ChromeDriver();
	}

	@AfterTest
	public void afterTest() {
		// Quit the ChromeDriver and close all associated window at the end of test
		webDriver.quit();
	}

}
