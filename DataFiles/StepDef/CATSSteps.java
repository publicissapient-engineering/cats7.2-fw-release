package cats.selenium.bdd.stepdef;

import com.sapient.qa.cats.core.framework.CATSCucumberConfig;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeStep;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class CATSSteps extends CATSCucumberConfig {

  @Before()
  public void launch(Scenario scenario) {
    catsBeforeScenario(scenario); // this must be called all the time to invoke CATS framework
    disableAutoAssertion();
  }

  @BeforeStep
  public void beforeStep(Scenario scenario) {
    catsBeforeStep(); // this must be called all the time to invoke CATS framework
  }

  @AfterStep
  public void afterStep() {
    catsAfterStep(); // this must be called all the time to invoke CATS framework
  }
  /* All the steps executed in this step-definitions WILL BE asserted based on the status of CATS actions. CATS
   * PASS/DONE (I)/DONE (W) would be treated as PASSED Unless DONE (W) is configured to treat as FAIL Once the STEP
   * FAILs it will throws assertion Failure Exception. User has option to disable auto Assertions */

  @Given("user wants to launch {string}")
  public void user_wants_to_launch(String url) {
    catsAction.launchSite(url);
    catsAction.pageLoadWait();
  }

  @Given("search a product {string} and select first product")
  public void search_a_product_and_select_first_product(String testData) {
    // catsAction.enter("Target.Header.txtSearch", testData);
    // catsVariable.setGlobal("glb", testData);
    catsAction.setVariableValue("{{htmlid}}", "search");
    catsAction.enter("htmlid::{{htmlid}}", testData);
    // catsAction.enter("htmlid::{{htmlid}}", catsVariable.getGlobal("glb"));
    catsAction.click("Target.Header.btnSearch");
    catsAction.click("Target.Header.btnSearch");
    catsAction.pageLoadWait();
    catsAction.click("Target.SLP.firstProduct");
  }

  @Then("verify lining material {string}")
  public void verify_lining_material_or_insole_material_contains(String expResult) {
    catsAction.verifyTextContainsIgnoreCase("Target.PDP.liningMaterial", expResult);
  }


  @Then("verify lining material or insole material contains {string}")
  public void verify_lining_material_or_insole_material_contain(String expResult) {
    catsAction.verifyTextContainsIgnoreCase("Target.PDP.liningMaterial", expResult);
  }


  @Then("quit the browser")
  public void quit_the_browser() {
    catsAction.quit();
  }

}
