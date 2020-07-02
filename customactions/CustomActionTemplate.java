/*******************************************************************************
 * © Copyright 2019 Publicis Sapient. All rights reserved
 * 
 * Permission to copy, modify and/or redistribute this program requires prior
 * written consent from Publicis Sapient.
 * 
 * Above copyright notice and permission notice must appear in all copies.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * 
 * CONTRIBUTOR: CATS|Core@publicissapient.com
 ******************************************************************************/
package com.sapient.qa.cats.core.customactions;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.UnreachableBrowserException;

import com.sapient.qa.cats.core.actions.base.Action;
import com.sapient.qa.cats.core.exception.DriverNotInitializedException;
import com.sapient.qa.cats.core.langimpl.DataHandler;
import com.sapient.qa.cats.core.logger.CATSLogger;
import com.sapient.qa.cats.core.utils.CATSEnums;
import com.sapient.qa.cats.core.utils.CATSMap;
import com.sapient.qa.cats.core.vo.ActionInputVO;
import com.sapient.qa.cats.core.vo.ActionReportVO;
import com.sapient.qa.cats.core.vo.ActionResultVO;
import com.sapient.qa.cats.core.vo.LocatorVO;

// class name will be used as actions name
public class CustomActionTemplate extends Action {
	// create logger instance in order to report logs
	private static CATSLogger catsLogger = CATSLogger.getInstance(CustomActionTemplate.class);

	// constructor with call to super class
	public CustomActionTemplate(ActionReportVO action) throws DriverNotInitializedException {
	  // true if this action is going to use driver object, else mark it as false
	  super(action, true);
	}

	@Override
	public ActionResultVO execute() throws Exception {

		// Accessing the information from TCM files
		ActionInputVO actionInput = action.getActionInput();

		// To get the processed Test Data and Expected Result from TCM
		String testData = actionInput.getTestData();
		String expResult = actionInput.getExpectedResult();

		/*
		 * To get the un-processed RAW Test Data and Expected Result from TCM these raw
		 * data can be used especially when you want to access the value of the variable
		 * in in your custom code code
		 */
		String testRawData = actionInput.getRawTestData();
		String expRawResult = actionInput.getRawExpectedResult();

		/*
		 * To store the values in the Map collection as key value pairs. You can have
		 * more than one map By altering the map name. this map can be used in either
		 * same or different custom action But these values cannot be accessed through
		 * the TCM steps
		 */
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

		ActionResultVO actionResult = action.getActionResult();
		try {

			/*
			 * Locator object to be created to access the OR properties associated to
			 * current step isElementExist will use all the properties provided by the use
			 * one by one until object is identified. once the object is identified then the
			 * getElement will use the property that helped to identify the element. However
			 * user still has a choice to use specific property.
			 * 
			 */

			LocatorVO objLocator = actionInput.getEleLocator();
			if (isElementExist(objLocator)) {
				// code when element exist
				WebElement element;
				element = driver.findElement(getElement(objLocator)); // smart locator
				element = driver.findElement(By.xpath(objLocator.getXpath())); // explicit locator

				actionResult.setSnapShotReference(driver, element); // to highlight the element in snapshot

				/*
				 * your assertion goes here, you can perform assertion, calculation, actions etc
				 */

				boolean yourAssertion = false;
				if (yourAssertion == true) {

					// To make an entry to Report Actual Result column
					actionResult.setActualResult("Your message to report as acutal result");

					// To make an entry to logs
					catsLogger.info("Your message to log");

					/*
					 * One of below method has to be called prior to exiting the action as this step
					 * will set the actual status of the execution there are four methods
					 * setPassed()- The step will be marked as Passed setFailed() - The step will be
					 * marked as Failed setDoneFailed() - The step will be marked as Done (W),
					 * failed but not counted setDonePassed() - The step will be marked as Done (I),
					 * passed but not counted
					 */

					actionResult.setPassed();
					actionResult.setDonePassed();

				} else {

					// To make an entry to Report Actual Result column
					actionResult.setActualResult("Your message to report as acutal result");

					// To make an entry to logs
					catsLogger.info("Your message to log");

					actionResult.setFailed();
					actionResult.setDoneFailed();

				}

			} else {
				// code when element doesn't exist
				actionResult.setFailed();

				// To make an entry to Report Actual Result column
				actionResult.setActualResult("Your message to report as acutal result");

				// To make an entry to logs
				catsLogger.info("Your message to log");

			}
			
			// user can explicitly  pass the file path, link to this file will appear in the detail report against this action			
			actionResult.setScreenLinkPath("d://test/test.jpg");

		} catch (UnreachableBrowserException e) {
			actionResult.setActualResult(CATSEnums.BROWSER_FAILURE.getMessage());
			catsLogger.debug(CATSEnums.BROWSER_FAILURE.getMessage());
			actionResult.setFailed();
			actionResult.setFailureCode(e.getClass().getSimpleName());
		} catch (Exception e) {
			// script failure
			actionResult.setFailureCode(e.getClass().getSimpleName());
			actionResult.setFailed();
			actionResult.setActualResult(e.getMessage());
			catsLogger.debug("Exception occurred: ", e);
		}
		return actionResult;
	}

}
