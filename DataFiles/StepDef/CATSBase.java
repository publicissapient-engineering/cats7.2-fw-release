package cats.selenium.bdd.stepdef;

import java.util.List;
import java.util.Map;
import com.sapient.qa.cats.core.framework.CATSCucumberConfig;
import com.sapient.qa.cats.core.framework.CATSStepExecutor;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeStep;
import io.cucumber.java.ParameterType;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;

public class CATSBase extends CATSCucumberConfig {

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

  @ParameterType(name = "Smart Steps", value = "^_\\s*:.*", preferForRegexMatch = true, useForSnippets = true)
  public String smartSteps(String match) {
    return match;
  }

  @Given("{Smart Steps}")
  public void catsSmartSteps(String stepName, DataTable dt) {
    List<Map<String, String>> stepsList = dt.asMaps(String.class, String.class);
    stepsList.forEach(step -> {
      CATSStepExecutor cs = catsAction.catsStepExecute();
      step.forEach((k, v) -> {
        String key = k.toLowerCase().trim();
        if (key.contains("action"))
          cs.action(v.replaceAll("\\s*", ""));
        else if (key.contains("data"))
          cs.data(v);
        else if (key.contains("desc"))
          cs.desc(v);
        else if (key.contains("exp"))
          cs.expected(v);
        else if (key.contains("locat") || key.equals("or") || key.equals("object"))
          cs.locator(v);
        else if (key.contains("source"))
          cs.source(v);
        else if (key.contains("config"))
          cs.svcConfig(v);
        else if (key.contains("exit") || key.contains("flag"))
          cs.flag(v);
        else if (key.contains("url"))
          cs.endPoint(v);
        else if (key.contains("header"))
          cs.headerParam(v);
        else if (key.contains("query"))
          cs.queryParam(v);
        else if (key.contains("input"))
          cs.inputParam(v);
        else if (key.contains("media"))
          cs.mediaType(v);
        else if (key.contains("password"))
          cs.password(v);
        else if (key.contains("user"))
          cs.userName(v);
      });

      cs.execute();
    });
  }
}

