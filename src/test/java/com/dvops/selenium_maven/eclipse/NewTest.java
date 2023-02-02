package com.dvops.selenium_maven.eclipse;

import static org.testng.Assert.fail;

import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.openqa.selenium.By;
//import necessary Selenium WebDriver classes
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;

import io.github.bonigarcia.wdm.WebDriverManager;

import org.testng.annotations.BeforeTest;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;

public class NewTest {
	// declare Selenium WebDriver
	private WebDriver webDriver;
	
//	@BeforeClass
//	public static void BeforeClass() {
//        WebDriverManager.chromedriver().setup();
//    }
	
	@BeforeTest
	public void beforeTest() {
		// Setting system properties of ChromeDriver
		// to amend directory path base on your local file path
//		String chromeDriverDir = "C:\\Program Files\\Google\\Chrome\\chromedriver.exe";
//
//		System.setProperty("webdriver.chrome.driver", chromeDriverDir);

		WebDriverManager.chromedriver().setup();
//		System.setProperty("webdriver.chrome.whitelistedIps", "");
		// initialize FirefoxDriver at the start of test
		webDriver = new ChromeDriver();
	}

	@AfterTest
	public void afterTest() {
		// Quit the ChromeDriver and close all associated window at the end of test
		webDriver.quit();
	}

	//first 2 test cases we are just following the lab to understand how selenium works
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
//registers a new user mary
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
		name.sendKeys("maria");
		username.sendKeys("maria123");
		password.sendKeys("12345");
		email.sendKeys("maria@gmail.com");

		register.click();
		String actualUrl = "http://localhost:8080/DevopsAssignment/RegisterServlet";
		String expectedUrl = driver.getCurrentUrl();
		Assert.assertEquals(expectedUrl, actualUrl);
		driver.quit();
	}
//login as carolyn, carolyn123

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
		
		
		driver.quit();
	}
	
	@Test
	//login with wrong credentials
	public void loginFail() {
		System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8080/DevopsAssignment/login.jsp");
		WebElement username = driver.findElement(By.id("YourUserName"));
		WebElement password = driver.findElement(By.id("YourPassword"));
		WebElement login = driver.findElement(By.id("login"));
		username.sendKeys("carolyn123");
		password.sendKeys("123456");
		login.click();
		String actualUrl = "http://localhost:8080/DevopsAssignment/LoginServlet";
		String expectedUrl = driver.getCurrentUrl();
		Assert.assertEquals(expectedUrl, actualUrl);
		if (driver.findElements(By.id("button")).size() != 0) {
			System.out.println("LoginFail Functional");
		} 
		else {
			System.out.println("LoginFail not Functional");
			Assert.fail();
			
		}
		driver.quit();
		
	}
@Test
//write a review button does not show when user is not logged in
	public void logout() {
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
		
		WebElement logout = driver.findElement(By.id("logout"));
		logout.click();
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");
		if (driver.findElements(By.id("myBtn")).size() != 0) {
			System.out.println("Logout does not work");
			Assert.fail();
		} 
		else {
			System.out.println("Logout works");
			
		
		
	}
		driver.quit();
	}	
	
//login as earlier created user maria
	//add review, edit review and delete review
	@Test
	public void addEditDeleteReview() {
		// login
		System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8080/DevopsAssignment/login.jsp");
		WebElement username = driver.findElement(By.id("YourUserName"));
		WebElement password = driver.findElement(By.id("YourPassword"));
		WebElement login = driver.findElement(By.id("login"));
		username.sendKeys("maria123");
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
		// add a review
		modalAcceptButton.click();
		//edit review
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");
		WebElement edit = driver.findElement(By.id("edit"));
		edit.click();
		WebElement rating1 = driver.findElement(By.id("rating1"));
		WebElement feedback1 = driver.findElement(By.id("feedback1"));
		WebElement save = driver.findElement(By.id("save"));
		rating1.clear();
		rating1.sendKeys("3");
		feedback1.clear();
		feedback1.sendKeys("2");
		save.click();
		//delete review
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");
		WebElement delete = driver.findElement(By.id("delete"));
		delete.click();
		driver.quit();
	}
	
	@Test
	public void getGames() {
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/dashboard");
		if (driver.findElements(By.id("button")).size() != 0) {
			System.out.println("Games exist");
		} 
		else {
			System.out.println("Games doesn't exist");
			Assert.fail();
		}
		driver.quit();
	}
	@Test
	public void getOneGame() {
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");
		if (driver.findElements(By.id("image")).size() != 0) {
			System.out.println("Game Image exist");
		} 
		else {
			System.out.println("Game Image doesn't exist");
			Assert.fail();
		}
		if (driver.findElements(By.id("name")).size() != 0) {
			System.out.println("Game Name exist");
		} 
		else {
			System.out.println("Game Name doesn't exist");
			Assert.fail();
		}
		if (driver.findElements(By.id("category")).size() != 0) {
			System.out.println("Game category exist");
		} 
		else {
			System.out.println("Game category doesn't exist");
			Assert.fail();
		}
		if (driver.findElements(By.id("description")).size() != 0) {
			System.out.println("Game description exist");
		} 
		else {
			System.out.println("Game description doesn't exist");
			Assert.fail();
		}
		driver.quit();
		
				
	}
	
	@Test
	//Testing on a page with reviews
	public void getReviews1() {
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Cooking%20Mama");
		if (driver.findElements(By.id("reviews")).size() != 0) {
			System.out.println("Game reviews exist");
		} 
		else if(driver.findElements(By.id("no-reviews")).size() != 0) {
			System.out.println("Game Reviews doesn't exist");
			
		}
		else {
			Assert.fail();
		}
		driver.quit();
		
				
	}
	@Test
	//Testing on a page with no reviews
	public void getReviews2() {
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:8080/DevopsAssignment/GameServlet/edit?name=Final%20Fantasy:%20Endwalker");
		if (driver.findElements(By.id("reviews")).size() != 0) {
			System.out.println("Game reviews exist");
		} 
		else if(driver.findElements(By.id("no-reviews")).size() != 0) {
			System.out.println("There are no reviews for this game");
		}
		else {
			Assert.fail();
		}
		
		driver.quit();
				
	}
	
@Test 
	public void getProfile() {
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
	
	driver.get("http://localhost:8080/DevopsAssignment/userprofile.jsp/ProfileServlet");
	if(driver.findElement(By.id("user_name")).getAttribute("value").length() != 0) {
		System.out.println("First Name can be retrieved in profile page");
	}
	else {
		System.out.println("First Name can't be retrieved in profile page");
		Assert.fail();
	}
	if(driver.findElement(By.id("user_un")).getAttribute("value").length() != 0) {
		System.out.println("Username can be retrieved in profile page");
	}
	else {
		System.out.println("Username can't be retrieved in profile page");
		Assert.fail();
	}
	if(driver.findElement(By.id("user_email")).getAttribute("value").length() != 0) {
		System.out.println("Email can be retrieved in profile page");
	}
	else {
		System.out.println("Email can't be retrieved in profile page");
		Assert.fail();
	}
	
	driver.quit();
	
	}

}
