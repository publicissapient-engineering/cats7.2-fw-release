# CATS 7.2 Release Notes (31 May 2020)

### New Features
* CATS-1339    Nested TDM reference in the OR Dynamic Property should work even when the TDM reference is not called into TCM
* CATS-1340    Ability to Loop or Iterate the step(s) and/or test case(s)
* CATS-1342    Ability to Access the TCM Variable
* CATS-1912    Implement ASHOT for screen capture strategy
* CATS-2597    Adding the charts to Executive Summary
* CATS-2600    Capturing the element specific snapshot for Canvas like element for the image compare
* CATS-3106    Generated Java and Package Name Flexibility
* CATS-3708    Integration of reportportal.io for the dashboard for automation report analysis
* CATS-3956    Udate gherkin dependency to latest version
* CATS-4083    Json manipulation method class like NetworkData for Cucumber
* CATS-4138    Axe Report | Report Based on Url or not, should be configurable 
* CATS-4173    ORM changes in BDD execution
* CATS-4242    Display the Port number used, on the console 
* CATS-4254    when i am passing command line argument through UI and i choose bdd sequential still it is running the non-bdd 
* CATS-4270    configuring the leaf step in the report portal
* CATS-4271    Report Portal Launcher configuration
* CATS-4293    Email Template make it as configurable
* CATS-4295    Implement Evalutiaon Key
* CATS-4296    Hidden elements shouldn't hinder the results of creative testing
* CATS-4299    Action | Create an action to verify broken links of all pages in a site based on the input given
* CATS-4300    Action | Create an Action to verify the Broken images in all pages based on the given input 
* CATS-4305    Integrating Jemmy Framework for JavaSwing
* CATS-4307    locators supported by the selenium
* CATS-4308    Exploring QTP OR
* CATS-4311    Action | Create an Action to support accessibility check recursively 
* CATS-4312    Enable converters through command line arguments
* CATS-4323    Fetching test data from Database
* CATS-4324    Move input folder to config folder
* CATS-4325    Add the full expansion button to Accessibly report
* CATS-4326    Create sub folder under output in case -configPath is given
* CATS-4328    DATA FILES | Multiple TDM and ORM Datafiles has to be supported
* CATS-4333    Default boolean value of "baseUrlRestriction" is false.
* CATS-4339    Add Levels for Reccursive accessibility and brokenlinks check.
* CATS-4340    Update the cucumber to 5.0.0_RC2
* CATS-4346    Supporting the MongoDB as well through DBRunQuery
* CATS-4347    Change the ATM Test Case creation to TestNG
* CATS-4353    Broken Link Report
* CATS-4358    Extend CATS capability to support automation on Mobile Lab devices 
* CATS-4359    Zephyr integration with CATS for execution updates
* CATS-4360    Enhance the capability of verifyImageVariation action to perform Visual Regression
* CATS-4362    VerifyImageVariation should have a capability to pass the RGB which should be ignored
* CATS-4363    Adding the Javadoc for CucumberActionMap methods
* CATS-4376    To support CATS on Java 11
* CATS-4440    Explore Docker as Grid
* CATS-4446    Create JSON Report on execution
* CATS-4474    Running CATS Docker 
* CATS-4493    Add JWTDecoderFunc and URLDecoder Class to core action 
* CATS-4500    Merge all Java Swing related code to CATS 7.2 release branch
* CATS-4508    Update the clean templates and documentation
* CATS-4510    Command line support for data encryption
* CATS-660    An action to capture complete screen and not just web page
* CATS-4455    Zephyr: create/loacte cycles based on build and environment


### Enhancements
* CATS-3462    Indicate partially skipped in executive summary report for suites
* CATS-4283    Analytics | Actions are not supporting POST requests
* CATS-4395    Need action for patch api request in cats
* CATS-4400    Need an action which can sort query strings in a given URL
* CATS-4407    Ability to invoke core actions from custom actions
* CATS-4408    Ability to launch JAVA Swing application from CATS
* CATS-4409    Core Actions for JAVA Swing application automation
* CATS-4413    Java Swing core action - SwingTableSelectMultipleRows
* CATS-4415    Java Swing core action - SwingTableClickHeaderColoumn
* CATS-4416    Java Swing core action - SwingPopupMenuOperator
* CATS-4417    Java Swing core action - SwingPressKeyboardCombo
* CATS-4418    Java Swing core action - SwingMenuBarSelectMenu
* CATS-4421    Java Swing core action - SwingDropDownEnterText
* CATS-4422    Java Swing core action - SwingTextFieldEnterTextRows
* CATS-4423    CoreAction - SwingTreeClickOnPath
* CATS-4424    Java Swing core action - SwingCheckboxCheckUncheck
* CATS-4425    SwingWaitComponentDisappear
* CATS-4427    Java Swing core action - SwingTableWriteCell
* CATS-4428    Java Swing core action - SwingTableChangeCellData
* CATS-4430    sendTabAction not working for BDD
* CATS-4431    Use Openjdk11 for Docker image creation
* CATS-4437    To run Test Execution Centrally on Cloud(vm's)
* CATS-4454    Zephyr feedback


### Issues Fixed
* CATS-4492    Getting Image dimension mismatch when verifyImageVariation Action is used in Headless mode 
* CATS-4330    test failing when "exclude" property is set null or ""(empty string)
* CATS-1338    OR containing more than one page name at different rows ignoring the first set of child objects
* CATS-2058    Merge: TCM: On Adding  and removing Test Cases, final merged does not have correct values
* CATS-3110    Invalid Scenario Start & End time in XML report
* CATS-3296    Handle NPE and Show a Revelant message, when there are StepDef conflicts
* CATS-3438    Sikuli test Suite does not trigger using LaunchCATSUI.bat
* CATS-3997    Avoid "Delete Exception" when files doesn't exist
* CATS-4000    Revamp Excel Reader to avoid excel parsing, multple times 
* CATS-4110    Confirmation or Error message is not displayed when Data Files are tranferred to other format from CATS-UI
* CATS-4159    Link to open in model even when the internet is not available
* CATS-4164    CATS UI | Not able to Execute scripts through CATS UI 
* CATS-4183    REPORT| Execution summary report is overridden instead of storing previous execution report in History folder 
* CATS-4184    CATS BDD In MAC, when stepdef location is different that default and if default and package name is different
* CATS-4191    Invalid folder created with name '@{brand}' 
* CATS-4194    NotDirectoryException in YamlReader, while reading the input data
* CATS-4230    For JSON/YAML, Current DataFiles location is location is not logged
* CATS-4246    Report| Executive-summary Report location is not Default
* CATS-4269    There should be fixed width for the severity columns otherwise numbers are getting jumbled and are not readable.
* CATS-4278    JSON DataFiles | OR columns are case sensitive, the case should be ignored
* CATS-4279    JSON TDM | while using TDM in json format the test data column must have more than 10 values else the tdm is not getting read
* CATS-4280    Loop Control Flow | WHen loop until is used the report is not coming as expected 
* CATS-4282    Docker Execution
* CATS-4285    CATS Core | If Parent Folder of CATS framework has a space in the folder name then the scripts are not executing 
* CATS-4288    Report Portal | If Launcher name is set to scenario then execution is not stoping in report Portal 
* CATS-4294    Excel report generation issue in cats 
* CATS-4297    CREATIVE| Verification is not happening based on pixel given in Expected result 
* CATS-4298    ExportTDM| SetTDMRef and SetTDMRefValue actions are not working as expected 
* CATS-4314    Converters are not working in cats ui
* CATS-4315    MigrateDataFiles| While migrating the TCM from excel to json some columns values are being mismatched 
* CATS-4316    MigrateDataFiles| While migrating the ORM from excel to YAML some sheets in excel are not getting converted to yaml
* CATS-4317    MigrateDataFiles| Migration of TDM and ORM from Excel to YAML through UI is not working
* CATS-4320    Not able to upload testcase to ATM
* CATS-4322    Add new columns for Migrator utilities
* CATS-4327    INPUT PATH| Command line argument -inputPath value is not being processed 
* CATS-4331    Desired AXE report is not generated when "include" attribute is set null or empty string.
* CATS-4335    Action | Accesibility check should not happen for broken Pages 
* CATS-4337    Action | AxeCheckFullPageByURL action is not getting recognized
* CATS-4338    Action | AxeCheckFullPageBYURL action is performing AXe recursive Check Even if Recursive is false 
* CATS-4344    Manual Mapping | connection is not establishing to the ATM
* CATS-4345    CreateTestCaseInTMS | Test case creation in Atm is not happening when we run CreatTestCaseInTMS
* CATS-4349    io.appium Upgrade | java client for io.appium should be upgraded to 7.3.0 
* CATS-4354    ExportTDM| SetTDMRefValue actions are not working as expected in BDD
* CATS-4356    Exception caught in scenario ftl  - java.lang.NullPointerException
* CATS-4365    TDM|TDM sheet is not getting loaded
* CATS-4367    Null pointer exception in DynamicInstTestcaseClassExtend
* CATS-4370    Excluded URL are executed by The action 'VerifyPageBrokenImagesByURL'
* CATS-4372    BDD| When bdd suites are runned with -execute the reports are not generated
* CATS-4375    DB ACTIONS| Not able to set map name for DB Actions in BDD
* CATS-4389    Report portal suite is not stopping and using access token
* CATS-4406    Report portal suite is not stopping on force termination of cats
* CATS-4411    Verify Image Variation code understanding and testing 
* CATS-4432    While creating multiple TDM sheets, it is unable to read ServiceData sheet.
* CATS-4441    Manual Mapping Sheet for BDD_Mapping says Passed
* CATS-4444    Java Swing core action - SwingTableFindRow
* CATS-4445    Getting NULL Pointer Exception for VerifyImageVariationOffline Action
* CATS-4448    Action not working
* CATS-4450    Action Reference is Not Correct 
* CATS-4451    Performance issue in report generation of seq run of cats
* CATS-4452    Integrate performance fix in 7.2
* CATS-4453    Create a custom action for converting cats map to json
* CATS-4468    Not able to update manual mapping
* CATS-4471    BDD / in feature 
* CATS-4473    Altria Project | Appium |Integrated appium with CATS but still unable to run the scripts
* CATS-4496    Multiple TDM Service Sheet error 
* CATS-4497    Current zephyr code is too smart in detecting the cycle
* CATS-4502    Cannot run SauceLab iOS instance from CATS
* CATS-4505    swing actions are not working in BDD 
* CATS-4509    Support encrypted pwd for DB operations

### CHANGES TO BE MADE BY EXISTING BDD USERS
* BDD Steps :
  *  As Cucumber has been Update to latest version, for all existing BDD Step definition User has to change the imports from existing to new imports given below,
* __Existing Imports:__
    * import cucumber.api.Scenario;
    * import cucumber.api.java.AfterStep;
    * import cucumber.api.java.Before;
    * import cucumber.api.java.BeforeStep;
    * import cucumber.api.java.en.And;
    * import cucumber.api.java.en.Given;
    * import cucumber.api.java.en.When;
    * import cucumber.api.java.en.Then;
        
* __New Imports:__
    * import io.cucumber.java.Scenario;
    * import io.cucumber.java.AfterStep;
    * import io.cucumber.java.Before;
    * import io.cucumber.java.BeforeStep;
    * import io.cucumber.java.en.And;
    * import io.cucumber.java.en.Given;
    * import io.cucumber.java.en.When;
    * import io.cucumber.java.en.Then;
