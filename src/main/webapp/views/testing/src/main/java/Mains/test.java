package Mains;

import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.FindBy;

import java.awt.*;
import java.time.Duration;

public class test {
    private static WebDriver driver = new ChromeDriver();

    @BeforeClass
   public static void preparation(){

        System.setProperty("webdriver.gecko.driver", "F:\\QALab1\\chromedriver.exe");
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        driver.get("http://localhost:8080/site/log_reg/register.html?username=asd&pass=sadas");
    }

    @Test
    public static void Register(){
        driver.get("http://localhost:8080/site/log_reg/register.html?username=asd&pass=sadas");
        WebElement input =  driver.findElement(By.xpath("//input[@name='username']"));
        input.click();

        input.sendKeys("Dragon");
//
        WebElement input2 = driver.findElement(By.xpath("//input[@name='pass']"));
        input2.click();

        input2.sendKeys("20.05.2003");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        driver.get("http://localhost:8080/site/index.html");



    }



// PAGE FACTORE
    @FindBy(xpath = "//*[@id='hellowthere']")
    WebElement getStarted;




    public void clickOnGetStarted() {
        getStarted.click();
    }
//



// Нормальний тест
    @Test
    public static void SortByDate(){
        driver.get("http://localhost:8080/site/long_dark_news.php");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        WebElement input =  driver.findElement(By.xpath("//input[@class='search_field']"));
        input.click();

        input.sendKeys("Will", Keys.ENTER);



//


        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }




    }





    @Test
    public static void ShopTestBuy(){
        driver.get("http://localhost:8080/site/shop-right-sidebar.php");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


        WebElement input = null;
        try {

            input = driver.findElement(By.xpath("//a[@id='1']"));
            input.click();

        } catch (Exception e) {
            e.printStackTrace();
        }





//


        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        driver.get("http://localhost:8080/site/bucket.php");




    }

    @Test
    public static void ShopSorting(){


        driver.get("http://localhost:8080/site/shop-right-sidebar.php");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


        WebElement input = null;
        try {

            input = driver.findElement(By.xpath("//a[@id='productCategoriesButton_1']"));

            input.click();

        } catch (Exception e) {
            e.printStackTrace();
        }





//


        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }






    }

    @Test
    public static void ShopBuy2(){


        driver.get("http://localhost:8080/site/shop-right-sidebar.php");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


        WebElement input = null;
        try {

            input = driver.findElement(By.xpath("//i[@class='flaticon-supermarket']"));

            input.click();

        } catch (Exception e) {
            e.printStackTrace();
        }





//


        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }






    }

    @Test
    public static void WriteComment(){


        driver.get("http://localhost:8080/site/long_dark_news_the-long-dark-returns-to-geforce-now.php");

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


        WebElement input = null;
        WebElement input2 = null;
        WebElement input3 = null;
        try {

            input = driver.findElement(By.xpath("//input[@class='field__input']"));
            input.click();
            input.sendKeys("Den");

        } catch (Exception e) {
            e.printStackTrace();
        }


        input2 = driver.findElement(By.xpath("//textarea[@class='text_inner']"));
        input2.click();
        input2.sendKeys("Finally, RTX");


        input3 = driver.findElement(By.xpath("//div[@id='btn']"));
        input3.click();









//


        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }






    }





//    public static void main(String[] args) throws Exception {



//
//        WebElement MoreButton = driver.findElement(By.xpath("//div[@class='n6']"));
//        MoreButton.click();
//
//
//
//        WebElement MitkaButton = driver.findElement(By.xpath("//div[@class='CL Wj']"));
//        MitkaButton.click();
//
//
//
//        WebElement MitkaName = driver.findElement(By.xpath("//input[@class='xx']"));
//
//
//        MitkaName.sendKeys("aa", Keys.ENTER);
//
//        Thread.sleep(3000);
//
//
//        MoreButton.click();
//
//
//        WebElement MitkaSetting = driver.findElement(By.xpath("//input[@class='CL Q7']"));
//        MitkaSetting.click();

//    }

}
