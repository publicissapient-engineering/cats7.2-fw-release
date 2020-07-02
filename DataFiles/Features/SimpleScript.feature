#Author: Ismail Ali
#CATS Version: 6.3
#Date: 18th July 2018
Feature: Run simple feature using CATS BDD
Description: This is the description fo the feature

	Scenario: Run CATS BDD scripts refer CATSSteps.java step definition
		 Given user wants to launch "http://target.com"
		 And search a product "sports polyester shoes" and select first product
		 Then verify lining material "polyester"
		 And quit the browser


	Scenario Outline: Run CATS BDD with examples
		 Given user wants to launch "http://target.com"
		 And search a product "<product>" and select first product
		 Then verify lining material or insole material contains "<material>"
		 And quit the browser

	Examples:
		|product | material |
		|sports polyester shoes|polyester|
		|women cotton shoes|Cotton|
		|$Target.Product.F1|$Target.Material.F1|
		|$Target.Product.F2|$Target.Material.F2|
		|$Target.Product.F3|$Target.Material.F3|
		|$Target.Product.F4|$Target.Material.F4|


	Scenario: Launch and Quit Browser
		Given user wants to launch "http://target.com"
		And quit the browser


	Scenario: Launch and Quit Browser one more time
		Given user wants to launch "http://target.com"
		And quit the browser