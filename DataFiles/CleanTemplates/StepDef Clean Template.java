package com.sapient.qa.cats.core.selenium.bdd.stepdef;


import static org.testng.Assert.assertTrue;
import org.openqa.selenium.By;
import org.openqa.selenium.remote.RemoteWebDriver;
import com.sapient.qa.cats.core.config.CATSGlobal;
import com.sapient.qa.cats.core.config.CATSRegex;
import com.sapient.qa.cats.core.framework.CATSCucumberConfig;
import cucumber.api.Scenario;
import cucumber.api.java.AfterStep;
import cucumber.api.java.Before;
import cucumber.api.java.BeforeStep;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class CATSHybrid extends CATSCucumberConfig {


  @Before()
  public void launch(Scenario scenario) {
    catsBeforeScenario(scenario); // this must be called all the time to invoke CATS framework
    disableAutoAssertion(); // To run all CATS steps irrespective of failures but finally perform assertion
    enableAutoAssertion();  // To terminate the execution once the failure is triggered
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
  

  @Given("user launches {string}")
  public void user_launches(String url) {
    
//    using argument as parameter
    catsAction.launchSite(url);
    
//     using local variable
    catsAction.setVariableValue("{{localVar}}", "Value to set into a variable");
    
//     using assigning local variable Value to global variable 
    catsAction.setVariableValue("{{{globVar}}}", "{{localVar}}");
    
//     getting the driver created by CATS
    RemoteWebDriver driver = getDriver();
    
//     click on the element using ORM reference
    catsAction.click("Target.Header.btnSearch")
    
//    click on the element using direct locator
    catsAction.click(By.id("submit_1"));
    
//    click on element wihout using CATS Action. It is not recommended as this would trigger exception upon object not found
    getDriver().findElement(By.id("addToCart")).click();
    
    
//    reporting results to CATS result
    if ("actual".equalsIgnoreCase("expected"))
//    this steps will always returns true and CATS result will be PASSED
      status = catsAction.reportResultPass("Verify actual with expected", "", "expResult", "actual");
    else
//     this steps will always result false and CATS result will be FAILED
      status = catsAction.reportResultFail("Verify actual with expected", "", "expResult", "actual");
    
    
//  reporting results to CATS result
    if ("actual".equalsIgnoreCase("expected"))
//  this steps will always returns true and CATS result will be "DONE_FAILED"
      status = catsAction.reportResultInfo("desc", "testData", "expResult", "actResult");
    else
//   this steps will always result false and CATS result will be DONE (W)
      status = catsAction.reportResultWarn("desc", "testData", "expResult", "actResult");
  
    
//    this steps will add the result to CATS report, if first argument is true then it will Pass else Fail
    catsAction.reportResult(true, "desc", "testData", "expResult", "actResult");
    
//  explicit assertion can be done, but this will not be controled by enable or disable auto assertion;
    assertTrue(catsAction.verifyTextContainsIgnoreCase(By.id("abc"), "Full Sleeve"), "Neck line description is matching")
    
//  explicit assertion can be done, but this will not be controled by enable or disable auto assertion;
    assertTrue(true);
    
//   using Regular expression
    CATSRegex.find("Order ID is 2345", "\d+");
    
    CATSMap.getMap("myMap").put("key1", "value1"); // to add new key
    String myValue = (String) CATSMap.getMap("myMap").get("key1"); // to access the value
    
    
    /*
     * To access the value of the local variable, global variable, Environment
     * Variable, increment/decrement variable, TDM Ref as variable you can use the
     * DataHandler class
     */
    String ProcessVriable;
    ProcessVriable = DataHandler.process(actionInput.getSuiteName(), "this is my {{localVariable}}");
    ProcessVriable = DataHandler.process(actionInput.getSuiteName(), "this is my {{{Global Variable}}}");
    ProcessVriable = DataHandler.processEnvVariable(actionInput.getSuiteName(), "<<SuiteVariable>>");
    ProcessVriable = DataHandler.processEnvVariable(actionInput.getSuiteName(), "<<ScenarioVariable>>");
    ProcessVriable = DataHandler.processEnvVariable(actionInput.getSuiteName(), "<<CURR_SCENARIO>>");
    ProcessVriable = DataHandler.processUnary(actionInput.getSuiteName(), "<<+5:IncrementVariable>>");
    ProcessVriable = DataHandler.processUnary(actionInput.getSuiteName(), "<<:IncrementVariable>>");

  }
}
