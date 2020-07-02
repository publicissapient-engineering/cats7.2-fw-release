package cats.selenium.bdd.stepdef;


import static org.testng.Assert.assertTrue;
import org.openqa.selenium.By;
import com.sapient.qa.cats.core.framework.CATSCucumberConfig;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeStep;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class CATSHybrid extends CATSCucumberConfig {


  @Before()
  public void launch(Scenario scenario) {
    catsBeforeScenario(scenario); // this must be called all the time to invoke CATS framework
    disableAutoAssertion();
  }

  @BeforeStep
  public void beforeStep(Scenario scenario) {
    scenario.write("in cats Hybrid");
    catsBeforeStep(); // this must be called all the time to invoke CATS framework
    System.out.println(scenario.getStatus());
  }

  @AfterStep
  public void afterStep() {
    catsAfterStep(); // this must be called all the time to invoke CATS framework
  }
  /* All the steps executed in this step-definitions WILL NOT BE asserted based on the status of CATS actions, as the
   * auto assertion has been disabled; User has to call the assertions manually */

  @Given("user launches {string}")
  public void user_launches(String url) {
    catsAction.launchSite(url);
    catsAction.pageLoadWait();
  }

  @Given("search item number {string}")
  public void search_item_number(String testData) {
    catsAction.enter("Target.Header.txtSearch", testData);
    catsAction.click("Target.Header.btnSearch");
    catsAction.pageLoadWait();
    getDriver().findElement(By.xpath(
        "/html/body/div[1]/div/div[6]/div/div[3]/div/div/div[1]/div[3]/div[2]/ul/li/div/div[1]/h3/a/div/div/div/picture[1]/img"))
        .click();

  }



  @Then("Verify item neckline is {string}")
  public void verify_item_neckline_is(String neckLine) {
    boolean status;
    String fit = "Standard fit";
    // using Java code for assertion and add the steps to CATS for reporting
    String fitDesc =
        getDriver().findElement(By.xpath("//div[@data-test='detailsTab']//b[starts-with(text(),'Fit:')]")).getText();
    if (fitDesc.equalsIgnoreCase(fit))
      status = catsAction.reportResultPass("Verify the Fit", "", fit, fitDesc);
    else
      status = catsAction.reportResultFail("Verify the Fit", "", fit, fitDesc);

    // assert the FIT
    assertTrue(status);

    // Otherway of assertion
    status = fitDesc.equalsIgnoreCase(fit);
    catsAction.reportResult(status, "Verifyin the Fit attribute", "", fit, fitDesc);
    assertTrue(status);
    // usering assertion
    assertTrue(catsAction.verifyTextContainsIgnoreCase("Target.PDP.neckLine", neckLine),
        "Neck line description is matching");
  }

  @Then("close the browser")
  public void close_the_browser() {
    catsAction.quit();
  }
}
