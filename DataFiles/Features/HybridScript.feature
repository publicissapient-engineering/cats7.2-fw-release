#Author: Ismail Ali
#CATS Version: 6.3
#Date: 18th July 2018
Feature: CATS hybrid script
	 Scenario: Run CATS BDD Hybrid scripts refer CATSHybrid.java step def
	 	Given user launches "http://target.com"
	 	And search item number "043-13-0440"
	 	Then Verify item neckline is "Collared"
	 	And close the browser
