<html lang="en">
   <head>
      <title>Executive Summary Report of BDD</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="http://d3js.org/d3.v3.min.js"></script>
      <style>
         #errorDetails{
         box-shadow: 0 0 10px 5px #5254a7;
         }
         #errorTable td, #errorTable th {
         border: 1px solid #dddddd;
         }
         .errorContentPara {
         padding-left: 10px;
         }
         #errorTable td, #errorTable th {
         border: 1px solid #dddddd;
         }
         #errorTable tr:nth-child(odd) {
         background-color: #eaecec94;
         }
         #errorTable tr:nth-child(even) {
         background-color: white;
         }
         .blink{
         box-shadow: 0 0 10px 5px #5254a7;
         }
         #errorTable tr th {
         background-color: white;
         color:#3d807e;
         }
         /* Create four equal columns that floats next to each other */
         .columnQuadrant {
         float: left;
         width: 50%;
         padding: 10px;
         /* Should be removed. Only for demonstration */
         }
         /* Clear floats after the columns */
         .rowQuadrant:after {
         content: "";
         display: table;
         clear: both;
         }
         .axis text {
         font: 12px sans-serif;
         }
         .axis path{
         fill: none;
         stroke: #000;
         }
         .axis line {
         fill: none;
         stroke: #000;
         shape-rendering: crispEdges;
         }
         #containerPyramid {
         text-align:center;
         transform:rotate(180deg);
         }
         text#rotateME {
         transform: rotate(180deg);
         }
         .textCenterAlign{
         text-align:center;
         }
         .col-md-6{
         float:unset;
         }
         #breadcrumbs{
         margin-top:-150px;
         margin-left: 10px;
         }
         #chart{
         float:left;
         margin-top:-20px;
         }
         .headerAlignment{
         max-height: 75px;
         overflow: auto;
         vertical-align: middle;
         height:auto;
         text-align: -webkit-center;
         border-bottom: 2px solid #ddd;
         }
         .table>thead>tr>th {
         vertical-align: middle;
         border-bottom: 2px solid #ddd;
         }
         #suite{
         width: 300px;
         height: 40px;
         padding: 10px 5px;
         line-height: 1;		
         position: relative;
         border-right: 0px;
         }
         #scenario{
         width: 250px;
         height: 40px;
         padding: 10px 5px;
         line-height: 1;
         position: relative;
         border-right: 0px;
         }
         #case{
         width: 200px;
         height: 40px;
         padding: 10px 5px;
         line-height: 1;
         position: relative;
         border-right: 0px;
         }
         #step{
         width: 150px;
         height: 40px;
         padding: 10px 5px;
         line-height: 1;
         position: relative;
         border-right: 0px;
         }
         #suite:before,#scenario:before,#case:before,#step:before{
         display: block;
         margin: 10px 0;
         width: 100%;
         height: 10px;
         text-align:center;
         border-width: 6px 0;
         }
         #suite:after,#scenario:after,#case:after,#step:after{
         content: '';
         display: block;
         height: 10px;
         width: 40px;
         height: 36px;
         transform: rotate(28deg) skewX(-31deg);
         position: absolute;
         right: -21px;
         top: 2px;
         border-bottom: 0px;
         }
         #suite:after{
         background-color: pink;
         }
         #scenario:after{
         background-color: lightblue;
         }
         #case:after{
         background-color: lightgreen;
         }
         #step:after{
         background-color: orange;
         }
         html {
         -ms-overflow-style: scrollbar;
         }
         marquee {
         width: 100%;
         font-weight: bolder;
         padding: 10px 0;
         background-color: lightblue;
         }
         th.columnHeader{
         text-align:left;
         font-family:arial;
         text-transform: capitalize;
         }
         .bandwidth{
         width:8%;
         }
         #myBtn {
         opacity:0.5;
         display: none;
         position: fixed;
         bottom: 20px;
         right: 30px;
         z-index: 99;
         font-size: 18px;
         border: none;
         outline: none;
         background-color: #5564fd;
         color: white;
         cursor: pointer;
         padding: 10px;
         border-radius: 15px;
         }
         #myBtn:hover {
         opacity:1;
         background-color: #555;
         }
         th.dataAlign{
         font-family: arial;
         color:black;;
         }
         .duration {
         font-family: calibri;
         color: white;
         }
         div span {
         font-size: 18px;
         }
         .center {
         text-align: center;
         color: white;
         margin-top: 10px;
         }
         .footer-bottom {
         font-family:calibri;
         position: fixed;
         height: 50px;
         bottom: 0;
         width: 100%;
         padding: 10px 0 0px;
         border-top: 1px solid #666;
         background: #1e1e1e;
         }
         .footer {
         position: fixed;
         left: 0;
         bottom: 0;
         width: 100%;
         background-color: #eee;
         color: black;
         text-align: center;
         }
         .header img {
         margin-left: -15px;
         float: left;
         margin-bottom: 5px;
         background: #1e2c42;
         min-width:250px;
         min-height:80px;
         margin-top:-22px;
         }
         .observablehq {
         display: none;}
         .header h1 {
         font-weight: 600;
         color: #add2ea;
         top: 18px;
         left: 10px;
         }
         .observablehq {
         display: none;}
         .column {
         font-family:calibri;
         float: right;
         padding: 10px;
         color: white;
         }
         a, a:hover, a:active, a:visited, a:focus {
         color: inherit;
         text-decoration:none;
         outline: none;
         }
         .titleReport{
         color:black;
         text-align:center;
         font-weight:bolder;
         font-size:18px;
         margin-top:30px;
         }
         .specialRow {
         color: green;
         }
         .container-fluid {
         margin-top: 10px;
         }
         table{
         border: 1px solid #cebfbf;
         }
         tr:nth-child(even) {
         background-color: #dddddd;
         }
         tr td{
         font-family:calibri;
         text-align:left;
         }
         
         #view{
         float:right;
         cursor:pointer;
         margin-right:20px;
         color:blue;
         text-decoration: underline;
         }
         .keyValues{
         text-align:center;
         }
         .switch {
         position: relative;
         display: inline-block;
         width: 90px;
         float:right;
         height: 34px;
         }
         .switch input {display:none;}
         .slider {
         position: absolute;
         cursor: pointer;
         top: 0;
         left: 0;
         right: 0;
         bottom: 0;
         background-color: #666666;
         -webkit-transition: 0.7s;
         transition: 0.7s;
         }
         .slider:before {
         position: absolute;
         content: "";
         height: 26px;
         width: 26px;
         left: 4px;
         bottom: 4px;
         background-color: #ec9f9f;
         -webkit-transition: 0.7s;
         transition: 0.7s;
         }
         input:checked + .slider {
         background-color: #666666;
         }
         input:focus + .slider {
         box-shadow: 0 0 1px #2196F3;
         }
         input:checked + .slider:before {
         -webkit-transform: translateX(55px);
         -ms-transform: translateX(55px);
         transform: translateX(55px);
         background-color: #9feca5;
         }
         /*------ ADDED CSS ---------*/
         .on
         {
         display: none;
         }
         .on
         {
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 40%;
         font-size: 10px;
         font-family: Verdana, sans-serif;
         }
         .off
         {
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 60%;
         font-size: 10px;
         font-family: Verdana, sans-serif;
         }
         input:checked+ .slider .on
         {display: block;}
         input:checked + .slider .off
         {display: none;}
         /*--------- END --------*/
         /* Rounded sliders */
         .slider.round {
         border-radius: 34px;
         }
         .slider.round:before {
         border-radius: 50%;}
         .myRow{
         width:100%;
         background-color: #1e2c42;
         //background-color:#3E2644;
         }
         ${cssSummary}   
         .table>tbody>tr>td{
         line-height: 1;
         vertical-align: middle;
         } 
      </style>
      <script>
         window.addEventListener('offline', function(event){
         document.getElementById("logoImage").style.marginLeft = "0px";	
         //document.getElementById("makeTop").style.marginTop = "-30px";
         document.getElementById("displayInternetError").style.display = "block";	
         document.getElementById("contentsWhenInternet").style.display = "none";
         location.reload(true);
         });
         window.addEventListener('online', function(event){
         document.getElementById("displayInternetError").style.display = "none";
          		document.getElementById("logoImage").style.marginLeft = "-15px";	
         	  document.getElementById("makeTop").style.marginTop = "0px";
         location.reload(true);
         });
         
         
          window.onload = function () {
          document.getElementById("suite").style.visibility="hidden";
         document.getElementById("scenario").style.visibility="hidden";
         document.getElementById("case").style.visibility="hidden";
         document.getElementById("step").style.visibility="hidden";
          var xhr = new XMLHttpRequest();
          var file = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css";
          var randomNum = Math.round(Math.random() * 10000);
         
          xhr.open('HEAD', file + "?rand=" + randomNum, true);
          xhr.send();
           
          xhr.addEventListener("readystatechange", processRequest, false);
         
          function processRequest(e) {
            if (xhr.readyState == 4) {
              if (xhr.status >= 200 && xhr.status < 304) {
                document.getElementById("displayInternetError").style.display = "none";
                document.getElementById("logoImage").style.marginLeft = "-15px";	
         	  	document.getElementById("makeTop").style.marginTop = "0px";
          
              } else {
         document.getElementById("displayInternetError").style.display = "block";	
         document.getElementById("contentsWhenInternet").style.display = "none";
         document.getElementById("logoImage").style.marginLeft = "0px";	
         document.getElementById("makeTop").style.marginTop = "-30px";
         document.getElementById("list").style.display = "none";
         document.getElementById("box").style.display = "none";
         document.getElementById("overAllGraphContent").style.display = "none";
         
              }
            }
          }
         }
      </script> 
   </head>
   <body style="background: rgb(242, 246, 253,1);">
      <#if startTime?? && endTime??>
      <#assign gherkinValue = EXECUTIVE_REPORT_BASED_ON?lower_case>
      <div class="row myRow" style="margin-right:0px;margin-left:0px;display:table;">
         <div class="column">
            <div>Started at: ${startTime?datetime}</div>
            <div>Ended at :  ${endTime?datetime}</div>
            <div class="duration">Total time taken ${totalDuration}</div>
         </div>
         <div class="header">
            <img id="logoImage" src="data:image/png;base64,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" alt="cats logo" width="15%" height="10%" />
            <h1 class="projTitle" style="margin-top:25px;">${catsprojectName}</h1>
         </div>
      </div>
      <div >
         <div style="margin-top:2px;">
            <label class="switch">
               <input class="switch-input" type="checkbox" id="togBtn" checked="none"/>
               <div class="slider round">
                  <#if viewType=='LIST'>
                  <span class="on">LIST</span>
                  <span class="off">BOX</span>
                  <#else>
                  <span class="on">BOX</span>
                  <span class="off">LIST</span>
                  </#if>
               </div>
            </label>
         </div>
         <div style="margin-left: 2px;">
            <label id="graph" class="switch">
               <input class="switch-input-graph" type="checkbox" id="togBtnforGraph" checked="none"/>
               <div class="slider round">
                  <span class="on">Graph</span>
                  <span class="off">Graph</span>
               </div>
            </label>
         </div>
      </div>
      <table id="overAllGraphContent" style="width:100%;border: 0px solid #cebfbf;background-color:white;">
         <tr >
            <td style="padding-left: 25px; min-width: 400px;width:400px; word-break: none;white-space: unset;">
               <div>
                  <!--<h3 style="font-weight:bolder;text-align: center;">Overall Percentage</h3>-->
                  <div class="rowQuadrant" id="rowQuadrantSuite" style="border-bottom:10px solid white;">
                     <div class="columnQuadrant" id="columnQuadrantSuite" style="width: 185px;height: 130px;cursor:pointer;margin-right: 8px;margin-left: -15px;border-top:10px solid #2fa7a3;border-left:10px solid #3d807e;border-width: 30px;" onclick="init('suite')">
                        <p style="color: white;font-weight: bolder;margin-top: 20px;margin-left: -180px;transform: rotate(-90deg);text-align: center;">FEATURE</p>
                        <p id="suiteTotal" style="text-align: center;margin-top: -85px;color:white"></p>
                        <p id="suitePass" >Pass :</p>
                        <p id="suiteFail" >Fail :</p>
                        <p id="suiteSkip" >Skip :</p>
                     </div>
                     <div class="columnQuadrant" id="columnQuadrantScenario" onclick="init('scenario')" style="width: 185px;height: 130px;cursor:pointer;border-top:10px solid #2fa7a3;border-right:10px solid #1cbdb8;border-width: 30px;">
                        <p id="scenarioTotal" style="color: white;margin-top: 120px;padding-left: 30px;transform: rotate(91deg);margin-right: -185px;/* margin-bottom: 0px; */"></p>
                        <!--<p style="color:white;font-weight:bolder;margin-top: -35px;padding-left: 35px;">SCENARIO</p>-->
                        <p  style="margin-top: -185px;text-align: center;color: white;font-weight:bolder" >SCENARIO</p>
                        <p id="scenarioPass"> Pass :</p>
                        <p id="scenarioFail" > Fail :</p>
                        <p id="scenarioSkip" > Skip :</p>
                     </div>
                  </div>
                  <div class="rowQuadrant">
                     <div class="columnQuadrant" id="columnQuadrantCase" style="width: 185px;height: 130px;cursor:pointer;margin-right: 8px;margin-left: -15px;border-bottom:10px solid #13dcd6;border-left:10px solid #3d807e;border-width: 30px;" onclick="init('case')">
                        <p id="casePass" style="margin-top: -5px;"> Pass :</p>
                        <p id="caseFail" > Fail :</p>
                        <p id="caseSkip" > Skip :</p>
                        <p  style="text-align: center;color: white;font-weight:bolder">STEPS</p>
                        <!--<p style="color:white;font-weight:bolder;margin-bottom: -35px;transform: rotate;transform: rotate(270deg);/* padding-left: 15px; */margin-left: -198px;margin-top: -180px;color: red;/* padding: 0px; */padding-right: -23px;">TESTCASE</p>-->
                        <p id="caseTotal" style="color:white;/* margin-bottom: -35px; */text-align:center;/* margin-top: 22px; *//* padding-right: 291px; */padding-left: -34px;margin-left: -180px;padding-top: -47px;transform: rotate(-91deg);margin-top: -75px;"></p>
                     </div>
                     <div class="columnQuadrant" id="columnQuadrantStep" onclick="init('step')" style="width: 185px;height: 130px;cursor:pointer;border-bottom:10px solid #13dcd6;border-right:10px solid #f2f6fd;border-right:10px solid #1cbdb8;border-width: 30px;">
                        <p id="stepPass" style="margin-top: -5px;"> Pass :</p>
                        <p id="stepFail" > Fail :</p>
                        <p id="stepSkip" > Skip :</p>
                        <p id="stepTotal" style="text-align: center;color: white;"></p>
                        <p style="color: white;font-weight: bolder;text-align: center;margin-top: -75px;margin-right: -185px;transform: rotate(91deg);">ACTION</p>
                     </div>
                  </div>
               </div>
            </td>
            <td style="word-break: none;white-space: unset;min-width: 500px;width:500px;">
               <div id="pie1" style="width: 375px;  display: block;margin-left: 50px;" data-toggle="modal" data-target="#myModalBar"></div>
               <div id="pie4" style="width: 375px; display: block;margin-left: 50px;" data-toggle="modal" data-target="#myModalBar"></div>
               <div id="pie2" style="width: 375px;  display: block;margin-left: 50px;" data-toggle="modal" data-target="#myModalBar"></div>
               <div id="pie3" style="width: 375px;  display: block;margin-left: 50px;" data-toggle="modal" data-target="#myModalBar"></div>
            </td>
            <td style="padding-right: 25px;word-break: none;white-space: unset;">
               <!--<div style="text-align: center;font-weight: bolder;font-size: 20px;margin-top:50px;">Error Category</div>
                  <div id="funnelContainer"></div>-->
               <div id="errorDetails" style="min-height: 10rem;display: flex;max-height: 25rem;overflow-y: auto;">
               <p id="noErrorData" style="margin-top: 10%;margin-left:35%;text-align: center;color: green;display:none;"></p>
                  <table style="width:100%;border-collapse: collapse;border:1px solid #c8c8e8;" id="errorTable" >
                     <thead>
                        <tr style="border-bottom: 2px solid #c8c8e8;">
                           <th style="text-align:center; padding:4px;border-right: 2px solid #c8c8e8;">Error Category</th>
                           <th style="text-align:center;padding:4px;">Count</th>
                           <th style="text-align:center;padding:4px;">Distribution</th>
                           <th style="text-align:center;padding:4px;">Contribution</th>
                        </tr>
                     </thead>
                  </table>
               </div>
               
            </td>
         </tr>
      </table>
      <#assign overAllPassPercentage=0>
      <#assign overAllFailPercentage=0>
      <#assign overAllTotalPercentage=0>
      <#assign overallExecutionRate=0>
      <#assign count=0>
      <div id="displayInternetError" style="display:none">
         <table cellpadding="10" style="width:100%">
            <thead>
               <tr style="background-color:#3c7aa9;color:white;">
                  <th class="columnHeader" colspan="4" style="text-align:center;">Suites-Feature</th>
                  <th class="columnHeader" colspan="4" style="text-align:center;">Scenarios</th>
                  <#if gherkinValue=='step'>
                  <th class="columnHeader" colspan="7" style="text-align:center;">Gherkin Steps</th>
                  <#else>
                  <th class="columnHeader" colspan="7" style="text-align:center;">Gherkin Actions</th>
                  </#if>
               </tr>
               <tr style="background-color:#99cccc;color:#1e2c42">
                  <th class="dataAlign textCenterAlign">Name</th>
                  <th class="dataAlign textCenterAlign">Release</th>
                  <th class="dataAlign textCenterAlign">Channel</th>
                  <th class="dataAlign textCenterAlign">Browser</th>
                  <th class="dataAlign textCenterAlign">Passed</th>
                  <th class="dataAlign textCenterAlign">Failed</th>
                  <th class="dataAlign textCenterAlign">Skipped</th>
                  <th class="dataAlign textCenterAlign">Total</th>
                  <th class="dataAlign textCenterAlign">Passed</th>
                  <th class="dataAlign textCenterAlign">Failed</th>
                  <th class="dataAlign textCenterAlign">Skipped</th>
                  <th class="dataAlign textCenterAlign">Total</th>
                  <th class="dataAlign textCenterAlign">Execution</th>
                  <th class="dataAlign textCenterAlign">Duration</th>
               </tr>
            </thead>
            <tbody>
               <#assign overAllPassCountFeature=0>
               <#assign overAllFailCountFeature=0>
               <#assign overAllSkipCountFeature=0>	
               <#assign totalFeature=0>	
               <#list overAllReport as bddReportOutcome>
               <#assign overAllPassCountScenario=0>
               <#assign overAllFailCountScenario=0>
               <#assign overAllPartiallySkipCountScenario=0>	
               <#assign overAllSkipCountScenario=0>	
               <#assign totalScenario=0>	
               <#assign stepdefPassCount=0>
               <#assign stepdefFailCount=0>
               <#assign stepdefSkipCount=0>
               <#assign stepdefPartiallySkippedCount=0>
               <#assign totalSteps=0>	
               <#assign resultColor="">
               <#list bddReportOutcome as reportforScenario>
               <#if reportforScenario.stepsCount==1>
               <#--  <#if reportforScenario.bddDefExecutionInstance.status=='PASS'>
               -->
               <#if reportforScenario.bddDefExecutionInstance.status=='PARTIALLY SKIPPED'>
               <#assign overAllPartiallySkipCountScenario=overAllPartiallySkipCountScenario+1>
               <#elseif reportforScenario.bddDefExecutionInstance.status=='UNDEFINED'>
               <#assign overAllSkipCountScenario=overAllSkipCountScenario+1>
               <#elseif reportforScenario.bddDefExecutionInstance.status=='FAIL'>
               <#assign overAllFailCountScenario=overAllFailCountScenario+1>
               <#else>
               <#assign overAllPassCountScenario=overAllPassCountScenario+1>
               </#if>
               </#if>
               <#if reportforScenario.scenarioStatus=='UNDEFINED'>
               <#assign stepdefPartiallySkippedCount=stepdefPartiallySkippedCount+1>
               <#elseif reportforScenario.scenarioStatus=='SKIPPED'>
               <#assign stepdefSkipCount=stepdefSkipCount+1>
               <#elseif reportforScenario.scenarioStatus=='FAIL'>
               <#assign stepdefFailCount=stepdefFailCount+1>
               <#else>
               <#assign stepdefPassCount=stepdefPassCount+1>		   
               </#if>
               </#list>
               <#assign exceutiveReportBasedOn = EXECUTIVE_OVERALL_PASS_PERCENTAGE_BASED_ON?lower_case>
               <#assign testStepFailCount=0>
               <#assign testStepPassCount=0>
               <#assign testStepSkipCount=0>
               <#list bddReportOutcome as reportGraph>
               <#assign flagForFail="false">
               <#assign flagForPass="false">
               <#list reportGraph.testStepInstanceNew as testStepsValue>
               <#if testStepsValue.state??>
               
               <#if testStepsValue.state=='FAILED'>
               <#assign testStepFailCount=testStepFailCount+1>
               <#assign flagForFail="true">
               <#elseif testStepsValue.state=='SKIPPED' || testStepsValue.state=='UNDEFINED'>
               <#assign testStepSkipCount=testStepSkipCount+1>
               <#assign flagForFail="true">
               <#elseif testStepsValue.state=='TC TERMINATED' || testStepsValue.state=='SCN TERMINATED' || testStepsValue.state=='SUITE TERMINATED' >
               <#assign testStepFailCount=testStepFailCount+1>
               <#assign flagForFail="true">
               <#elseif testStepsValue.state=='PASSED' >
               <#assign testStepPassCount=testStepPassCount+1>
               <#assign flagForPass="true">
               </#if>
               </#if>
               </#list>
               <#-- Added for making failed scenario to have atleast one failed action starts here 
               <#if flagForFail=='false' && reportGraph.scenarioStatus=='FAIL'>
               <#assign testStepFailCount=testStepFailCount+1>
               </#if>-->
               <#-- ends here -->
               <#-- Added for making passed scenario to have atleast one passed action starts here -->
               <#if flagForPass=='false' && reportGraph.scenarioStatus=='PASS' && reportGraph.testStepInstanceNew?size gt 0>
               <#assign testStepPassCount=testStepPassCount+1>
               </#if>
               <#-- ends here -->
               </#list>
               <#assign totalSteps=stepdefPassCount+stepdefFailCount+stepdefPartiallySkippedCount+stepdefSkipCount>	
               <#assign totalScenario=overAllPassCountScenario+overAllFailCountScenario+overAllPartiallySkipCountScenario+overAllSkipCountScenario>
               <#if totalScenario==overAllPassCountScenario>
               <#assign overAllPassCountFeature=overAllPassCountFeature+1>
               </#if>
               <#assign totalFeature=totalFeature+1>
               <#if exceutiveReportBasedOn=='step'>
               <#assign overAllPassPercentage=overAllPassPercentage+stepdefPassCount>
               <#assign overAllFailPercentage=overAllFailPercentage+stepdefFailCount>
               <#assign overAllTotalPercentage=overAllTotalPercentage+totalSteps>
               <#elseif exceutiveReportBasedOn=='action'>
               <#assign overAllPassPercentage=overAllPassPercentage+testStepPassCount>
               <#assign overAllFailPercentage=overAllFailPercentage+testStepFailCount>
               <#assign overAllTotalPercentage=overAllTotalPercentage+testStepPassCount+testStepFailCount>
               <#elseif exceutiveReportBasedOn=='scenario' || exceutiveReportBasedOn==''>
               <#assign overAllPassPercentage=overAllPassPercentage+overAllPassCountScenario>
               <#assign overAllFailPercentage=overAllFailPercentage+overAllFailCountScenario>
               <#assign overAllTotalPercentage=overAllTotalPercentage+totalScenario>
               </#if>
               <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
               <#assign execution=execution*100>
               <#if execution lt 100>
               <#assign skipped=true>
               <#else>
               <#assign skipped=false>
               </#if>
               <#if overAllFailCountScenario gt 0>
               <#assign resultColor="color_fail">
               <#elseif overAllPassCountScenario==totalScenario>
               <#assign resultColor="color_pass">
               <#else>
               <#assign resultColor="color_amber">
               </#if>
               <#if skipped==true>
               <tr style="background-color:#e0e8ef">
                  <#elseif resultColor?contains("pass")>
               <tr style="background-color:#ebffeb">
                  <#elseif resultColor?contains("fail")>
               <tr style="background-color:#fff0f0">
                  <#else>
               <tr style="background-color:#faffdc">
                  </#if>
                  <#list bddReportOutcome as reportforScenario>
                  <#if reportforScenario_index==0>
                  <#if skipped==true>
                  <td class="color_skip">
                     <a href="${reportforScenario.suiteName}_${reportforScenario.featureId}.html?type=listVType"><div style="height:100%;width:100%;color:white;font-size: 18px;">${reportforScenario.suiteName}_${reportforScenario.featureId}</div></a>
                  </td>
                  <#else>
                  <td class="${resultColor}">
                     <a href="${reportforScenario.suiteName}_${reportforScenario.featureId}.html?type=listVType"><div style="height:100%;width:100%;color:white;font-size: 18px;">${reportforScenario.suiteName}_${reportforScenario.featureId}</div></a>
                  </td>
                  </#if>
                  <td>
                     ${reportforScenario.release}
                  </td>
                  <td>
                     ${reportforScenario.channel}
                  </td>
                  <td>
                     ${reportforScenario.browser}
                  </td>
                  </#if>
                  </#list> 
                  <#if overAllPassCountScenario gt 0>
                  <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                     ${overAllPassCountScenario} [${passPercentage?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                     ${overAllPassCountScenario}
                  </td>
                  </#if>
                  <#if overAllFailCountScenario gt 0>
                  <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                     ${overAllFailCountScenario} [${failPercentage?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                     ${overAllFailCountScenario}
                  </td>
                  </#if>
                  <#if overAllPartiallySkipCountScenario gt 0 || overAllSkipCountScenario gt 0>  
                  <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign partialPercentage=(overAllPartiallySkipCountScenario+overAllSkipCountScenario)/totalScenario*100>
                     ${overAllPartiallySkipCountScenario+overAllSkipCountScenario} [${partialPercentage?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     0
                  </td>
                  </#if>
                  <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">
                     ${totalScenario}
                  </td>
                  <#if EXECUTIVE_REPORT_BASED_ON?lower_case=='step'>
                  <#if stepdefPassCount gt 0>
                  <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign stepPass=stepdefPassCount/totalSteps*100>
                     ${stepdefPassCount} [${stepPass?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     <#assign stepPass=stepdefPassCount/totalSteps*100>
                     ${stepdefPassCount}
                  </td>
                  </#if>
                  <#if stepdefFailCount gt 0>
                  <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign stepFail=stepdefFailCount/totalSteps*100>
                     ${stepdefFailCount} [${stepFail?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     <#assign stepFail=stepdefFailCount/totalSteps*100>
                     ${stepdefFailCount}
                  </td>
                  </#if>
                  <#if stepdefSkipCount gt 0 || stepdefPartiallySkippedCount gt 0> 
                  <#assign stepSkip=(stepdefSkipCount+stepdefPartiallySkippedCount)/totalSteps*100>
                  <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">${stepdefSkipCount+stepdefPartiallySkippedCount} [${stepSkip?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">0
                  </td>
                  </#if>
                  <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">${totalSteps}</td>
                  <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
                  <#assign overallExecutionRate=overallExecutionRate+execution>
                  <#assign count=count+1>
                  <#assign execution=execution*100>
                  <#if skipped==true>
                  <td class="keyValues bandwidth" style="color:#56aff1;min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                  <#else>
                  <td class="keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                  </#if>
                  <#else>
                  <#assign noOfSteps=testStepPassCount+testStepFailCount+testStepSkipCount>
                  
                  <#if testStepPassCount gt 0>
                  <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign stepPass=testStepPassCount/noOfSteps*100>
                     ${testStepPassCount} [${stepPass?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     0
                  </td>
                  </#if>
                  <#if testStepFailCount gt 0>
                  <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                     <#assign stepFail=testStepFailCount/noOfSteps*100>
                     ${testStepFailCount} [${stepFail?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">
                     0
                  </td>
                  </#if>
                  <#if testStepSkipCount gt 0> 
                  <#assign stepSkip=testStepSkipCount/noOfSteps*100>
                  <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">${testStepSkipCount} [${stepSkip?round}%]
                  </td>
                  <#else>
                  <td class="keyValues" style="width: 20px;">0
                  </td>
                  </#if>
                  <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">${noOfSteps}</td>
                  <#if noOfSteps gt 0>
                  <#assign execution=(testStepPassCount+testStepFailCount)/noOfSteps>
                  <#assign overallExecutionRate=overallExecutionRate+execution>
                  <#assign count=count+1>
                  <#assign execution=execution*100>
                  <#if skipped==true>
                  <td class="keyValues bandwidth" style="color:#56aff1;min-width: 20px;max-width: 100px;width: 20px;" >${execution?round}%</td>
                  <#else>
                  <td class="keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                  </#if>
                  <#else>
                  <td class="keyValues bandwidth" style="width:20px;">0%</td>
                  </#if>
                  </#if>
                  <#list bddReportOutcome as reportforScenario>
                  <#if reportforScenario_index==0>
                  <#assign durationHours=reportforScenario.duration?replace(" Hours ", ":")>
                  <#assign durationMins=durationHours?replace(" Mins ", ":")>
                  <#assign durationOverall=durationMins?replace(" Secs", "")>
                  <#assign timeTaken="">
                  <#assign sizeDuration=durationOverall?split(":")?size>
                  <#list durationOverall?split(":") as x>
                  <#if x?number gt 9>
                  <#assign timeTaken=timeTaken+x>
                  <#else>
                  <#assign timeTaken=timeTaken+"0"+x>
                  </#if>
                  <#if x_index gt -1 && x_index!=sizeDuration-1>
                  <#assign timeTaken=timeTaken+":">
                  </#if>
                  </#list>
                  <td class="keyValues">${timeTaken}</td>
                  </#if>
                  </#list>
               </tr>
               </#list>
            </tbody>
         </table>
      </div>
      <div id="contentsWhenInternet">
      <div class="container">
         <!-- Trigger the modal with a button
            <div style="text-align: center;">
               <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">View Graph</button>
            </div> -->
         <div class="modal fade" id="myModal" role="dialog" tabindex='-1' aria-hidden="true"  style="padding:0px;">
            <div class="modal-dialog custom-dialog" style="width:70%; height:70%">
               <div class="modal-content" style="margin-top: -20px;">
                  <div class="modal-body" style="margin-top: -30px;padding: 0px;">
                     <!--<div id="sequence" style="font-size:12px;margin-top:30px;margin-left:15px;font-weight:bolder"></div>-->
                     <button type="button" class="close" data-dismiss="modal" style="margin-top:10px;margin-right:5px;">&times;</button>
                     <h3 id="sequence0" style="font-size:12px">
                     </h3>
                     <table class="col-md-6" style="width: 100%;border:white;/* color: green; */display: block;max-width: 100%;overflow: auto;/* border: 4px solid green; */overflow-x: hidden;overflow-y:hidden;">
                        <tr>
                           <td style="background-color:white;white-space: unset">
                              <div id="breadcrumbs">
                                 <div id="suite" style="font-size:14px;font-weight:bolder;">
                                 </div>
                                 <div id="scenario" style="font-size:14px;font-weight:bolder;margin-top:5px;">
                                 </div>
                                 <div id="case" style="font-size:14px;font-weight:bolder;margin-top:5px;">
                                 </div>
                                 <div id="step" style="font-size:14px;font-weight:bolder;margin-top:5px;">
                                 </div>
                              </div>
                           </td>
                           <td style="background-color:white">
                              <div id="chart"></div>
                           </td>
                        </tr>
                     </table>
                     <div id="errorExecutiveGraph" style="margin-top:30px;text-align:center;padding:10px">Not Supported in this browser</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModalBar" role="dialog" tabindex='-1' aria-hidden="true">
         <div class="modal-dialog custom-dialog" style="width:80%;height:auto; max-height:70%">
            <div class="modal-content" >
               <div class="modal-header" style="border:0px solid white;">
                  <h4 class="modal-title" style="text-align:center;font-weight:bolder;">Feature Status</h4>
                  <button type="button" class="close" data-dismiss="modal" style="margin-top:-30px;">&times;</button>
               </div>
               <!--<div id="sequence" style="font-size:12px;margin-top:30px;margin-left:15px;font-weight:bolder"></div>-->
               <!--	<button type="button" class="close" data-dismiss="modal" >&times;</button>-->
               <div class="modal-body" style="padding:0px;">
                  <div class="bs-example">
                     <ul class="nav nav-pills" role="tablist" style="width: 100%;margin-left: 33%;">
                        <li role="presentation" class="dropdown">
                           <a href="#" class="dropdown-toggle" id="drop5" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-weight:bold"> SCENERAIO <span class="caret"></span> </a>
                           <ul class="dropdown-menu" id="menu2" aria-labelledby="drop5">
                              <!-- <li id="suiteCategory" onclick="categoryFunction('barSuite')"><a href="#">SUITE</a></li>-->
                              <li id="scenarioCategory" onclick="categoryFunction('barScenario')"><a href="#">SCENERAIO</a></li>
                              <li id="caseCategory" onclick="categoryFunction('barCase')"><a href="#">STEP</a></li>
                              <!--<li role="separator" class="divider"></li>-->
                              <li id="stepCategory" onclick="categoryFunction('barStep')"><a href="#">ACTION</a></li>
                           </ul>
                        </li>
                        <li>
                           <ul>
                              <div class="checkbox">
                                 <label><input id="passFilter" type="checkbox" value="PASSED">PASS</label>
                              </div>
                           </ul>
                        </li>
                        <li>
                           <ul>
                              <div class="checkbox">
                                 <label><input id="failFilter" type="checkbox" value="FAILED">FAIL</label>
                              </div>
                           </ul>
                        </li>
                        <li>
                           <ul>
                              <div class="checkbox">
                                 <label><input id="skipFilter" type="checkbox" value="SKIPPED">SKIP</label>
                              </div>
                           </ul>
                        </li>
                        <!-- <li role="presentation" class="dropdown"> <a href="#" class="dropdown-toggle" id="drop6" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Filter <span class="caret"></span> </a>
                           <ul class="dropdown-menu" id="menu3" aria-labelledby="drop6">
                            
                           <li ><a href="#" class="small" data-value="ALL" tabIndex="-1"><input id="allFilter" type="checkbox" value="ALL">&nbsp;ALL</input></a></li>
                           <li><a href="#" class="small"  data-value="PASSED" tabIndex="-1"><input id="passFilter" type="checkbox" value="PASSED">&nbsp;PASS</input></a></li>
                           <li><a href="#" class="small" data-value="FAILED" tabIndex="-1"><input  id="failFilter" type="checkbox" value="FAILED">&nbsp;FAIL</input></a></li>
                           <li><a href="#" class="small" data-value="SKIPPED" tabIndex="-1"><input  id="skipFilter" type="checkbox" value="SKIPPED">&nbsp;SKIP</input></a></li>
                           
                           </ul>
                           </li>-->
                     </ul>
                  </div>
               </div>
               <div id="noDataMessage" style="font-weight:bolder;text-align:center"></div>
               <div  class="barGraph" id='stacked-bar1' style="max-height: 450px;overflow-y: auto;"></div>
               </td>
               <div  class="barGraph" id='stacked-bar2' style="max-height: 450px;overflow-y: auto;"></div>
               </td>
               <div  class="barGraph" id='stacked-bar3' style="max-height: 450px;overflow-y: auto;"></div>
               </td>
            </div>
            </div>
			</div>
            <div class="modal fade" id="myModalforError" role="dialog" tabindex='-1' aria-hidden="true">
               <div class="modal-dialog" style="width:80%;height:auto; max-height:70%">
                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header" style="border:0px solid white;">
                        <h4 class="modal-title" style="text-align:center;font-weight:bolder;">Error Category Details</h4>
                        <button type="button" class="close" data-dismiss="modal" style="margin-top:-30px;">&times;</button>
                     </div>
                     <div class="modal-body" id="errorBody" style="max-height: 450px;overflow-y: auto;">
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <script>
            $(document).ready(function(){
                 try{
                 var $switchLabelOn = $('.on');
                 var $switchLabelOff = $('.off');
                 var on=$switchLabelOn[0].innerHTML.toLowerCase();
                 var off=$switchLabelOff[0].innerHTML.toLowerCase();
                 $("#overAllGraphContent").show();
                 
                 $('#togBtnforGraph').on('change', function () {
                 var isChecked = $(this).is(':checked');
                 if (isChecked) {
                 
                 $("#overAllGraphContent").show();
                 
                 }
                 else{
                 
                 $("#overAllGraphContent").hide();
                 }
                 });
                 function setSwitchState(el, flag) {
                 el.attr('checked', flag);
                 }
                 setSwitchState($('#togBtnforGraph'), true);
                 }
                 catch(e){}
                
                
            $(".dropdown-menu li a").click(function(){
            var selText = $(this).text();
            //$(".dropdown-menu li a").parents('.dropdown').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');
            $(this).parents('.dropdown').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');
            });
             });
            
            var filterValue=["PASSED","FAILED","SKIPPED"];
            //document.getElementById("drop6").style.display = 'none';   
            var categoryName="barScenario";
            
            function categoryFunction(name){
            //document.getElementById("drop6").style.display = 'block';
            //document.getElementById("stacked-bar1").style.display = 'none';
            //document.getElementById("stacked-bar2").style.display = 'none';
            //document.getElementById("stacked-bar3").style.display = 'none';
            //document.getElementById("passFilter").checked  = false;
            //document.getElementById("failFilter").checked  = false;
            //document.getElementById("skipFilter").checked  = false;
            //document.getElementById("allFilter").checked  = false;
            //document.getElementById("passFilter").disabled  = false;
            //document.getElementById("failFilter").disabled  = false;
            //document.getElementById("skipFilter").disabled  = false;  
            categoryName=name;
            document.getElementById("noDataMessage").style.display = "none";
            init(categoryName, filterValue);
            }
            
              
            //filterValue=[];	   
            //document.getElementById("allFilter").addEventListener("change", allFilterFunction);
            document.getElementById("passFilter").addEventListener("change", function(){
            passFilterFunction(categoryName);
            });
            document.getElementById("failFilter").addEventListener("change", function(){
            failFilterFunction(categoryName);
            });
            document.getElementById("skipFilter").addEventListener("change", function(){
            skipFilterFunction(categoryName);
            });
            
            /*function allFilterFunction() {
            document.getElementById("noDataMessage").style.display = "none";
            var x = document.getElementById("allFilter");
            //x.value = x.value.toUpperCase();
            
            if(document.getElementById("allFilter").checked){
            filterValue.push("ALL");
            document.getElementById("passFilter").checked  = false;
            document.getElementById("failFilter").checked  = false;
            document.getElementById("skipFilter").checked  = false;
            document.getElementById("passFilter").disabled  = true;
            document.getElementById("failFilter").disabled  = true;
            document.getElementById("skipFilter").disabled  = true;
            }
            else{
            filterValue=[];
            document.getElementById("passFilter").disabled  = false;
            document.getElementById("failFilter").disabled  = false;
            document.getElementById("skipFilter").disabled  = false;
            }
            
            init(categoryName, filterValue);
            
            }*/
            function passFilterFunction(categoryName) {
            document.getElementById("noDataMessage").style.display = "none";
            if(document.getElementById("passFilter").checked){
            filterValue.push("PASSED");
            }	
            else{
            var index = filterValue.indexOf("PASSED");
            
              if (index > -1) {
                 filterValue.splice(index, 1);
              }
            }
            
            init(categoryName, filterValue);
            }
            function failFilterFunction(categoryName) {
            document.getElementById("noDataMessage").style.display = "none";
            if(document.getElementById("failFilter").checked){
            filterValue.push("FAILED");
            }	
            else{
            var index = filterValue.indexOf("FAILED");
            
              if (index > -1) {
                 filterValue.splice(index, 1);
              }
            }
            
            init(categoryName, filterValue);
            }
            function skipFilterFunction(categoryName) {
            document.getElementById("noDataMessage").style.display = "none";
            if(document.getElementById("skipFilter").checked){
            filterValue.push("SKIPPED");
            }	
            else{
            var index = filterValue.indexOf("SKIPPED");
            
              if (index > -1) {
                 filterValue.splice(index, 1);
              }
            }
            
            init(categoryName, filterValue);
            }
            
         </script>          
         <script src="http://d3js.org/d3.v4.min.js" charset="utf-8"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.7.0/d3-legend.min.js"></script>
         <script>
            function Barwrap(text, width) {
            //console.log("inside wrap");
            var countTspan=0;
            	text.each(function() {
            	
            	if(countTspan==0){
            		var text = d3.select(this),
            				words = text.text().split(/\s+/).reverse(),
            				word,
            				line = [],
            				lineNumber = 0,
            				lineHeight = 0.9, // ems
            				y = text.attr("y"),
            				x = text.attr("x"),
            				dy = parseFloat(text.attr("dy")),
            				tspan = text.text(null).append("tspan").attr("x", x).attr("y", y).attr("dy", dy + "em");
            				}
            				var countWords=0;
            		while (word = words.pop()) {
            		countWords+=1;
            		
            		//tspan.node().innerHTML.length > 70
            			line.push(word);
            			tspan.text(line.join(" "));
            			//console.log(tspan.node())
            			if (tspan.node().innerHTML.length > 55) {
            				++countTspan;
            				line.pop();
            				tspan.text(line.join(" "));
            				line = [word];
            				//console.log(text);
            				if(countTspan==1){
            				//console.log(word);
            				//tspan.text(line.join("@@@"));
            				//text="..."+text;
            				tspan = text.append("tspan").attr("x", x).attr("y", y).attr("dy", ++lineNumber * lineHeight + dy + "em").text(word);
            				//console.log(tspan);
            				//tspan = text.append("tspan").attr("x", x).attr("y", y).attr("dy", ++lineNumber * lineHeight + dy + "em").text("...");
            				}
            				if(countTspan==2){
            				word="..."
            				tspan = text.append("tspan").attr("x", 0).attr("y", y).attr("dy", "2.4em").text(word);
            				}
            			}
            		}
            	});
            }
            function wrap(text, width) {
            //console.log("inside wrap");
            	text.each(function() {
            		var text = d3.select(this),
            				words = text.text().split(/\s+/).reverse(),
            				word,
            				line = [],
            				lineNumber = 0,
            				lineHeight = 1.1, // ems
            				y = text.attr("y"),
            				x = text.attr("x"),
            				dy = parseFloat(text.attr("dy")),
            				tspan = text.text(null).append("tspan").attr("x", x).attr("y", y).attr("dy", dy + "em");
            				var countWords=0;
            		while (word = words.pop()) {
            		countWords+=1;
            		if(countWords > 2){
            		break;
            		}
            			line.push(word);
            			tspan.text(line.join(" "));
            			if (tspan.node().getComputedTextLength() > width) {
            				line.pop();
            				tspan.text(line.join(" "));
            				line = [word];
            				tspan = text.append("tspan").attr("x", x).attr("y", y).attr("dy", ++lineNumber * lineHeight + dy + "em").text(word);
            			}
            		}
            	});
            }
            function axisWrap(text, width) {
            
            	text.each(function() {
            		var text = d3.select(this),
            				words = text.text().split(/\s+/).reverse(),
            				word,
            				line = [],
            				lineNumber = 0,
            				lineHeight = 1.1, // ems
            				y = text.attr("y"),
            				x = text.attr("x"),
            				dy = parseFloat(text.attr("dy")),
            				tspan = text.text(null).append("tspan").attr("x", 0).attr("y", 0).attr("dy", dy + "em");
            				var countWords=0;
            		while (word = words.pop()) {
            		countWords+=1;
            		if(countWords > 2){
            		break;
            		}
            			line.push(word);
            			tspan.text(line.join(" "));
            			if (tspan.node().getComputedTextLength() > width) {
            				line.pop();
            				tspan.text(line.join(" "));
            				line = [word];
            				tspan = text.append("tspan").attr("x", 0).attr("y", 0).attr("dy", ++lineNumber * lineHeight + dy + "em").text(word);
            			}
            		}
            	});
            }
            
            function dotme(text) {
                text.each(function() {
                    var text = d3.select(this);
                    var words = text.text().split(/\s+/);
                    
                    var ellipsis = text.text('').append('tspan').attr('class', 'elip').text('...');
                    var width = parseFloat(text.attr('width')) - ellipsis.node().getComputedTextLength();
                    var numWords = words.length;
                    
                    var tspan = text.insert('tspan', ':first-child').text(words.join(' '));
                    
                    // Try the whole line
                    // While it's too long, and we have words left, keep removing words
                    
                    while (tspan.node().getComputedTextLength() > width && words.length) {
                        words.pop();
                        tspan.text(words.join(' '));
                    }
                    
                    if (words.length === numWords) {
                        ellipsis.remove();
                    }
                });
            }
            var stepOverallFailPercentageCalculate;
            init();
            var suiteValue;
            var stepValue;
            var errorJsonValue;
            var scenarioValue;
            var caseValue;
            var errorMap;
            var errorCodesMap;
            var totalErrorCount;
            
            function init(type,datumValue){
            if(type=="suite"){
            		 //console.log("here");
            		 $( "#columnQuadrantSuite" ).addClass( "blink" );
            		 $( "#columnQuadrantScenario" ).removeClass( "blink" );
            		 $( "#columnQuadrantCase" ).removeClass( "blink" );
            		 $( "#columnQuadrantStep" ).removeClass( "blink" );
            		 }
            		 else if(type=="scenario"){
            		 $( "#columnQuadrantSuite" ).removeClass( "blink" );
            		 $( "#columnQuadrantScenario" ).addClass( "blink" );
            		 $( "#columnQuadrantCase" ).removeClass( "blink" );
            		 $( "#columnQuadrantStep" ).removeClass( "blink" );
            		 }
            		 else if(type=="case"){
            		 $( "#columnQuadrantSuite" ).removeClass( "blink" );
            		 $( "#columnQuadrantScenario" ).removeClass( "blink" );
            		 $( "#columnQuadrantCase" ).addClass( "blink" );
            		 $( "#columnQuadrantStep" ).removeClass( "blink" );
            		 }
            		 else if(type=="step"){
            		 $( "#columnQuadrantSuite" ).removeClass( "blink" );
            		 $( "#columnQuadrantScenario" ).removeClass( "blink" );
            		 $( "#columnQuadrantCase" ).removeClass( "blink" );
            		 $( "#columnQuadrantStep" ).addClass( "blink" );
            		 }
            		 else{
            		 $( "#columnQuadrantSuite" ).removeClass( "blink" );
            		 $( "#columnQuadrantScenario" ).removeClass( "blink" );
            		 $( "#columnQuadrantCase" ).removeClass( "blink" );
            		 $( "#columnQuadrantStep" ).removeClass( "blink" );
            		 }
            var dataset;
            suiteValue=[];
            scenarioValue=[];
            caseValue=[];
            stepValue=[];
            errorJsonValue=[];
            var dataforSuiteGraph;
            
            document.getElementById("stacked-bar1").style.display = 'none';
            document.getElementById("stacked-bar2").style.display = 'none';
            document.getElementById("stacked-bar3").style.display = 'none';
            
            document.getElementById("pie1").style.display = 'none';
            document.getElementById("pie2").style.display = 'none';
            document.getElementById("pie3").style.display = 'none';
            document.getElementById("pie4").style.display = 'none';
            //d3.select("svg").remove();
            var idValue;
            
            if(!type){
            type="suite";
            }
            var OverAllJsonData=${jsonValue};
            //var OverAllJsonData={"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"SERVICEDEMO_ARRAYDEMO","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ARRAYDEMO","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":100}],"colorForSuiteTerminated":false,"name":"ARRAYDEMO","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":4,"COUNTPASSED":100}],"name":"SERVICEDEMO_JsonDemo","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_JSONDEMO","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":100}],"colorForSuiteTerminated":false,"name":"JSONDEMO","SKIPPED":0,"PASSED":100},{"FAILED":100,"children":[{"FAILED":100,"children":[{"FAILED":80,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":20,"size":100,"count":4,"name":"AssertionFailure","COUNTPASSED":80},{"COUNTFAILED":80,"size":100,"name":"PASSED","count":1,"COUNTPASSED":20}],"name":"SERVICEDEMO_RestJson","SKIPPED":0,"PASSED":20}],"name":"SCENARIOS_RESTDEMO","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":0}],"colorForSuiteTerminated":false,"name":"RESTDEMO","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":50,"children":[{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":2,"name":"AssertionFailure","COUNTPASSED":100}],"name":"SERVICEDEMO_SoapDemo1","SKIPPED":0,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"SERVICEDEMO_SoapDemo2","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_SOAPDEMO","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":50}],"colorForSuiteTerminated":false,"name":"SOAPDEMO","SKIPPED":0,"PASSED":0}],"name":"Suites","errors":[["AssertionFailure",6,"java.awt.Color[r=73,g=32,b=54]",100]]};
            //var OverAllJsonData={"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"InternetOverviewPage_CheckPlanCardsPricing300ExistingUserIO","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":6,"COUNTPASSED":100}],"name":"InternetOverviewPage_CheckPlanCardsPricing75ExistingUserIO","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingExistingInternetPage","SKIPPED":0,"PASSED":100}],"name":"CheckPlanCardsPricingExistingInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":100,"children":[{"FAILED":11,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_SwitchToNoContract","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_PlanCardsPricing75ExistingUserNoContractInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_PlanCardsPricing300ExistingUserNoContractInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":83,"children":[{"COUNTFAILED":66,"size":100,"count":2,"name":"NoSuchElementException","COUNTPASSED":33},{"COUNTFAILED":50,"size":100,"count":3,"name":"AssertionFailure","COUNTPASSED":50},{"COUNTFAILED":83,"size":100,"name":"PASSED","count":1,"COUNTPASSED":16}],"name":"InternetOverviewPage_CheckPlanCardsPricing600ExistingNoContractInternetPage","SKIPPED":0,"PASSED":16},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingExistingNoContractInternetPage","SKIPPED":0,"PASSED":88}],"name":"CheckPlanCardsPricingExistingNoContractInternetPage","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":20,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"HomePage_CheckPlanCardsPricing300ExistingUser","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"HomePage_CheckPlanCardsPricing150ExistingUser","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":6,"COUNTPASSED":100}],"name":"HomePage_CheckPlanCardsPricing75ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingExistingUserHomePage","SKIPPED":0,"PASSED":80}],"name":"CheckPlanCardsPricingExistingUserHomePage","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":18,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"HomePage_CheckPlanCardsPricing300ExistingUser","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"HomePage_CheckPlanCardsPricing150ExistingUser","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":6,"COUNTPASSED":100}],"name":"HomePage_CheckPlanCardsPricing75ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingExistingUserSGW","SKIPPED":0,"PASSED":81}],"name":"CheckPlanCardsPricingExistingUserSGW","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_SwitchToNoContract","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"InternetOverviewPage_PlanCardsPricing75NewUserNoContractInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"InternetOverviewPage_PlanCardsPricing300NewUserNoContractInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingNewNoContractInternetPage","SKIPPED":0,"PASSED":100}],"name":"CheckPlanCardsPricingNewNoContractInternetPage","SKIPPED":0,"PASSED":100},{"FAILED":100,"children":[{"FAILED":20,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"HomePage_CheckPlanCardsPricing300NewUser","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"HomePage_CheckPlanCardsPricing150NewUser","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_CheckPlanCardsPricing75NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingNewUserHomePage","SKIPPED":0,"PASSED":80}],"name":"CheckPlanCardsPricingNewUserHomePage","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":12,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"InternetOverviewPage_CheckPlanCardsPricing300NewUserIO","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":6,"COUNTPASSED":100}],"name":"InternetOverviewPage_CheckPlanCardsPricing75NewUserIO","SKIPPED":0,"PASSED":100},{"FAILED":33,"children":[{"COUNTFAILED":66,"size":100,"count":2,"name":"AssertionFailure","COUNTPASSED":33},{"COUNTFAILED":33,"size":100,"name":"PASSED","count":4,"COUNTPASSED":66}],"name":"InternetOverviewPage_CheckPlanCardsPricing600NewUserIO","SKIPPED":0,"PASSED":66},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingNewUserInternetPage","SKIPPED":0,"PASSED":87}],"name":"CheckPlanCardsPricingNewUserInternetPage","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":18,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"HomePage_CheckPlanCardsPricing300NewUser","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"HomePage_CheckPlanCardsPricing150NewUser","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_CheckPlanCardsPricing75NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_ClickNextPlanCard","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_CheckPlanCardsPricingNewUserSGW","SKIPPED":0,"PASSED":81}],"name":"CheckPlanCardsPricingNewUserSGW","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToComparisonModal","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":20,"COUNTPASSED":100}],"name":"InternetOverviewPage_ComparePlan1502YVPVs3002YVPExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ComparePlan1502YVPVs3002YVPExistingUser","SKIPPED":0,"PASSED":100}],"name":"ComparePlan6002YVPVs3002YVPExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToComparisonModal","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":22,"COUNTPASSED":100}],"name":"InternetOverviewPage_ComparePlan1502YVPVs3002YVPNewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ComparePlan1502YVPVs3002YVPNewUser","SKIPPED":0,"PASSED":100}],"name":"ComparePlan6002YVPVs3002YVPNewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToComparisonModal","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":24,"COUNTPASSED":100}],"name":"InternetOverviewPage_ComparePlan1502YVPVs300NoContractNewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ComparePlan1502YVPVs300NoContractNewUser","SKIPPED":0,"PASSED":100}],"name":"ComparePlan6002YVPVs300NoContractNewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[],"name":"HomePage_Launch","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[],"name":"InternetOverviewPage_GoToComparisonModal","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[],"name":"InternetOverviewPage_ComparePlan150NoContractVs300NoContractExistingUser","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[],"name":"HomePage_Quit","SKIPPED":0,"PASSED":0}],"name":"SCENARIOS_ComparePlan150NoContractVs300NoContractExistingUser","SKIPPED":100,"PASSED":0}],"name":"ComparePlan600NoContractVs300NoContractExistingUser","SKIPPED":100,"PASSED":0},{"FAILED":100,"children":[{"FAILED":23,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"HomePage_HomePageClickBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Cart_Proceed","SKIPPED":0,"PASSED":100},{"FAILED":28,"children":[{"COUNTFAILED":71,"size":100,"count":2,"name":"NoSuchElementException","COUNTPASSED":28},{"COUNTFAILED":28,"size":100,"name":"PASSED","count":5,"COUNTPASSED":71}],"name":"Checkout_FillContactDetails","SKIPPED":0,"PASSED":71},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueServiceAddress","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Checkout_SelectSelfInstallationW","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueBilling","SKIPPED":0,"PASSED":100},{"FAILED":20,"children":[{"COUNTFAILED":80,"size":100,"count":1,"name":"WebDriverException","COUNTPASSED":20},{"COUNTFAILED":20,"size":100,"name":"PASSED","count":4,"COUNTPASSED":80}],"name":"Checkout_ReadAndAcceptAgreement","SKIPPED":0,"PASSED":80},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_SubmitOrderW","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"Checkout_VerifyOrderConfirmation","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_OrderConfirmation150ExistingUser2YVP","SKIPPED":0,"PASSED":76}],"name":"OrderConfirmation600ExistingUser2YVP","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":14,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_SwitchToNoContract","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_IOAddM2MPlanProduct","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Cart_Proceed","SKIPPED":0,"PASSED":100},{"FAILED":28,"children":[{"COUNTFAILED":71,"size":100,"count":2,"name":"NoSuchElementException","COUNTPASSED":28},{"COUNTFAILED":28,"size":100,"name":"PASSED","count":5,"COUNTPASSED":71}],"name":"Checkout_FillContactDetails","SKIPPED":0,"PASSED":71},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueServiceAddress","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Checkout_SelectSelfInstallationW","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueBilling","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_SubmitOrderW","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"Checkout_VerifyOrderConfirmation","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_OrderConfirmation150ExistingUserM2M","SKIPPED":0,"PASSED":85}],"name":"OrderConfirmation600ExistingUserM2M","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":15,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"HomePage_HomePageClickBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Cart_Proceed","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"Checkout_FillContactDetails","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueServiceAddress","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Checkout_SelectSelfInstallationW","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueBilling","SKIPPED":0,"PASSED":100},{"FAILED":20,"children":[{"COUNTFAILED":80,"size":100,"count":1,"name":"WebDriverException","COUNTPASSED":20},{"COUNTFAILED":20,"size":100,"name":"PASSED","count":4,"COUNTPASSED":80}],"name":"Checkout_ReadAndAcceptAgreement","SKIPPED":0,"PASSED":80},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_SubmitOrderW","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"Checkout_VerifyOrderConfirmation","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_OrderConfirmation150NewUser2YVP","SKIPPED":0,"PASSED":84}],"name":"OrderConfirmation600NewUser2YVP","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":7,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_SwitchToNoContract","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_IOAddM2MPlanProduct","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Cart_Proceed","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"Checkout_FillContactDetails","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueServiceAddress","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Checkout_SelectSelfInstallationW","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_ContinueBilling","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"Checkout_SubmitOrderW","SKIPPED":0,"PASSED":100},{"FAILED":16,"children":[{"COUNTFAILED":83,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":16},{"COUNTFAILED":16,"size":100,"name":"PASSED","count":5,"COUNTPASSED":83}],"name":"Checkout_VerifyOrderConfirmation","SKIPPED":0,"PASSED":83},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_OrderConfirmation150NewUserM2M","SKIPPED":0,"PASSED":92}],"name":"OrderConfirmation600NewUserM2M","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":35,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCartForExistingCustomer","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"Cart_VerifySecondProductAddedToCart","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCartForExistingCustomer","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"Cart_VerifySecondProductAddedToCart","SKIPPED":0,"PASSED":85},{"FAILED":100,"children":[{"COUNTFAILED":0,"size":100,"count":3,"name":"NoSuchElementException","COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCartForExistingCustomer","SKIPPED":0,"PASSED":0},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ShawGoWifiAddToCartExistingUSer","SKIPPED":0,"PASSED":64}],"name":"ShawGoWifi Add To Cart Existing User","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":11,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCart","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"Cart_VerifySecondProductAddedToCart","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCart","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"ShawGoWifi_GoToShawGowifiPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"ShawGoWifi_SGWBuyNowValuePlan","SKIPPED":0,"PASSED":100},{"FAILED":14,"children":[{"COUNTFAILED":85,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":14},{"COUNTFAILED":14,"size":100,"name":"PASSED","count":6,"COUNTPASSED":85}],"name":"Cart_VerifySecondProductAddedToCart","SKIPPED":0,"PASSED":85},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":5,"COUNTPASSED":100}],"name":"Cart_VerifyItemAddedToCart","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_ShawGoWifiAddToCartNewUSer","SKIPPED":0,"PASSED":88}],"name":"ShawGoWifi Add To Cart New User","SKIPPED":0,"PASSED":0},{"FAILED":100,"children":[{"FAILED":16,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":3,"COUNTPASSED":100}],"name":"InternetOverviewPage_GoToInternetOverviewPage","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":2,"COUNTPASSED":100}],"name":"InternetOverviewPage_IOAddValuePlanProduct","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":8,"COUNTPASSED":100}],"name":"HomePage_ExistingUser","SKIPPED":0,"PASSED":100},{"FAILED":50,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"name":"PASSED","count":1,"COUNTPASSED":50}],"name":"Cart_VerifyUpdateCustomerStateNewToExisting","SKIPPED":0,"PASSED":50},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_CheckHamburgerAndClick","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":7,"COUNTPASSED":100}],"name":"HomePage_NewUser","SKIPPED":0,"PASSED":100},{"FAILED":50,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"name":"PASSED","count":1,"COUNTPASSED":50}],"name":"Cart_VerifyUpdateCustomerStateExistingToNew","SKIPPED":0,"PASSED":50},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"HomePage_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_PriceChangeAlert2YVP75","SKIPPED":0,"PASSED":83}],"name":"UpdateCustomerState752YVP","SKIPPED":0,"PASSED":0}],"name":"Suites"};
            //var OverAllJsonData={"children":[{"FAILED":100,"PASSEDCOUNT":0,"children":[{"FAILED":50,"PASSEDCOUNT":1,"children":[{"FAILED":100,"PASSEDCOUNT":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"NullPointerException","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":50}],"SKIPPEDCOUNT":0,"name":"SERVICEDEMO_SoapDemo1","SKIPPED":0,"FAILEDCOUNT":2,"PASSED":0},{"FAILED":0,"PASSEDCOUNT":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"SKIPPEDCOUNT":0,"name":"SERVICEDEMO_SoapDemo2","SKIPPED":0,"FAILEDCOUNT":0,"PASSED":100}],"SKIPPEDCOUNT":0,"name":"SCENARIOS_SOAPDEMO","SKIPPED":0,"FAILEDCOUNT":1,"colorLeadsToScenarioTerminated":0,"PASSED":50}],"colorForSuiteTerminated":false,"name":"SOAPDEMO","SKIPPEDCOUNT":0,"SKIPPED":0,"FAILEDCOUNT":1,"PASSED":0}],"name":"Suites"};
            //var OverAllJsonData={"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"PASSED","COUNTPASSED":100}],"name":"Given:user launches \"http://target.com\"","SKIPPED":0,"PASSED":100},{"FAILED":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"PASSED","COUNTPASSED":100}],"name":"And:close the browser","SKIPPED":0,"PASSED":100}],"name":"Run CATS BDD Hybrid scripts refer CATSHybrid.java step def","SKIPPED":0,"PASSED":100}],"name":"HybridCATSBDD-CATS hybrid script","SKIPPED":0,"PASSED":100}],"name":"BDD SUITES"};
            //var OverAllJsonData={"children":[{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":50,"colorLeadsToTestCaseTerminated":1,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"count":1,"name":"UnknownFailedCode","COUNTPASSED":50}],"name":"FlagEXITSCN_Launch","SKIPPED":50,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":3,"name":"UnknownFailedCode","COUNTPASSED":100}],"name":"FlagEXITSCN_SearchPrd","SKIPPED":100,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"UnknownFailedCode","COUNTPASSED":100}],"name":"FlagEXITSCN_Quit","SKIPPED":100,"PASSED":0}],"name":"SCENARIOS_FSCN","SKIPPED":100,"colorLeadsToScenarioTerminated":1,"PASSED":0}],"colorForSuiteTerminated":false,"name":"EXITSCN","SKIPPED":100,"PASSED":0},{"FAILED":50,"children":[{"FAILED":62,"children":[{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"AMZ_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"AMZ_SearchPrd","SKIPPED":0,"PASSED":100},{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"InvalidSelectorException","COUNTPASSED":100}],"name":"AMZ_SelectPrd","SKIPPED":0,"PASSED":0},{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":100}],"name":"AMZ_VerifyPrdDetail","SKIPPED":0,"PASSED":0},{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"NoSuchElementException","COUNTPASSED":100}],"name":"AMZ_VerifyDetail","SKIPPED":0,"PASSED":0},{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":2,"name":"NoSuchElementException","COUNTPASSED":100}],"name":"AMZ_AddToCart","SKIPPED":0,"PASSED":0},{"FAILED":50,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"name":"PASSED","count":1,"COUNTPASSED":50}],"name":"AMZ_VerifyCart","SKIPPED":0,"PASSED":50},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"AMZ_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_AMZDTP","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":37},{"FAILED":0,"children":[{"FAILED":50,"colorLeadsToTestCaseTerminated":1,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"count":1,"name":"UnknownFailedCode","COUNTPASSED":50}],"name":"FlagEXITST_Launch","SKIPPED":50,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":3,"name":"UnknownFailedCode","COUNTPASSED":100}],"name":"FlagEXITST_SearchPrd","SKIPPED":100,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":1,"name":"UnknownFailedCode","COUNTPASSED":100}],"name":"FlagEXITST_Quit","SKIPPED":100,"PASSED":0}],"name":"SCENARIOS_FST","SKIPPED":100,"colorLeadsToScenarioTerminated":1,"PASSED":0}],"colorForSuiteTerminated":true,"name":"EXITSUIT","SKIPPED":50,"PASSED":0},{"FAILED":0,"children":[{"FAILED":0,"children":[{"FAILED":50,"colorLeadsToTestCaseTerminated":1,"children":[{"COUNTFAILED":50,"size":100,"count":1,"name":"AssertionFailure","COUNTPASSED":50},{"COUNTFAILED":50,"size":100,"count":1,"name":"UnknownFailedCode","COUNTPASSED":50}],"name":"FlagEXITTC_Launch","SKIPPED":50,"PASSED":0},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"FlagEXITTC_SearchPrd","SKIPPED":0,"PASSED":100},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"FlagEXITTC_Quit","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_FTC","SKIPPED":33,"colorLeadsToScenarioTerminated":0,"PASSED":66}],"colorForSuiteTerminated":false,"name":"EXITTC","SKIPPED":100,"PASSED":0},{"FAILED":33,"children":[{"FAILED":100,"children":[{"FAILED":100,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"count":3,"name":"DriverNotInitializedException","COUNTPASSED":100}],"name":"IgnoreTestCase_SearchPrd","SKIPPED":0,"PASSED":0}],"name":"SCENARIOS_IgnoreTestCase","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":0},{"FAILED":0,"children":[{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"IgnoreReport_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"IgnoreReport_SearchPrd","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_IgnoreReport","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":100},{"FAILED":0,"children":[{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"IgnoreTestStep_Launch","SKIPPED":0,"PASSED":100},{"FAILED":0,"colorLeadsToTestCaseTerminated":0,"children":[{"COUNTFAILED":0,"size":100,"name":"PASSED","count":1,"COUNTPASSED":100}],"name":"IgnoreTestStep_SearchPrd","SKIPPED":0,"PASSED":100}],"name":"SCENARIOS_IgnoreTestStep","SKIPPED":0,"colorLeadsToScenarioTerminated":0,"PASSED":100}],"colorForSuiteTerminated":false,"name":"IgnoreTestCaseStepReport","SKIPPED":0,"PASSED":66}],"name":"Suites"};
            
            var data=OverAllJsonData.children;
            errorJsonValue=OverAllJsonData.errors;
            //console.log(errorJsonValue)
            var dataValue = [];
            var suitePass=0;
            var suiteFail=0;
            var suiteSkip=0;
            var suiteTotal=data.length;
            
            var failOverallCase=0;
            var passOverallCase=0;
            var skipOverallCase=0;
            var totalOverallCase=0;
            
            var failOverallStep=0;
            var passOverallStep=0;
            var skipOverallStep=0;
            var totalOverallStep=0;
            
            var failOverallScenario=0;
            var passOverallScenario=0;
            var skipOverallScenario=0;
            var totalOverallScenario=0;
            errorMap=new Map();
            errorCodesMap=[];
            totalErrorCount=0;
            run(type);
            function run(type){
            
            for(var x=0;x<data.length;x++){
            
            var name=data[x].name;
            var failScenario=0;
            var passScenario=0;
            var skipScenario=0;
            var totalScenario=0;
            
            var failCase=0;
            var passCase=0;
            var skipCase=0;
            var totalCase=0;
            
            var failStep=0;
            var passStep=0;
            var skipStep=0;
            var totalStep=0;
            
            if(data[x].SKIPPED > 0){
            
            suiteSkip+=1;
            
            }
            else if(data[x].FAILED > 0){
            suiteFail+=1;
            }
            else{
            suitePass+=1;
            }
            
            
            var scenarioData=data[x].children;
            for(var y=0;y<scenarioData.length;y++){
            for(var z=0;z<scenarioData[y].children.length;z++){
            if(scenarioData[y].children[z].FAILED > 0 ){
                     failCase+=1;
                     }
                     else if(scenarioData[y].children[z].SKIPPED > 0){
                     skipCase+=1;
                     }
            else{
            passCase+=1;
            }
            }
            }
            totalCase=failCase+passCase+skipCase;
            
            totalOverallCase+=totalCase;
            passOverallCase+=passCase;
            failOverallCase+=failCase;
            skipOverallCase+=skipCase;
            
            var failCasePercentage=Math.round(failCase/totalCase *100);
            var passCasePercentage=Math.round(passCase/totalCase *100);
            var skipCasePercentage=Math.round(skipCase/totalCase *100);
            
            if(type==="case" || type==='barCase'){
            
            idValue="#stacked-bar2";
            if(type==='barCase'){
            document.getElementById("stacked-bar2").style.display = 'block';
            }
            document.getElementById("pie3").style.display = 'block';
            dataValue.push({
            "name":name,
            "PASSED":passCasePercentage,
            "FAILED":failCasePercentage,
            "SKIPPED":skipCasePercentage,
            "PASSEDCOUNT":passCase,
            "FAILEDCOUNT":failCase,
            "SKIPPEDCOUNT":skipCase,
            });
            }
            
            var scenarioData=data[x].children;
            for(var y=0;y<data[x].children.length;y++){
            var scenarioDateValue=scenarioData[y].children;
            for(var z=0;z<scenarioDateValue.length;z++){
            var caseValue=scenarioDateValue[z].children;
            //console.log(scenarioData[y].children[z].name);
            for(var k=0;k<caseValue.length;k++){
	         //console.log(scenarioDateValue[z].children[k].name);
	         if(scenarioDateValue[z].children[k].name==="PASSED"){
	         passStep+=scenarioDateValue[z].children[k].count;
	         }
	         
			 else if((scenarioDateValue[z].children[k].name==="SKIPPED") || (scenarioDateValue[z].SKIPPED > 0)){
	         skipStep+=scenarioDateValue[z].children[k].count;
	         }
			 else if((scenarioDateValue[z].children[k].name!="SKIPPED")&& 
			  (scenarioDateValue[z].children[k].name!="UnknownFailedCode") && (scenarioDateValue[z].children[k].name!="PASSED")){
	         //for error code table
	         var errorName=scenarioDateValue[z].children[k].name;
	         var errorCount=scenarioDateValue[z].children[k].count;
	         totalErrorCount+=errorCount;
	         
	         if(errorMap.has(errorName)){
	         //if(!errorName=="UnknownFailedCode"){
	         errorMap.set(errorName,errorMap.get(errorName)+errorCount)
	         //}
	         //errorJsonValue.push({"name":errorName,"count":errorCount});
	         }
	         else{
	         
	         //if(!errorName=="UnknownFailedCode"){
	         errorMap.set(errorName,errorCount);
	         //}
	         //errorJsonValue.push({"name":errorName,"count":errorCount})
	         }
	         
	         failStep+=scenarioDateValue[z].children[k].count;
	         }
	         }
            }
            }
            totalStep=failStep+passStep+skipStep;
            totalOverallStep+=totalStep;
            passOverallStep+=passStep;
            failOverallStep+=failStep;
            skipOverallStep+=skipStep;
            
            var failStepPercentage=failStep/totalStep *100;
            var passStepPercentage=passStep/totalStep *100;
            var skipStepPercentage=skipStep/totalStep *100;
            if(type==="step" || type==='barStep'){
            idValue="#stacked-bar3";
            if(type==='barStep'){
            document.getElementById("stacked-bar3").style.display = 'block';
            }
            document.getElementById("pie4").style.display = 'block';
            dataValue.push({
            "name":name,
            "PASSED":passStepPercentage,
            "FAILED":failStepPercentage,
            "SKIPPED":skipStepPercentage,
            "PASSEDCOUNT":passStep,
            "FAILEDCOUNT":failStep,
            "SKIPPEDCOUNT":skipStep,
            });
            }
            
            
            //scenariocode
            var totalScenarioValues=0;
            var scenarioDataValues=data[x].children;
            for(var y=0;y<scenarioDataValues.length;y++){
            if(scenarioDataValues[y].SKIPPED > 0){
            skipScenario+=1;
            }
            else if(scenarioDataValues[y].FAILED > 0){
            failScenario+=1;
            }
            else if(scenarioDataValues[y].PASSED > 0){
            passScenario+=1;
            }
            
            }
            
            totalScenarioValues=skipScenario+failScenario+passScenario;
            
            
            failOverallScenario+=failScenario;
            passOverallScenario+=passScenario;
            skipOverallScenario+=skipScenario;
            totalOverallScenario+=totalScenarioValues;
            
            if(type==="scenario" || type==="suite" || type==='barScenario' || type==='barSuite'){
            idValue="#stacked-bar1";
            if(type==='barScenario' || type==='barSuite'){
            document.getElementById("stacked-bar1").style.display = 'block';
            }
            dataValue.push({
            "name":name,
            "PASSED":data[x].PASSED,
            "FAILED":data[x].FAILED,
            "SKIPPED":data[x].SKIPPED,
            "PASSEDCOUNT":passScenario,
            "FAILEDCOUNT":failScenario,
            "SKIPPEDCOUNT":skipScenario,
            });
            }
            dataset=dataValue;
            }
            
            
            
            }
            
            if(type==="scenario" || type==='barScenario'){
            document.getElementById("pie2").style.display = 'block';
            }
            else if(type==="suite" || type==='barSuite'){
            document.getElementById("pie1").style.display = 'block';
            }
            
            var scenarioOverallPassPercentage=(passOverallScenario/totalOverallScenario *100);
            var scenarioOverallFailPercentage=(failOverallScenario/totalOverallScenario *100);
            var scenarioOverallSkipPercentage=(skipOverallScenario/totalOverallScenario *100);
            
            var stepOverallPassPercentage=(passOverallStep/totalOverallStep *100);
            var stepOverallFailPercentage=(failOverallStep/totalOverallStep *100);
            var stepOverallSkipPercentage=(skipOverallStep/totalOverallStep *100);
            
            var caseOverallPassPercentage=(passOverallCase/totalOverallCase *100);
            var caseOverallFailPercentage=(failOverallCase/totalOverallCase *100);
            var caseOverallSkipPercentage=(skipOverallCase/totalOverallCase *100);
            
            
            var suitePassPercentage=(suitePass/suiteTotal *100);
            var suiteFailPercentage=(suiteFail/suiteTotal *100);
            var suiteSkipPercentage=(suiteSkip/suiteTotal *100);
            //suite Level
            
            document.getElementById("suiteSkip").style.fontSize = "18px";
            document.getElementById("suitePass").style.fontSize = "18px";
            document.getElementById("suiteFail").style.fontSize = "18px";
            
            
            
            
            
            var totalSuites=suitePass+suiteFail+suiteSkip;
            var totalScenarios=passOverallScenario+failOverallScenario+skipOverallScenario;
            var totalCases=passOverallCase+failOverallCase+skipOverallCase;
            var totalSteps=skipOverallStep+passOverallStep+failOverallStep;
            //document.getElementById("suitePass").innerHTML = "PASS : "+Math.round(suitePassPercentage)+"% ( "+suitePass+" / "+suiteTotal+" )";
            document.getElementById("suiteTotal").innerHTML = "<span style='font-size:16px' >Total: "+totalSuites+"</span>";
                     document.getElementById("suitePass").innerHTML = "<span style='font-size:16px' >PASS</span><span style='padding-left: 2px;'> : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(suitePassPercentage)+"%</div><span id='passSpanforContentSuite'> ["+suitePass+"]</span>";
                     document.getElementById("suiteFail").innerHTML = "<span style='font-size:16px'>FAIL</span><span style='padding-left:7px;padding-right:1px;'>  : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(suiteFailPercentage)+"%</div><span id='failSpanforContentSuite'> ["+suiteFail+"]</span>";
                     document.getElementById("suiteSkip").innerHTML = "<span style='font-size:16px'>SKIP</span><span style='padding-left:5px;padding-right:5px;'> :</span><div style='display:inline-block;width:40px;font-size:16px'> "+Math.round(suiteSkipPercentage)+"%</div><span id='skipSpanforContentSuite'> ["+suiteSkip+"]</span>";
                     
                     
                     
                     document.getElementById("scenarioTotal").innerHTML = "<span style='font-size:16px' >Total: "+totalScenarios+"</span>";
                     document.getElementById("scenarioPass").innerHTML = "<span style='font-size:16px;'>PASS</span><span style='padding-left: 2px;'> : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(scenarioOverallPassPercentage)+"%</div><span id='passSpanforContentScenario'> ["+passOverallScenario+"]</span>";
                     document.getElementById("scenarioFail").innerHTML = "<span style='font-size:16px'>FAIL</span><span style='padding-left:7px;padding-right:1px;'>  : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(scenarioOverallFailPercentage)+"%</div><span id='failSpanforContentScenario'> ["+failOverallScenario+"]</span>";
                     document.getElementById("scenarioSkip").innerHTML = "<span style='font-size:16px'>SKIP</span><span style='padding-left:5px;padding-right:5px;'> :</span><div style='display:inline-block;width:40px;font-size:16px'> "+Math.round(scenarioOverallSkipPercentage)+"%</div><span id='skipSpanforContentScenario'> ["+skipOverallScenario+"]</span>";
                     
                     document.getElementById("caseTotal").innerHTML = "<span style='font-size:16px' >Total: "+totalCases+"</span>";
                     document.getElementById("casePass").innerHTML = "<span style='font-size:16px'>PASS</span><span style='padding-left: 2px;'> : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(caseOverallPassPercentage)+"%</div><span id='passSpanforContentCase'> ["+passOverallCase+"]</span>";
                     document.getElementById("caseFail").innerHTML = "<span style='font-size:16px'>FAIL</span><span style='padding-left:7px;padding-right:1px;'>  : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(caseOverallFailPercentage)+"%</div><span id='failSpanforContentCase'> ["+failOverallCase+"]</span>";
                     document.getElementById("caseSkip").innerHTML = "<span style='font-size:16px'>SKIP</span><span style='padding-left:5px;padding-right:5px;'> :</span><div style='display:inline-block;width:40px;font-size:16px'> "+Math.round(caseOverallSkipPercentage)+"%</div><span id='skipSpanforContentCase'> ["+skipOverallCase+"]</span>";
                     
                     document.getElementById("stepTotal").innerHTML = "<span style='font-size:16px' >Total: "+totalSteps+"</span>";
                     document.getElementById("stepSkip").innerHTML = "<span style='font-size:16px'>SKIP</span><span style='padding-left:5px;padding-right:5px;'> :</span><div style='display:inline-block;width:40px;font-size:16px'> "+Math.round(stepOverallSkipPercentage)+"%</div><span id='skipSpanforContentStep'> ["+skipOverallStep+"]</span>";
                     document.getElementById("stepPass").innerHTML = "<span style='font-size:16px'>PASS</span><span style='padding-left: 2px;'> : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(stepOverallPassPercentage)+"%</div><span id='passSpanforContentStep'> ["+passOverallStep+"]</span>";
                     document.getElementById("stepFail").innerHTML = "<span style='font-size:16px'>FAIL</span><span style='padding-left:7px;padding-right:1px;'>  : </span><div style='display:inline-block;width:40px;font-size:16px'>"+Math.round(stepOverallFailPercentage)+"%</div><span id='failSpanforContentStep'> ["+failOverallStep+"]</span>";
                     stepOverallFailPercentageCalculate=Math.round(stepOverallFailPercentage);
                     if(suiteSkip > 0){
                     //columnQuadrantSuite
                     document.getElementById("suiteSkip").style.color="blue";
                     document.getElementById("suiteSkip").style.fontWeight = "bolder";
                     document.getElementById("skipSpanforContentSuite").style.fontWeight = "100";
                     document.getElementById("skipSpanforContentSuite").style.color = "black";
                     document.getElementById("skipSpanforContentSuite").style.fontFamily = "serif";
                     document.getElementById("skipSpanforContentSuite").style.fontSize = "16px";
                     //font-size: 16px;color: black;font-family: serif;font-weight: 100;
                     }
                     else{
                     document.getElementById("suiteSkip").style.color="#DCDCDC";
                     document.getElementById("skipSpanforContentSuite").style.color = "#DCDCDC";
                     }
                     if(suitePass > 0){
                     document.getElementById("suitePass").style.color="green";
                     document.getElementById("suitePass").style.fontWeight = "bolder";
                     document.getElementById("passSpanforContentSuite").style.fontWeight = "100";
                     document.getElementById("passSpanforContentSuite").style.color = "black";
                     document.getElementById("passSpanforContentSuite").style.fontFamily = "serif";
                     document.getElementById("passSpanforContentSuite").style.fontSize = "14px";
                     }
                     else{
                     document.getElementById("suitePass").style.color="#DCDCDC";
                     document.getElementById("passSpanforContentSuite").style.color = "#DCDCDC";
                     }
                     if(suiteFail > 0){
                     document.getElementById("suiteFail").style.color="red";
                     document.getElementById("suiteFail").style.fontWeight = "bolder";
                     document.getElementById("failSpanforContentSuite").style.fontWeight = "100";
                     document.getElementById("failSpanforContentSuite").style.color = "black";
                     document.getElementById("failSpanforContentSuite").style.fontFamily = "serif";
                     document.getElementById("failSpanforContentSuite").style.fontSize = "14px";
                     }
                     else{
                     document.getElementById("suiteFail").style.color="#DCDCDC";
                     document.getElementById("failSpanforContentSuite").style.color="#DCDCDC";
                     }
                     
                     //scenario Level
                     document.getElementById("scenarioSkip").style.fontSize = "18px";
                     document.getElementById("scenarioPass").style.fontSize = "18px";
                     document.getElementById("scenarioFail").style.fontSize = "18px";
                     
                     if(skipOverallScenario > 0){
                     document.getElementById("scenarioSkip").style.color="blue";
                     document.getElementById("scenarioSkip").style.fontWeight = "bolder";
                     document.getElementById("skipSpanforContentScenario").style.fontWeight = "100";
                     document.getElementById("skipSpanforContentScenario").style.color = "black";
                     document.getElementById("skipSpanforContentScenario").style.fontFamily = "serif";
                     document.getElementById("skipSpanforContentScenario").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("scenarioSkip").style.color="#DCDCDC";
                     document.getElementById("skipSpanforContentScenario").style.color = "#DCDCDC";
                     }
                     if(passOverallScenario > 0){
                     document.getElementById("scenarioPass").style.color="green";
                     document.getElementById("scenarioPass").style.fontWeight = "bolder";
                     document.getElementById("passSpanforContentScenario").style.fontWeight = "100";
                     document.getElementById("passSpanforContentScenario").style.color = "black";
                     document.getElementById("passSpanforContentScenario").style.fontFamily = "serif";
                     document.getElementById("passSpanforContentScenario").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("scenarioPass").style.color="#DCDCDC";
                     document.getElementById("passSpanforContentScenario").style.color = "#DCDCDC";
                     }
                     if(failOverallScenario > 0){
                     document.getElementById("scenarioFail").style.color="red";
                     document.getElementById("scenarioFail").style.fontWeight = "bolder";
                     document.getElementById("failSpanforContentScenario").style.fontWeight = "100";
                     document.getElementById("failSpanforContentScenario").style.color = "black";
                     document.getElementById("failSpanforContentScenario").style.fontFamily = "serif";
                     document.getElementById("failSpanforContentScenario").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("scenarioFail").style.color="#DCDCDC";
                     document.getElementById("failSpanforContentScenario").style.color = "#DCDCDC";
                     }
                     
                     
                     //case Level
                     
                     document.getElementById("caseSkip").style.fontSize = "18px";
                     document.getElementById("casePass").style.fontSize = "18px";
                     document.getElementById("caseFail").style.fontSize = "18px";
                     
                     if(skipOverallCase > 0){
                     document.getElementById("caseSkip").style.color="blue";
                     document.getElementById("caseSkip").style.fontWeight = "bolder";
                     document.getElementById("skipSpanforContentCase").style.fontWeight = "100";
                     document.getElementById("skipSpanforContentCase").style.color = "black";
                     document.getElementById("skipSpanforContentCase").style.fontFamily = "serif";
                     document.getElementById("skipSpanforContentCase").style.fontSize = "14px";
                     
                     }
                     else{
                     
                     document.getElementById("caseSkip").style.color="#DCDCDC";
                     document.getElementById("skipSpanforContentCase").style.color = "#DCDCDC";
                     }
                     if(passOverallCase > 0){
                     document.getElementById("casePass").style.color="green";
                     document.getElementById("casePass").style.fontWeight = "bolder";
                     document.getElementById("passSpanforContentCase").style.fontWeight = "100";
                     document.getElementById("passSpanforContentCase").style.color = "black";
                     document.getElementById("passSpanforContentCase").style.fontFamily = "serif";
                     document.getElementById("passSpanforContentCase").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("casePass").style.color="#DCDCDC";
                     document.getElementById("passSpanforContentCase").style.color = "#DCDCDC";
                     }
                     if(failOverallCase > 0){
                     document.getElementById("caseFail").style.color="red";
                     document.getElementById("caseFail").style.fontWeight = "bolder";
                     document.getElementById("failSpanforContentCase").style.fontWeight = "100";
                     document.getElementById("failSpanforContentCase").style.color = "black";
                     document.getElementById("failSpanforContentCase").style.fontFamily = "serif";
                     document.getElementById("failSpanforContentCase").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("caseFail").style.color="#DCDCDC";
                     document.getElementById("failSpanforContentCase").style.color = "#DCDCDC";
                     }
                     
                     //step Level
                     
                     document.getElementById("stepSkip").style.fontSize = "18px";
                     document.getElementById("stepPass").style.fontSize = "18px";
                     document.getElementById("stepFail").style.fontSize = "18px";
                     
                     if(skipOverallStep > 0){
                     document.getElementById("stepSkip").style.color="blue";
                     document.getElementById("stepSkip").style.fontWeight = "bolder";
                     document.getElementById("skipSpanforContentStep").style.fontWeight = "100";
                     document.getElementById("skipSpanforContentStep").style.color = "black";
                     document.getElementById("skipSpanforContentStep").style.fontFamily = "serif";
                     document.getElementById("skipSpanforContentStep").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("stepSkip").style.color="#DCDCDC";
                     document.getElementById("skipSpanforContentStep").style.color = "#DCDCDC";
                     }
                     if(passOverallStep > 0){
                     document.getElementById("stepPass").style.color="green";
                     document.getElementById("stepPass").style.fontWeight = "bolder";
                     document.getElementById("passSpanforContentStep").style.fontWeight = "100";
                     document.getElementById("passSpanforContentStep").style.color = "black";
                     document.getElementById("passSpanforContentStep").style.fontFamily = "serif";
                     document.getElementById("passSpanforContentStep").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("stepPass").style.color="#DCDCDC";
                     document.getElementById("passSpanforContentStep").style.color = "#DCDCDC";
                     }
                     if(failOverallStep > 0){
                     document.getElementById("stepFail").style.color="red";
                     document.getElementById("stepFail").style.fontWeight = "bolder";
                     document.getElementById("failSpanforContentStep").style.fontWeight = "100";
                     document.getElementById("failSpanforContentStep").style.color = "black";
                     document.getElementById("failSpanforContentStep").style.fontFamily = "serif";
                     document.getElementById("failSpanforContentStep").style.fontSize = "14px";
                     
                     }
                     else{
                     document.getElementById("stepFail").style.color="#DCDCDC";
                     document.getElementById("failSpanforContentStep").style.color = "#DCDCDC";
                     }
                     
            
            
            
            
            // ********************************need to fetch from ftl starts**********************************
            //console.log("Dont forget to fetch threshold values from FTL");
            var PassThresholdPercentage=${passPercentageThreshold};
            var FailThresholdPercentage=${failPercentageThreshold};
            // ********************************need to fetch from ftl ends **********************************
            //step overallPercentage border colors
            
            if(Math.round(stepOverallPassPercentage) >= PassThresholdPercentage){
            document.getElementById("columnQuadrantStep").style.backgroundColor = "#ecf7eb";
            }
            else if(Math.round(stepOverallPassPercentage) <= FailThresholdPercentage){
            document.getElementById("columnQuadrantStep").style.backgroundColor = "#f3e5e4";
            }
            else{
            document.getElementById("columnQuadrantStep").style.backgroundColor = "#e5e5ef";
            }
            
            //case overallPercentage border colors
            if(Math.round(caseOverallPassPercentage) >= PassThresholdPercentage){
            document.getElementById("columnQuadrantCase").style.backgroundColor = "#ecf7eb";
            }
            else if(Math.round(caseOverallPassPercentage) <= FailThresholdPercentage){
            document.getElementById("columnQuadrantCase").style.backgroundColor = "#f3e5e4";
            }
            else{
            document.getElementById("columnQuadrantCase").style.backgroundColor = "#e5e5ef";
            }
            //scenario overallPercentage border colors
            if(Math.round(scenarioOverallPassPercentage) >= PassThresholdPercentage){
            document.getElementById("columnQuadrantScenario").style.backgroundColor = "#ecf7eb";
            }
            else if(Math.round(scenarioOverallPassPercentage) <= FailThresholdPercentage){
            document.getElementById("columnQuadrantScenario").style.backgroundColor = "#f3e5e4";
            }
            else{
            document.getElementById("columnQuadrantScenario").style.backgroundColor = "#e5e5ef";
            }
            
            //suite overallPercentage border colors
            if(Math.round(suitePassPercentage) >= PassThresholdPercentage){
            document.getElementById("columnQuadrantSuite").style.backgroundColor= "#ecf7eb";
            }
            else if(Math.round(suitePassPercentage) <= FailThresholdPercentage){
            document.getElementById("columnQuadrantSuite").style.backgroundColor = "#f3e5e4";
            }
            else{
            document.getElementById("columnQuadrantSuite").style.backgroundColor = "#e5e5ef";
            }
            
            
            /*for (const [k, v] of errorMap.entries()) {
              //console.log(k, v);
              errorJsonValue.push({"name":k,"count":v})
            }*/
            //console.log(errorJsonValue);
            
            
            suiteValue.push({"status":"PASSED","value":Math.round(suitePassPercentage),"count":suitePass,"total":suiteTotal,"color":"#50BB50"},
            {"status":"FAILED","value":Math.round(suiteFailPercentage),"count":suiteFail,"total":suiteTotal,"color":"#ff5050"},
            {"status":"SKIPPED","value":Math.round(suiteSkipPercentage),"count":suiteSkip,"total":suiteTotal,"color":"#56aff1"});
            
            scenarioValue.push({"status":"PASSED","value":Math.round(scenarioOverallPassPercentage),"count":passOverallScenario,"total":totalOverallScenario,"color":"#50BB50"},
            {"status":"FAILED","value":Math.round(scenarioOverallFailPercentage),"count":failOverallScenario,"total":totalOverallScenario,"color":"#ff5050"},
            {"status":"SKIPPED","value":Math.round(scenarioOverallSkipPercentage),"count":skipOverallScenario,"total":totalOverallScenario,"color":"#56aff1"});
            
            caseValue.push({"status":"PASSED","value":Math.round(caseOverallPassPercentage),"count":passOverallCase,"total":totalOverallCase,"color":"#50BB50"},
            {"status":"FAILED","value":Math.round(caseOverallFailPercentage),"count":failOverallCase,"total":totalOverallCase,"color":"#ff5050"},
            {"status":"SKIPPED","value":Math.round(caseOverallSkipPercentage),"count":skipOverallCase,"total":totalOverallCase,"color":"#56aff1"});
            
            stepValue.push({"status":"PASSED","value":Math.round(stepOverallPassPercentage),"count":passOverallStep,"total":totalOverallStep,"color":"#50BB50"},
            {"status":"FAILED","value":Math.round(stepOverallFailPercentage),"count":failOverallStep,"total":totalOverallStep,"color":"#ff5050"},
            {"status":"SKIPPED","value":Math.round(stepOverallSkipPercentage),"count":skipOverallStep,"total":totalOverallStep,"color":"#56aff1"});
            
            if(type=='barScenario' || type=='barStep' || type=='barCase' || type=='barSuite'){
            drawMyBar(dataset,type,suiteTotal,idValue,datumValue);
            }
            //alert(document.getElementById());
            var fetchErrorsFromSuites=OverAllJsonData.children;
                     var errorCategoryInformation=OverAllJsonData.errors;
                     
                     var errorJsonArray=[];
                     for(var errors=0;errors<errorCategoryInformation.length;errors++){
                     
                     for(var a=0;a<fetchErrorsFromSuites.length;a++){
                     //console.log(fetchErrorsFromSuites[a].name)
                     for(var b=0;b<fetchErrorsFromSuites[a].children.length;b++){
                     //console.log(fetchErrorsFromSuites[a].children[b].name)
                     for(var c=0;c<fetchErrorsFromSuites[a].children[b].children.length;c++){
                     //console.log(fetchErrorsFromSuites[a].children[b].children[c].name)
                     for(var d=0;d<fetchErrorsFromSuites[a].children[b].children[c].children.length;d++){
                     //console.log("!!!!!!!!!!!!!!"+fetchErrorsFromSuites[a].children[b].children[c].children[d].name)
                     if(errorCategoryInformation[errors][0]==fetchErrorsFromSuites[a].children[b].children[c].children[d].name){
                     //console.log(fetchErrorsFromSuites[a].children[b].children[c].children[d].count)
                     errorJsonArray.push({
                     "name":fetchErrorsFromSuites[a].children[b].children[c].children[d].name,
                     "suiteName":fetchErrorsFromSuites[a].name,
                     "scenarioName":fetchErrorsFromSuites[a].children[b].name,
                     "caseName":fetchErrorsFromSuites[a].children[b].children[c].name,
                     "count":fetchErrorsFromSuites[a].children[b].children[c].children[d].count
                     })
                     }
                     }
                     }
                     }
                     }
                     }
                     $("#errorBody").empty();
                     for(var errors1=0;errors1<errorCategoryInformation.length;errors1++){
                     var firstBreadcrumb=0;
                     var addHeadDiv="<div style='color: #f5eaea;border: 1px solid #e8e0e0;background-color: cadetblue;cursor:pointer' onclick='toggleContent(\""+errorCategoryInformation[errors1][0]+"\")'><span style='padding-left:10px;font-size:16px;'>"+errorCategoryInformation[errors1][0]+"</span></div>";
                     $("#errorBody").append(addHeadDiv);
                     for(var n1=0;n1<errorJsonArray.length;n1++){
                     if(errorCategoryInformation[errors1][0]==errorJsonArray[n1].name){
                     if(firstBreadcrumb==0){
                     if(errorJsonArray[n1].count==1){
                     var addSubDiv="<p class='"+errorJsonArray[n1].name+" errorContentPara' style='font-size:12px;margin-top: 10px;display:none;'>"+errorJsonArray[n1].suiteName+" &gt; "+errorJsonArray[n1].scenarioName+" - "+errorJsonArray[n1].caseName+"<span style='font-size:12px;color:red;padding-left: 10px;'> [Occured "+errorJsonArray[n1].count+" time]</span></p>"
                     }
                     else{
                     var addSubDiv="<p class='"+errorJsonArray[n1].name+" errorContentPara' style='font-size:12px;margin-top: 10px;display:none;'>"+errorJsonArray[n1].suiteName+" &gt; "+errorJsonArray[n1].scenarioName+" - "+errorJsonArray[n1].caseName+"<span style='font-size:12px;color:red;padding-left: 10px;'> [Occured "+errorJsonArray[n1].count+" times]</span></p>"
                     }
                     }
                     else{
                     if(errorJsonArray[n1].count==1){
                     var addSubDiv="<p class='"+errorJsonArray[n1].name+" errorContentPara' style='font-size:12px;margin-top: 10px;display:none;'>"+errorJsonArray[n1].suiteName+" &gt; "+errorJsonArray[n1].scenarioName+" - "+errorJsonArray[n1].caseName+"<span style='font-size:12px;color:red;padding-left: 10px;'> [Occured "+errorJsonArray[n1].count+" time]</span></p>"
                     }
                     else{
                     var addSubDiv="<p class='"+errorJsonArray[n1].name+" errorContentPara' style='font-size:12px;margin-top: 0px;display:none;'>"+errorJsonArray[n1].suiteName+" &gt; "+errorJsonArray[n1].scenarioName+" - "+errorJsonArray[n1].caseName+"<span style='font-size:12px;color:red;padding-left: 10px;'> [Occured "+errorJsonArray[n1].count+" times]</span></p>"
                     }
                     }
                     ++firstBreadcrumb;
                     $("#errorBody").append(addSubDiv);
                     }
                     else{
                     
                     
                     }
                     //SuiteX > ScenarioX - TestCaseX - StepNumber
                     
                     }
                     }
                     /*
                     for(var n=0;n<dataErrors.length;n++){
                     //console.log(dataErrors[n][0])
                     var addRow = "<tr><td style='text-align:center;padding:4px;'>"+dataErrors[n][0]+ "</td> <td style='text-align:center'>"+dataErrors[n][1]+ " </td> <td style='text-align:center'> "+dataErrors[n][3]+ "</td></tr>";
                     $("#errorTable").append(addRow);
                     }*/
            
            //ffb4a0
            }
            
            function drawMyBar(datum,type,suiteTotal,idValue,datumValue){
            dataset=datum;
            var showOnlyStatus=[];
            
            var newDataForPieClicks=[];
            //console.log(datumValue);
            if(datumValue){
            if(!datumValue.includes("ALL")){
            showOnlyStatus=datumValue;
            for(var i = 0; i < dataset.length; i++) {
                var obj = dataset[i];
            	if(showOnlyStatus.includes('FAILED') && showOnlyStatus.includes('PASSED') && showOnlyStatus.includes('SKIPPED') && obj.FAILED > 0 && obj.PASSED > 0 && obj.SKIPPED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	else if(showOnlyStatus.includes('FAILED') && showOnlyStatus.includes('PASSED') && obj.FAILED > 0 && obj.PASSED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	else if(showOnlyStatus.includes('FAILED') && showOnlyStatus.includes('SKIPPED') && obj.FAILED > 0 && obj.SKIPPED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	else if(showOnlyStatus.includes('PASSED') && showOnlyStatus.includes('SKIPPED') && obj.PASSED > 0 && obj.SKIPPED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	
            	else if(showOnlyStatus.includes('FAILED')  && obj.FAILED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	else if(showOnlyStatus.includes('PASSED') && obj.PASSED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
            	else if(showOnlyStatus.includes('SKIPPED') && obj.SKIPPED > 0){
            		newDataForPieClicks.push(dataset[i]);
            	}
                
            }
            dataset=newDataForPieClicks
            }
            }
            if(dataset.length==0){
            document.getElementById("noDataMessage").style.display = "block";
            document.getElementById("noDataMessage").innerHTML = "!!!Invalid Search!!!";
            }
            var barHeight;
            if(dataset.length==1){
            barHeight=90;
            }
            else if(dataset.length == 2){
            barHeight=70;
            }
            else if(dataset.length >= 3){
            barHeight=55;
            }
            else{
            barHeight=0;
            }
            var groupSpacing = 6;
                var margin = {top: 10, right: 100, bottom: 35, left: 350},
                    width = 1000 - margin.left - margin.right,
            		height = (dataset.length*barHeight) - margin.top - margin.bottom;
            			
            	  var y = d3.scaleBand()
                        .rangeRound([height, 0]).padding(0.1);
                var x = d3.scaleLinear()
                        .range([0, width], .1,.3);
            			
              //  var colorRange = d3.scale.category20();
                var color = d3.scaleOrdinal(d3.schemeCategory20);
            	
            	var		xAxis = d3.axisBottom(x).tickFormat(dataset.name),
            			yAxis =  d3.axisLeft(y);
            			d3.select(idValue).selectAll("svg").remove();
                var svg = d3.select(idValue).append("svg")
                        .attr("width", width + margin.left + margin.right)
                        .attr("height", height + margin.top + margin.bottom)
                        .append("g")
                        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
            			
                //var divTooltip = d3.select("body").append("div").attr("class", "toolTip");
                color.domain(d3.keys(dataset[0]).filter(function(key) { return key !== "name"; }));
                dataset.forEach(function(d) {
                    var y0 = 0;
            		var y1 = 0;
            		var passCount = 0;
            		var failCount = 0;
            		var skipCount = 0;
                    d.values = color.domain().map(function(name) { 
            		
            		return {passCount:d.PASSEDCOUNT,failCount:d.FAILEDCOUNT, skipCount:d.SKIPPEDCOUNT,name: name,totalCount:d.PASSEDCOUNT+d.FAILEDCOUNT+d.SKIPPEDCOUNT, y0: y0, y1: y0 += +d[name]}; });
                    d.total = d.values[d.values.length - 1].y1;
                });
                y.domain(dataset.map(function(d) {
            	//if(d.FAILED > 0){
            	return d.name;
            //	}
            	}))
            	.call(axisWrap, y.bandwidth());
            	x.domain([0, 100 ]).nice();
            
                //x.domain([0, d3.max(dataset, function(d) { return d.total; })]);
                svg.append("g")
                        .attr("class", "x axis")
                        .attr("transform", "translate(0," + height + ")")
                        .call(xAxis)
            			.selectAll("text")
            			.call(axisWrap, 100)
            			  .style("text-anchor", "middle")
            			  .style("color","red")
            			  .attr("dx", "-.8em")
            			  .attr("dy", ".5em")
            			  .attr("x", "0")
            			  .attr("y", "10")
            			  .attr("class", "axisWrap")
            			  
            			  
            			  .attr("transform", "rotate(-65)");
            
            		
            	svg.append("g")
                  .attr("class", "y axis")
            	  
                  .call(yAxis)
            	    
            		.selectAll(".y.axis .tick text")
            		.attr("dy","1.5em")
                  .call(wrap,50)
            	  //.attr("class", "dotme")
            	  .attr("x","0px")
            	  .attr("y","-15px")
            	  .style("max-width", "100px")
            	  .attr("text-anchor","end")
            	  
            	  ;
            
                var bar = svg.selectAll(".name")
                        .data(dataset)
                        .enter().append("g")
                        .attr("class", "g")
            			//.style("color","red")
                        .attr("transform", function(d) { return "translate(0, " + y(d.name) + ")"; });
                svg.selectAll(".x.axis .tick text")
                        .call(wrap, y.bandwidth());
                svg.selectAll(".y.axis .tick text")
            			.attr("x","-10px")
                        .call(Barwrap, 50);	        
                        
                var bar_enter = bar.selectAll("rect")
                .data(function(d) { 
            	
            	return d.values; })
                .enter();
            
            	bar_enter.append("rect")
            		.attr("height", 30)
            		.attr("x", function(d) { 
            		//console.log(x(d.y0));
            		return x(d.y0); })
            		.attr("width", function(d) { return x(d.y1) - x(d.y0) })
            		.attr("fill", function(d,i){ 
            		
            		if(d.name=='FAILED' && d.y1 > 0){
            		var offsetValue=d.y0;
            		
            		var legend = svg.append("defs")
                  .append("svg:linearGradient")
                  .attr("id", function(d,i){return "gradientFAIL"+type;})
                  .attr("x1", "100%")
                  .attr("y1", "100%")
                  .attr("x2", "100%")
                  .attr("y2", "0%")
            	  .attr("gradientUnits", "userSpaceOnUse")
                  .attr("spreadMethod", "pad");
            
                  
                legend.append("stop")
                  .attr("offset", "70%")
                  .attr("stop-color", "#4a0000")
                  //.attr("stop-opacity", .95);
            	  
                legend.append("stop")
                  .attr("offset", "100%")
                  .attr("stop-color", "#ff0000")
                  //.attr("stop-opacity", .95);
            	return "url(#gradientFAIL"+type+")";
            	}
            	
            	
            	else if(d.name=='SKIPPED' && d.y1 > 0){
            	var legend = svg.append("defs")
                  .append("svg:linearGradient")
                  .attr("id", function(d,i){return "gradientSKIP"+type;})
                  .attr("x1", "100%")
                  .attr("y1", "100%")
                  .attr("x2", "100%")
                  .attr("y2", "0%")
            	  .attr("gradientUnits", "userSpaceOnUse")
                  .attr("spreadMethod", "pad");
            	  
                legend.append("stop")
                  .attr("offset", "75%")
                  .attr("stop-color", "#004c63")
                  //.attr("stop-opacity", .95);
            	  
                legend.append("stop")
                  .attr("offset", "100%")
                  .attr("stop-color", "#43cbf3")
                  //.attr("stop-opacity", .95);
            	
            
                  //.attr("stop-opacity", 1);
            	return "url(#gradientSKIP"+type+")";
            	}
            	
            	
            	
            	////fsfdgfd ****************** PASSED
            	
            	else if(d.name=='PASSED' && d.y1 > 0){
            	var legend = svg.append("defs")
                  .append("svg:linearGradient")
                  .attr("id", function(d,i){return "gradientPASS"+type;})
                  .attr("x1", "100%")
                  .attr("y1", "100%")
                  .attr("x2", "100%")
                  .attr("y2", "0%")
            	  .attr("gradientUnits", "userSpaceOnUse")
                  .attr("spreadMethod", "pad");
            	legend.append("stop")
                  .attr("offset", "75%")
                  .attr("stop-color", "#004200")
                  //.attr("stop-opacity", .95);
            	  
                legend.append("stop")
                  .attr("offset", "100%")
                  .attr("stop-color", "rgb(0,255,0)")
                  //.attr("stop-opacity", .95);
                	return "url(#gradientPASS"+type+")";
            	}
            	
            		else{
            		return "white";}
            		});
            
            	bar_enter.append("text")
            		.text(function(d) {
            //		console.log(data);
            		if(d.y1-d.y0 > 1){
            		
            		if(d.name=='PASSED'){
            		return d3.format(".2s")(d.y1-d.y0)+"% [ "+d.passCount+"/"+d.totalCount+" ]"; 
            		}
            		if(d.name=='FAILED'){
            		return d3.format(".2s")(d.y1-d.y0)+"% [ "+d.failCount+"/"+d.totalCount+" ]"; 
            		}
            		if(d.name=='SKIPPED'){
            		return d3.format(".2s")(d.y1-d.y0)+"% [ "+d.skipCount+"/"+d.totalCount+" ]"; 
            		}
            		
            		}
            		})
            		.attr("x", function(d) { 
            		
            		return x(d.y1)+(x(d.y0) - x(d.y1))/2; })
            		.attr("y", y.bandwidth()/2.5)
            		.style("font-size","12px")
            		.style("fill", 'white');
                }
               function toggleContent(errorChoosed){
                     var defaultSetting=document.getElementsByClassName("errorContentPara");
                     for(var hideAll=0;hideAll<defaultSetting.length;hideAll++){
                     defaultSetting[hideAll].style.display="none";   
                     }
                     var setofvalues=document.getElementsByClassName(errorChoosed);
                     for(var hidecontents=0;hidecontents<setofvalues.length;hidecontents++){
                     //console.log(setofvalues[hidecontents].style.display)
                     if(setofvalues[hidecontents].style.display=='block'){
                     setofvalues[hidecontents].style.display="none";    
                     }
                     else{
                     setofvalues[hidecontents].style.display="block";  }  
                     }
                     }
            
         </script>
         <script>
            var dataErrors=[];
            dataErrors=errorJsonValue;
            
            if(dataErrors.length >0){
            for(var n=0;n<dataErrors.length;n++){
            
            if(n==dataErrors.length-1)
            var addRow = "<tr onclick='toggleContent(\""+dataErrors[n][0]+"\")' data-toggle='modal' data-target='#myModalforError' style='cursor:pointer;'   ><td style='padding:4px;word-break: none;white-space: unset;border-right: 2px solid #c8c8e8;'>"+dataErrors[n][0]+ "</td> <td style='text-align:center;word-break: none;white-space: unset;'>"+dataErrors[n][1]+ " </td> <td style='text-align:center;word-break: none;white-space: unset;'> "+dataErrors[n][3]+ "%</td><td style='text-align:center;word-break: none;white-space: unset;'> "+Math.round((dataErrors[n][3]*stepOverallFailPercentageCalculate)/100)+ "%</td></tr>";
            else
            var addRow = "<tr onclick='toggleContent(\""+dataErrors[n][0]+"\")' data-toggle='modal' data-target='#myModalforError' style='cursor:pointer;'   ><td style='padding:4px;word-break: none;white-space: unset;border-right: 2px solid #c8c8e8;'>"+dataErrors[n][0]+ "</td> <td style='text-align:center;border-bottom: 1px solid #51a7a3;'>"+dataErrors[n][1]+ " </td> <td style='text-align:center;word-break: none;white-space: unset;border-bottom: 1px solid #51a7a3;'> "+dataErrors[n][3]+ "%</td><td style='text-align:center;word-break: none;white-space: unset;border-bottom: 1px solid #51a7a3;'> "+Math.round((dataErrors[n][3]*stepOverallFailPercentageCalculate)/100)+ "%</td></tr>";
            $("#errorTable").append(addRow);
            }
            
            }
            else{
            document.getElementById("errorTable").style.display="none";
            document.getElementById("noErrorData").style.display="";
            document.getElementById("noErrorData").innerHTML="No Error Code Data";
            
            }
            
            
            
            
         </script>
         <script src="https://code.jquery.com/jquery-2.1.0.min.js"></script>
         <script src="http://d3js.org/d3.v4.min.js" charset="utf-8"></script>
         <script>
            var width = 300,
            	height = 300,
            	// Think back to 5th grade. Radius is 1/2 of the diameter. What is the limiting factor on the diameter? Width or height, whichever is smaller
            	radius = Math.min(width, height) / 2;
            var labelArc = d3.arc()
            	.outerRadius(radius - 60)
            	.innerRadius(radius - 60);
         </script>
         <script src="http://d3js.org/d3.v3.min.js"></script>
         <script>
            !function(){
            	var gradPie={};
            	
            	var pie = d3.layout.pie().sort(null).value(function(d) {return d.value;});
            			
            	createGradients = function(defs, colors, r){	
            		var gradient = defs.selectAll('.gradient')
            			.data(colors).enter().append("radialGradient")
            			.attr("id", function(d,i){return "gradient" + i;})
            			.attr("gradientUnits", "userSpaceOnUse")
            			.attr("cx", "0").attr("cy", "0").attr("r", r).attr("spreadMethod", "pad");
            			
            		gradient.append("stop").attr("offset", "0%").attr("stop-color", function(d){ return d;});
            
            		gradient.append("stop").attr("offset", "30%")
            			.attr("stop-color",function(d){ return d;})
            			.attr("stop-opacity", 1);
            			
            		gradient.append("stop").attr("offset", "70%")
            			.attr("stop-color",function(d){ return "black";})
            			.attr("stop-opacity", 1);
            	}
            	
            	gradPie.draw = function(id, data, cx, cy, r){
            	//d3.select("#"+id).selectAll("defs").remove();
            		var gPie = d3.select("#"+id).append("g")
            			.attr("transform", "translate(" + cx + "," + cy + ")");
            			
            		createGradients(gPie.append("defs"), data.map(function(d){ return d.color; }), 2.5*r);
            
            		gPie.selectAll("path").data(pie(data))
            			.enter().append("path").attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.each(function(d) { this._current = d; });
            			
            	 gPie.selectAll("text").data(pie(data))
            			.enter().append("text")
            			.attr("transform", function(d) { return "translate(" + labelArc.centroid(d) + ")"; })
            			.attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			.text(function(d) {
            			
            	if(d.data.value > 0){			
            	var resultValue=d.data.value+"% "+"("+d.data.count+" of "+d.data.total+")"
            	return resultValue;
            	}
            	})
            	.attr("text-anchor","middle")
            	.style("fill", "#fff")
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.each(function(d) { this._current = d; });
            	}
            	
            	gradPie.transition = function(id, data, r) {
            		function arcTween(a) {
            		  var i = d3.interpolate(this._current, a);
            		  this._current = i(0);
            		  return function(t) { return d3.svg.arc().outerRadius(r)(i(t));  };
            		}
            		
            		d3.select("#"+id).selectAll("path").data(pie(data))
            			.transition().duration(750).attrTween("d", arcTween); 
            	}	
            	
            	this.gradPie = gradPie;
            }();
         </script>
         <script>
            !function(){
            	var gradPie={};
            	
            	var pie = d3.layout.pie().sort(null).value(function(d) {return d.value;});
            			
            	createGradientsNew = function(defs, colors, r){	
            		var gradient = defs.selectAll('.gradient')
            			.data(colors).enter().append("radialGradient")
            			.attr("id", function(d,i){return "gradient" + i;})
            			.attr("gradientUnits", "userSpaceOnUse")
            			.attr("cx", "0").attr("cy", "0").attr("r", r).attr("spreadMethod", "pad");
            			
            		gradient.append("stop").attr("offset", "0%").attr("stop-color", function(d){ return d;});
            
            		gradient.append("stop").attr("offset", "30%")
            			.attr("stop-color",function(d){ return d;})
            			.attr("stop-opacity", 1);
            			
            		gradient.append("stop").attr("offset", "70%")
            			.attr("stop-color",function(d){ return "black";})
            			.attr("stop-opacity", 1);
            	}
            	
            	gradPie.draw = function(id, data, cx, cy, r){
            	//d3.select("#"+id).selectAll("defs").remove();
            		var gPie = d3.select("#"+id).append("g")
            			.attr("transform", "translate(" + cx + "," + cy + ")");
            			
            		createGradientsNew(gPie.append("defs"), data.map(function(d){ return d.color; }), 2.5*r);
            		
            		gPie.selectAll("path").data(pie(data))
            			.enter().append("path").attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			//.on("click",helper)
            			
            			//pie click
            			
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.style("cursor", "pointer")
            			.each(function(d) { this._current = d; });
            			
            	 gPie.selectAll("text").data(pie(data))
            			.enter().append("text")
            			.attr("transform", function(d) { return "translate(" + labelArc.centroid(d) + ")"; })
            			.attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			.text(function(d) {
            	if(d.data.value > 1){			
            	var resultValue=d.data.value+"% "+"("+d.data.count+" of "+d.data.total+")"
            	return resultValue;
            	}
            	})
            	.attr("text-anchor","middle")
            	.style("fill", "#fff")
            	.style("font-size","13px")
            			.attr("d", d3.svg.arc().outerRadius(r))
            			
            			.each(function(d) { this._current = d; });
            	}
            	
            	gradPie.transition = function(id, data, r) {
            		function arcTween(a) {
            		  var i = d3.interpolate(this._current, a);
            		  this._current = i(0);
            		  return function(t) { return d3.svg.arc().outerRadius(r)(i(t));  };
            		}
            		
            		d3.select("#"+id).selectAll("path").data(pie(data))
            			.transition().duration(750).attrTween("d", arcTween); 
            	}	
            	
            	this.gradPie = gradPie;
            }();
            
            var suiteData=suiteValue;
            d3.select("#pie1").selectAll("svg").remove();
            var loadArrayValue=["PASSED","FAILED","SKIPPED"];
            var svg = d3.select("#pie1").append("svg").attr("width", 400).attr("height", 300).on("click", function (d) {
            				document.getElementById("passFilter").checked  = true;
            				document.getElementById("failFilter").checked  = true;
            				document.getElementById("skipFilter").checked  = true;
            				$(".dropdown-menu li a").parents('.dropdown').find('.dropdown-toggle').html('SCENARIO'+' <span class="caret"></span>');
            				  init('barScenario', loadArrayValue);
            		
            			});
            
            svg.append("g").attr("id","suitepie");
            //svg.append("g").attr("id","quotespie");
            	
            gradPie.draw("suitepie", randomData(), 200, 150, 140);
            //gradPie.draw("quotespie", randomData(), 200, 200, 160);
            function changeData(){
            	gradPie.transition("suitepie", randomData(), 160);
            	
            }
            
            function randomData(){
            	return suiteData.map(function(d){ 
            		return {status:d.status, value:d.value, count:d.count,total:d.total,color:d.color};});
            }
         </script>
         <script>
            !function(){
            	var gradPie={};
            	
            	var pie = d3.layout.pie().sort(null).value(function(d) {return d.value;});
            			
            	createGradientsNew = function(defs, colors, r){	
            		var gradient = defs.selectAll('.gradient')
            			.data(colors).enter().append("radialGradient")
            			.attr("id", function(d,i){return "gradient" + i+1000;})
            			.attr("gradientUnits", "userSpaceOnUse")
            			.attr("cx", "0").attr("cy", "0").attr("r", r).attr("spreadMethod", "pad");
            			
            		gradient.append("stop").attr("offset", "0%").attr("stop-color", function(d){ return d;});
            
            		gradient.append("stop").attr("offset", "30%")
            			.attr("stop-color",function(d){ return d;})
            			.attr("stop-opacity", 1);
            			
            		gradient.append("stop").attr("offset", "70%")
            			.attr("stop-color",function(d){ return "black";})
            			.attr("stop-opacity", 1);
            	}
            	
            	gradPie.draw = function(id, data, cx, cy, r){
            	//d3.select("#"+id).selectAll("defs").remove();
            		var gPie = d3.select("#"+id).append("g")
            			.attr("transform", "translate(" + cx + "," + cy + ")");
            			
            		createGradientsNew(gPie.append("defs"), data.map(function(d){ return d.color; }), 2.5*r);
            		
            		gPie.selectAll("path").data(pie(data))
            			.enter().append("path").attr("fill", function(d,i){ return "url(#gradient"+ i+1000+")";})
            			
            			//pie click
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.style("cursor", "pointer")
            			.each(function(d) { this._current = d; });
            			
            	 gPie.selectAll("text").data(pie(data))
            			.enter().append("text")
            			.attr("transform", function(d) { return "translate(" + labelArc.centroid(d) + ")"; })
            			.attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			.text(function(d) {
            	if(d.data.value > 1){			
            	var resultValue=d.data.value+"% "+"("+d.data.count+" of "+d.data.total+")"
            	return resultValue;
            	}
            	})
            	.attr("text-anchor","middle")
            	.style("fill", "#fff")
            	.style("font-size","13px")
            			.attr("d", d3.svg.arc().outerRadius(r))
            			
            			.each(function(d) { this._current = d; });
            	}
            	
            	gradPie.transition = function(id, data, r) {
            		function arcTween(a) {
            		  var i = d3.interpolate(this._current, a);
            		  this._current = i(0);
            		  return function(t) { return d3.svg.arc().outerRadius(r)(i(t));  };
            		}
            		
            		d3.select("#"+id).selectAll("path").data(pie(data))
            			.transition().duration(750).attrTween("d", arcTween); 
            	}	
            	
            	this.gradPie = gradPie;
            }();
            
            //function pieChartDisplay(suiteValue){
            
            var suiteData=scenarioValue;
            var loadArrayValue=["PASSED","FAILED","SKIPPED"];
            var svg = d3.select("#pie2").append("svg").attr("width", 400).attr("height", 300).on("click", function (d) {
            				document.getElementById("passFilter").checked  = true;
            				document.getElementById("failFilter").checked  = true;
            				document.getElementById("skipFilter").checked  = true;
            				$(".dropdown-menu li a").parents('.dropdown').find('.dropdown-toggle').html('SCENARIO'+' <span class="caret"></span>');
            				  init('barScenario', loadArrayValue);
            		
            			});
            
            svg.append("g").attr("id","scenariopie");
            //svg.append("g").attr("id","quotespie");
            	
            gradPie.draw("scenariopie", randomData(), 200, 150, 140);
            
            function changeData(){
            	gradPie.transition("scenariopie", randomData(), 160);
            	
            }
            
            function randomData(){
            	return suiteData.map(function(d){ 
            		return {status:d.status, value:d.value, count:d.count,total:d.total,color:d.color};});
            }
            //pieChartDisplay(suiteValue);
            
         </script>
         <script>
            !function(){
            	var gradPie={};
            	
            	var pie = d3.layout.pie().sort(null).value(function(d) {return d.value;});
            			
            	createGradientsNew = function(defs, colors, r){	
            		var gradient = defs.selectAll('.gradient')
            			.data(colors).enter().append("radialGradient")
            			.attr("id", function(d,i){return "gradient" + i+2000;})
            			.attr("gradientUnits", "userSpaceOnUse")
            			.attr("cx", "0").attr("cy", "0").attr("r", r).attr("spreadMethod", "pad");
            			
            		gradient.append("stop").attr("offset", "0%").attr("stop-color", function(d){ return d;});
            
            		gradient.append("stop").attr("offset", "30%")
            			.attr("stop-color",function(d){ return d;})
            			.attr("stop-opacity", 1);
            			
            		gradient.append("stop").attr("offset", "70%")
            			.attr("stop-color",function(d){ return "black";})
            			.attr("stop-opacity", 1);
            	}
            	
            	gradPie.draw = function(id, data, cx, cy, r){
            	//d3.select("#"+id).selectAll("defs").remove();
            		var gPie = d3.select("#"+id).append("g")
            			.attr("transform", "translate(" + cx + "," + cy + ")");
            			
            		createGradientsNew(gPie.append("defs"), data.map(function(d){ return d.color; }), 2.5*r);
            		
            		gPie.selectAll("path").data(pie(data))
            			.enter().append("path").attr("fill", function(d,i){ return "url(#gradient"+ i+2000+")";})
            			
            			//pie click
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.style("cursor", "pointer")
            			.each(function(d) { this._current = d; });
            			
            	 gPie.selectAll("text").data(pie(data))
            			.enter().append("text")
            			.attr("transform", function(d) { return "translate(" + labelArc.centroid(d) + ")"; })
            			.attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			.text(function(d) {
            	if(d.data.value > 1){			
            	var resultValue=d.data.value+"% "+"("+d.data.count+" of "+d.data.total+")"
            	return resultValue;
            	}
            	})
            	.attr("text-anchor","middle")
            	.style("fill", "#fff")
            	.style("font-size","13px")
            			.attr("d", d3.svg.arc().outerRadius(r))
            			
            			.each(function(d) { this._current = d; });
            	}
            	
            	gradPie.transition = function(id, data, r) {
            		function arcTween(a) {
            		  var i = d3.interpolate(this._current, a);
            		  this._current = i(0);
            		  return function(t) { return d3.svg.arc().outerRadius(r)(i(t));  };
            		}
            		
            		d3.select("#"+id).selectAll("path").data(pie(data))
            			.transition().duration(750).attrTween("d", arcTween); 
            	}	
            	
            	this.gradPie = gradPie;
            }();
            
            //function pieChartDisplay(suiteValue){
            var suiteData=caseValue;
            var loadArrayValue=["PASSED","FAILED","SKIPPED"];
            var svg = d3.select("#pie3").append("svg").attr("width", 400).attr("height", 300).on("click", function (d) {
            				document.getElementById("passFilter").checked  = true;
            				document.getElementById("failFilter").checked  = true;
            				document.getElementById("skipFilter").checked  = true;
            				$(".dropdown-menu li a").parents('.dropdown').find('.dropdown-toggle').html('SCENARIO'+' <span class="caret"></span>');
            				  init('barScenario', loadArrayValue);
            		
            			});
            
            svg.append("g").attr("id","casepie");
            //svg.append("g").attr("id","quotespie");
            	
            gradPie.draw("casepie", randomData(), 200, 150, 140);
            
            function changeData(){
            	gradPie.transition("casepie", randomData(), 160);
            	
            }
            
            function randomData(){
            	return suiteData.map(function(d){ 
            		return {status:d.status, value:d.value, count:d.count,total:d.total,color:d.color};});
            }
            //pieChartDisplay(suiteValue);
            
         </script>
         <script>
            !function(){
            	var gradPie={};
            	
            	var pie = d3.layout.pie().sort(null).value(function(d) {return d.value;});
            			
            	createGradientsNew = function(defs, colors, r){	
            		var gradient = defs.selectAll('.gradient')
            			.data(colors).enter().append("radialGradient")
            			.attr("id", function(d,i){return "gradient" + i+3000;})
            			.attr("gradientUnits", "userSpaceOnUse")
            			.attr("cx", "0").attr("cy", "0").attr("r", r).attr("spreadMethod", "pad");
            			
            		gradient.append("stop").attr("offset", "0%").attr("stop-color", function(d){ return d;});
            
            		gradient.append("stop").attr("offset", "30%")
            			.attr("stop-color",function(d){ return d;})
            			.attr("stop-opacity", 1);
            			
            		gradient.append("stop").attr("offset", "70%")
            			.attr("stop-color",function(d){ return "black";})
            			.attr("stop-opacity", 1);
            	}
            	
            	gradPie.draw = function(id, data, cx, cy, r){
            	//d3.select("#"+id).selectAll("defs").remove();
            		var gPie = d3.select("#"+id).append("g")
            			.attr("transform", "translate(" + cx + "," + cy + ")");
            			
            		createGradientsNew(gPie.append("defs"), data.map(function(d){ return d.color; }), 2.5*r);
            		
            		gPie.selectAll("path").data(pie(data))
            			.enter().append("path").attr("fill", function(d,i){ return "url(#gradient"+ i+3000+")";})
            			
            			//pie click
            			.attr("d", d3.svg.arc().outerRadius(r))
            			.style("cursor", "pointer")
            			.each(function(d) { this._current = d; });
            			
            	 gPie.selectAll("text").data(pie(data))
            			.enter().append("text")
            			.attr("transform", function(d) { return "translate(" + labelArc.centroid(d) + ")"; })
            			.attr("fill", function(d,i){ return "url(#gradient"+ i+")";})
            			.text(function(d) {
            	if(d.data.value > 1){			
            	var resultValue=d.data.value+"% "+"("+d.data.count+" of "+d.data.total+")"
            	return resultValue;
            	}
            	})
            	.attr("text-anchor","middle")
            	.style("fill", "#fff")
            	.style("font-size","13px")
            			.attr("d", d3.svg.arc().outerRadius(r))
            			
            			.each(function(d) { this._current = d; });
            	}
            	
            	gradPie.transition = function(id, data, r) {
            		function arcTween(a) {
            		  var i = d3.interpolate(this._current, a);
            		  this._current = i(0);
            		  return function(t) { return d3.svg.arc().outerRadius(r)(i(t));  };
            		}
            		
            		d3.select("#"+id).selectAll("path").data(pie(data))
            			.transition().duration(750).attrTween("d", arcTween); 
            	}	
            	
            	this.gradPie = gradPie;
            }();
            
            //function pieChartDisplay(suiteValue){
            var suiteData=stepValue;
            var loadArrayValue=["PASSED","FAILED","SKIPPED"];
            var svg = d3.select("#pie4").append("svg").attr("width", 400).attr("height", 300).on("click", function (d) {
            				document.getElementById("passFilter").checked  = true;
            				document.getElementById("failFilter").checked  = true;
            				document.getElementById("skipFilter").checked  = true;
            				$(".dropdown-menu li a").parents('.dropdown').find('.dropdown-toggle').html('SCENARIO'+' <span class="caret"></span>');
            				  init('barScenario', loadArrayValue);
            		
            			});
            
            svg.append("g").attr("id","steppie");
            //svg.append("g").attr("id","quotespie");
            	
            gradPie.draw("steppie", randomData(), 200, 150, 140);
            
            function changeData(){
            	gradPie.transition("steppie", randomData(), 160);
            	
            }
            
            function randomData(){
            	return suiteData.map(function(d){ 
            		return {status:d.status, value:d.value, count:d.count,total:d.total,color:d.color};});
            }
            //pieChartDisplay(suiteValue);
            
         </script>
         <script src="http://d3js.org/d3.v4.min.js" charset="utf-8"></script>
         <div id="list">
            <div class="container-fluid">
               <div class="row" style="margin-top:12px;">
                  <div class="col-sm-12" style="padding-left:0px;padding-right:0px;">
                     <div class="table-responsive" style="margin-top: -15px;">
                        <table class="table table-bordered">
                           <thead>
                              <tr style="background-color:#3c7aa9;color:white;">
                                 <th class="columnHeader" colspan="4" style="text-align:center;">Suites-Feature</th>
                                 <th class="columnHeader" colspan="4" style="text-align:center;">Scenarios</th>
                                 <#if gherkinValue=='step'>
                                 <th class="columnHeader" colspan="7" style="text-align:center;">Gherkin Steps</th>
                                 <#else>
                                 <th class="columnHeader" colspan="7" style="text-align:center;">Gherkin Actions</th>
                                 </#if>
                              </tr>
                              <tr style="background-color:#99cccc;color:#1e2c42">
                                 <th class="dataAlign textCenterAlign">Name</th>
                                 <th class="dataAlign textCenterAlign">Release</th>
                                 <th class="dataAlign textCenterAlign">Channel</th>
                                 <th class="dataAlign textCenterAlign">Browser</th>
                                 <th class="dataAlign textCenterAlign">Passed</th>
                                 <th class="dataAlign textCenterAlign">Failed</th>
                                 <th class="dataAlign textCenterAlign">Skipped</th>
                                 <th class="dataAlign textCenterAlign">Total</th>
                                 <th class="dataAlign textCenterAlign">Passed</th>
                                 <th class="dataAlign textCenterAlign">Failed</th>
                                 <th class="dataAlign textCenterAlign">Skipped</th>
                                 <th class="dataAlign textCenterAlign">Total</th>
                                 <th class="dataAlign textCenterAlign">Execution</th>
                                 <th class="dataAlign textCenterAlign">Duration</th>
                              </tr>
                           </thead>
                           <tbody>
                              <#list overAllReport as bddReportOutcome>
                              <#assign overAllPassCountScenario=0>
                              <#assign overAllFailCountScenario=0>
                              <#assign overAllPartiallySkipCountScenario=0>	
                              <#assign overAllSkipCountScenario=0>	
                              <#assign totalScenario=0>	
                              <#assign stepdefPassCount=0>
                              <#assign stepdefFailCount=0>
                              <#assign stepdefSkipCount=0>
                              <#assign stepdefPartiallySkippedCount=0>
                              <#assign totalSteps=0>	
                              <#assign resultColor="">
                              <#list bddReportOutcome as reportforScenario>
                              <#if reportforScenario.stepsCount==1>
                              <#--  <#if reportforScenario.bddDefExecutionInstance.status=='PASS'>
                              -->
                              <#if reportforScenario.bddDefExecutionInstance.status=='PARTIALLY SKIPPED'>
                              <#assign overAllPartiallySkipCountScenario=overAllPartiallySkipCountScenario+1>
                              <#elseif reportforScenario.bddDefExecutionInstance.status=='UNDEFINED'>
                              <#assign overAllSkipCountScenario=overAllSkipCountScenario+1>
                              <#elseif reportforScenario.bddDefExecutionInstance.status=='FAIL'>
                              <#assign overAllFailCountScenario=overAllFailCountScenario+1>
                              <#else>
                              <#assign overAllPassCountScenario=overAllPassCountScenario+1>
                              </#if>
                              </#if>
                              <#if reportforScenario.scenarioStatus=='UNDEFINED'>
                              <#assign stepdefPartiallySkippedCount=stepdefPartiallySkippedCount+1>
                              <#elseif reportforScenario.scenarioStatus=='SKIPPED'>
                              <#assign stepdefSkipCount=stepdefSkipCount+1>
                              <#elseif reportforScenario.scenarioStatus=='FAIL'>
                              <#assign stepdefFailCount=stepdefFailCount+1>
                              <#else>
                              <#assign stepdefPassCount=stepdefPassCount+1>		   
                              </#if>
                              </#list>
                              <#assign exceutiveReportBasedOn = EXECUTIVE_OVERALL_PASS_PERCENTAGE_BASED_ON?lower_case>
                              <#assign testStepFailCount=0>
                              <#assign testStepPassCount=0>
                              <#assign testStepSkipCount=0>
                              <#list bddReportOutcome as reportGraph>
                              <#assign flagForFail="false">
                              <#assign flagForPass="false">
                              <#list reportGraph.testStepInstanceNew as testStepsValue>
                              <#if testStepsValue.state??>
                              <#if testStepsValue.state=='FAILED'>
                              <#assign testStepFailCount=testStepFailCount+1>
                              <#assign flagForFail="true">
                              <#elseif testStepsValue.state=='SKIPPED' || testStepsValue.state=='UNDEFINED'>
                              <#assign testStepSkipCount=testStepSkipCount+1>
                              <#assign flagForFail="true">
                              <#elseif testStepsValue.state=='TC TERMINATED' || testStepsValue.state=='SCN TERMINATED' || testStepsValue.state=='SUITE TERMINATED' >
                              <#assign testStepFailCount=testStepFailCount+1>
                              <#assign flagForFail="true">
                              <#elseif testStepsValue.state=='PASSED' >
                              <#assign testStepPassCount=testStepPassCount+1>
                              <#assign flagForPass="true">
                              </#if>
                              </#if>
                              </#list>
                              <#-- Added for making failed scenario to have atleast one failed action starts here 
                              <#if flagForFail=='false' && reportGraph.scenarioStatus=='FAIL'>
                              <#assign testStepFailCount=testStepFailCount+1>
                              </#if>-->
                              <#-- ends here -->
                              <#-- Added for making passed scenario to have atleast one passed action starts here -->
                              <#if flagForPass=='false' && reportGraph.scenarioStatus=='PASS' && reportGraph.testStepInstanceNew?size gt 0>
                              <#assign testStepPassCount=testStepPassCount+1>
                              </#if>
                              <#-- ends here -->
                              </#list>
                              <#assign totalSteps=stepdefPassCount+stepdefFailCount+stepdefPartiallySkippedCount+stepdefSkipCount>	
                              <#assign totalScenario=overAllPassCountScenario+overAllFailCountScenario+overAllPartiallySkipCountScenario+overAllSkipCountScenario>
                              <#if exceutiveReportBasedOn=='step'>
                              <#assign overAllPassPercentage=overAllPassPercentage+stepdefPassCount>
                              <#assign overAllFailPercentage=overAllFailPercentage+stepdefFailCount>
                              <#assign overAllTotalPercentage=overAllTotalPercentage+totalSteps>
                              <#elseif exceutiveReportBasedOn=='action'>
                              <#assign overAllPassPercentage=overAllPassPercentage+testStepPassCount>
                              <#assign overAllFailPercentage=overAllFailPercentage+testStepFailCount>
                              <#assign overAllTotalPercentage=overAllTotalPercentage+testStepPassCount+testStepFailCount>
                              <#elseif exceutiveReportBasedOn=='scenario'>
                              <#assign overAllPassPercentage=overAllPassPercentage+overAllPassCountScenario>
                              <#assign overAllFailPercentage=overAllFailPercentage+overAllFailCountScenario>
                              <#assign overAllTotalPercentage=overAllTotalPercentage+totalScenario>
                              </#if>
                              <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
                              <#assign execution=execution*100>
                              <#if execution lt 100>
                              <#assign skipped=true>
                              <#else>
                              <#assign skipped=false>
                              </#if>
                              <#if overAllFailCountScenario gt 0>
                              <#assign resultColor="color_fail">
                              <#elseif overAllPassCountScenario==totalScenario>
                              <#assign resultColor="color_pass">
                              <#else>
                              <#assign resultColor="color_amber">
                              </#if>
                              <#if skipped==true>
                              <tr style="background-color:#e0e8ef">
                                 <#elseif resultColor?contains("pass")>
                              <tr style="background-color:#ebffeb">
                                 <#elseif resultColor?contains("fail")>
                              <tr style="background-color:#fff0f0">
                                 <#else>
                              <tr style="background-color:#faffdc">
                                 </#if>
                                 <#list bddReportOutcome as reportforScenario>
                                 <#if reportforScenario_index==0>
                                 <#if skipped==true>
                                 <td class="color_skip">
                                    <a href="${reportforScenario.suiteName}_${reportforScenario.featureId}.html?type=listVType"><div style="height:100%;width:100%;color:white;font-size: 18px;">${reportforScenario.suiteName}_${reportforScenario.featureId}</div></a>
                                 </td>
                                 <#else>
                                 <td class="${resultColor}">
                                    <a href="${reportforScenario.suiteName}_${reportforScenario.featureId}.html?type=listVType"><div style="height:100%;width:100%;color:white;font-size: 18px;">${reportforScenario.suiteName}_${reportforScenario.featureId}</div></a>
                                 </td>
                                 </#if>
                                 <td>
                                    ${reportforScenario.release}
                                 </td>
                                 <td>
                                    ${reportforScenario.channel}
                                 </td>
                                 <td>
                                    ${reportforScenario.browser}
                                 </td>
                                 </#if>
                                 </#list> 
                                 <#if overAllPassCountScenario gt 0>
                                 <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                                    ${overAllPassCountScenario} [${passPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                                    ${overAllPassCountScenario}
                                 </td>
                                 </#if>
                                 <#if overAllFailCountScenario gt 0>
                                 <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                                    ${overAllFailCountScenario} [${failPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                                    ${overAllFailCountScenario}
                                 </td>
                                 </#if>
                                 <#if overAllPartiallySkipCountScenario gt 0 || overAllSkipCountScenario gt 0>  
                                 <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign partialPercentage=(overAllPartiallySkipCountScenario+overAllSkipCountScenario)/totalScenario*100>
                                    ${overAllPartiallySkipCountScenario+overAllSkipCountScenario} [${partialPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    0
                                 </td>
                                 </#if>
                                 <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    ${totalScenario}
                                 </td>
                                 <#if EXECUTIVE_REPORT_BASED_ON?lower_case=='step'>
                                 <#if stepdefPassCount gt 0>
                                 <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign stepPass=stepdefPassCount/totalSteps*100>
                                    ${stepdefPassCount} [${stepPass?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    <#assign stepPass=stepdefPassCount/totalSteps*100>
                                    ${stepdefPassCount}
                                 </td>
                                 </#if>
                                 <#if stepdefFailCount gt 0>
                                 <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign stepFail=stepdefFailCount/totalSteps*100>
                                    ${stepdefFailCount} [${stepFail?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    <#assign stepFail=stepdefFailCount/totalSteps*100>
                                    ${stepdefFailCount}
                                 </td>
                                 </#if>
                                 <#if stepdefSkipCount gt 0 || stepdefPartiallySkippedCount gt 0> 
                                 <#assign stepSkip=(stepdefSkipCount+stepdefPartiallySkippedCount)/totalSteps*100>
                                 <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">${stepdefSkipCount+stepdefPartiallySkippedCount} [${stepSkip?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">0
                                 </td>
                                 </#if>
                                 <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">${totalSteps}</td>
                                 <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
                                 <#assign overallExecutionRate=overallExecutionRate+execution>
                                 <#assign count=count+1>
                                 <#assign execution=execution*100>
                                 <#if skipped==true>
                                 <td class="keyValues bandwidth" style="color:#56aff1;min-width: 20px;max-width: 100px;width: 20px;" >${execution?round}%</td>
                                 <#else>
                                 <td class="keyValues bandwidth"style="min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                                 </#if>
                                 <#else>
                                 <#assign noOfSteps=testStepPassCount+testStepFailCount+testStepSkipCount>
                                 <#if testStepPassCount gt 0>
                                 <td class="result_pass keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign stepPass=testStepPassCount/noOfSteps*100>
                                    ${testStepPassCount} [${stepPass?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    0
                                 </td>
                                 </#if>
                                 <#if testStepFailCount gt 0>
                                 <td class="result_fail keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">
                                    <#assign stepFail=testStepFailCount/noOfSteps*100>
                                    ${testStepFailCount} [${stepFail?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">
                                    0
                                 </td>
                                 </#if>
                                 <#if testStepSkipCount gt 0> 
                                 <#assign stepSkip=testStepSkipCount/noOfSteps*100>
                                 <td class="keyValues bandwidth result_skip" style="min-width: 20px;max-width: 100px;width: 20px;">${testStepSkipCount} [${stepSkip?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues" style="width: 20px;">0
                                 </td>
                                 </#if>
                                 <td class="keyValues" style="min-width: 20px;max-width: 100px;width: 20px;">${noOfSteps}</td>
                                 <#if noOfSteps gt 0>
                                 <#assign execution=(testStepPassCount+testStepFailCount)/noOfSteps>
                                 <#assign overallExecutionRate=overallExecutionRate+execution>
                                 <#assign count=count+1>
                                 <#assign execution=execution*100>
                                 <#if skipped==true>
                                 <td class="keyValues bandwidth" style="color:#56aff1;min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                                 <#else>
                                 <td class="keyValues bandwidth" style="min-width: 20px;max-width: 100px;width: 20px;">${execution?round}%</td>
                                 </#if>
                                 <#else>
                                 <td class="keyValues bandwidth" style="width: 20px;">0%</td>
                                 </#if>
                                 </#if>
                                 <#list bddReportOutcome as reportforScenario>
                                 <#if reportforScenario_index==0>
                                 <#assign durationHours=reportforScenario.duration?replace(" Hours ", ":")>
                                 <#assign durationMins=durationHours?replace(" Mins ", ":")>
                                 <#assign durationOverall=durationMins?replace(" Secs", "")>
                                 <#assign timeTaken="">
                                 <#assign sizeDuration=durationOverall?split(":")?size>
                                 <#list durationOverall?split(":") as x>
                                 <#if x?number gt 9>
                                 <#assign timeTaken=timeTaken+x>
                                 <#else>
                                 <#assign timeTaken=timeTaken+"0"+x>
                                 </#if>
                                 <#if x_index gt -1 && x_index!=sizeDuration-1>
                                 <#assign timeTaken=timeTaken+":">
                                 </#if>
                                 </#list>
                                 <td class="keyValues">${timeTaken}</td>
                                 </#if>
                                 </#list>
                              </tr>
                              </#list>
                           </tbody>
                        </table>
                        <div class="padding" style="padding: 0px 0px 50px 0px;display: hidden">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
       <#--    <#if exceutiveReportBasedOn=='feature'>
         <#if totalFeature gt 0>
         <#assign overallPassRateftl=overAllPassCountFeature/totalFeature*100>
         <#else>
         <#assign overallPassRateftl=0>
         </#if>
         <#else>
         <#if overAllTotalPercentage gt 0>
         <#assign overallPassRateftl=overAllPassPercentage/overAllTotalPercentage*100>
         <#else>
         <#assign overallPassRateftl=0>
         </#if>
         </#if>  -->
         <#if overallPassRateftl??>	
         <#assign overallPassRateftl=overallPassRateftl?replace("%", "")?trim?number>
         <#if overallPassRateftl gte passPercentageThreshold?number >
         <#assign result='result_pass'>
         <#elseif overallPassRateftl lte failPercentageThreshold?number >
         <#assign result='result_fail'>
         <#else>
         <#assign result='result_amber'>
         </#if>
         </#if>
         <div id="box" style="margin-top:-10px;style="display:none">
            <div class="container-fluid">
               <div class="row" style="margin-top:12px;">
                  <div class="col-sm-12" style="padding-left:0px;padding-right:0px;">
                     <#list overAllReport as bddReportOutcome>
                     <#assign i=overAllReport?size>
                     <#assign overAllPassCountScenario=0>
                     <#assign overAllFailCountScenario=0>
                     <#assign overAllPartiallySkipCountScenario=0>	
                     <#assign overAllSkipCountScenario=0>	
                     <#assign totalScenario=0>	
                     <#assign stepdefPassCount=0>
                     <#assign stepdefFailCount=0>
                     <#assign stepdefSkipCount=0>
                     <#assign stepdefPartiallySkippedCount=0>
                     <#assign totalSteps=0>	
                     <#assign resultColor="">
                     <#list bddReportOutcome as reportforScenario>
                     <#if reportforScenario.stepsCount==1>
                     <#if reportforScenario.bddDefExecutionInstance.status=='PASS'>
                     <#assign overAllPassCountScenario=overAllPassCountScenario+1>
                     <#elseif reportforScenario.bddDefExecutionInstance.status=='FAIL'>
                     <#assign overAllFailCountScenario=overAllFailCountScenario+1>
                     <#elseif reportforScenario.bddDefExecutionInstance.status=='PARTIALLY SKIPPED'>
                     <#assign overAllPartiallySkipCountScenario=overAllPartiallySkipCountScenario+1>
                     <#elseif reportforScenario.bddDefExecutionInstance.status=='UNDEFINED'>
                     <#assign overAllSkipCountScenario=overAllSkipCountScenario+1>
                     </#if>
                     </#if>
                     <#if reportforScenario.scenarioStatus=='FAIL'>
                     <#assign stepdefFailCount=stepdefFailCount+1>
                     <#elseif reportforScenario.scenarioStatus=='UNDEFINED'>
                     <#assign stepdefPartiallySkippedCount=stepdefPartiallySkippedCount+1>
                     <#elseif reportforScenario.scenarioStatus=='SKIPPED'>
                     <#assign stepdefSkipCount=stepdefSkipCount+1>
                     <#else>
                     <#assign stepdefPassCount=stepdefPassCount+1>		   
                     </#if>
                     </#list>
                     <#assign testStepFailCount=0>
                     <#assign testStepPassCount=0>
                     <#list bddReportOutcome as reportGraph>
                     <#assign flagForFail="false">
                     <#assign flagForPass="false">
                     <#list reportGraph.testStepInstanceNew as testStepsValue>
                     <#if testStepsValue.state??>
                     <#if testStepsValue.state=='FAILED' || testStepsValue.state=='SKIPPED'>
                     <#assign testStepFailCount=testStepFailCount+1>
                     <#assign flagForFail="true">
                     <#elseif testStepsValue.state=='TC TERMINATED' || testStepsValue.state=='SCN TERMINATED' || testStepsValue.state=='SUITE TERMINATED' >
                     <#assign testStepFailCount=testStepFailCount+1>
                     <#assign flagForFail="true">
                     <#elseif testStepsValue.state=='PASSED' >
                     <#assign testStepPassCount=testStepPassCount+1>
                     <#assign flagForPass="true">
                     </#if>
                     </#if>
                     </#list>
                     <#-- Added for making failed scenario to have atleast one failed action starts here 
                     <#if flagForFail=='false' && reportGraph.scenarioStatus=='FAIL'>
                     <#assign testStepFailCount=testStepFailCount+1>
                     </#if>-->
                     <#-- ends here -->
                     <#-- Added for making passed scenario to have atleast one passed action starts here -->
                     <#if flagForPass=='false' && reportGraph.scenarioStatus=='PASS' && reportGraph.testStepInstanceNew?size gt 0>
                     <#assign testStepPassCount=testStepPassCount+1>
                     </#if>
                     <#-- ends here -->
                     </#list>
                     <#assign totalActions=testStepPassCount+testStepFailCount>
                     <#assign totalSteps=stepdefPassCount+stepdefFailCount+stepdefPartiallySkippedCount+stepdefSkipCount>	
                     <#assign totalScenario=overAllPassCountScenario+overAllFailCountScenario+overAllPartiallySkipCountScenario+overAllSkipCountScenario>
                     <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
                     <#assign execution=execution*100>
                     <#if execution lt 100>
                     <#assign skipped=true>
                     <#else>
                     <#assign skipped=false>
                     </#if>
                     <#if overAllFailCountScenario gt 0>
                     <#assign resultColor="color_fail">
                     <#elseif overAllPassCountScenario==totalScenario>
                     <#assign resultColor="color_pass">
                     <#else>
                     <#assign resultColor="color_amber">
                     </#if>
                     <#assign exceutiveReportBasedOn = EXECUTIVE_REPORT_BASED_ON?lower_case>
                     <div class="col-sm-4" style="padding-left:5px;padding-right:5px;">
                        <table class="table table-hover text-center" style="height:360px;">
                           <#list bddReportOutcome as reportforScenario>
                           <#if reportforScenario_index==0>
                           <thead>
                              <#if skipped==true>
                              <th class="color_skip headerAlignment" colspan="2">
                                 <#else>
                              <th class="${resultColor} headerAlignment" colspan="2">
                                 </#if>   
                                 <a href="${reportforScenario.suiteName}_${reportforScenario.featureId}.html?type=boxVType">
                                    <div style="color:white;text-align:center;font-size:20px;line-height: 1;display: table;white-space: pre-wrap;white-space: -moz-pre-wrap;white-space: -pre-wrap;white-space: -o-pre-wrap;word-wrap: break-word;word-break: break-all;">${reportforScenario.suiteName}_${reportforScenario.featureId}</div>
                                 </a>
                              </th>
                           </thead>
                           <tbody>
                              <tr>
                                 <th>Release</th>
                                 <td>${reportforScenario.release}</td>
                              </tr>
                              <tr>
                                 <th>Desktop</th>
                                 <#if reportforScenario.browser=="">
                                 <td>${reportforScenario.channel}</td>
                                 <#else>
                                 <td>${reportforScenario.channel}/${reportforScenario.browser}</td>
                                 </#if>
                              </tr>
                              <tr>
                                 <th>Successful Scenario</th>
                                 <#if overAllPassCountScenario gt 0>
                                 <#assign passScenario=overAllPassCountScenario/totalScenario*100>
                                 <td class="specialRow">${overAllPassCountScenario} of ${totalScenario} [${passScenario?round}%]</td>
                                 <#else>
                                 <td>${overAllPassCountScenario} of ${totalScenario}</td>
                                 </#if>
                              </tr>
                              <tr>
                                 <th>Successful ${EXECUTIVE_REPORT_BASED_ON?capitalize}</th>
                                 <#if exceutiveReportBasedOn=='step'>
                                 <#if stepdefPassCount gt 0>
                                 <#assign stepPassPercentage=stepdefPassCount/totalSteps*100>
                                 <td class="specialRow">${stepdefPassCount} of ${totalSteps} [${stepPassPercentage?round}%]</td>
                                 <#else>
                                 <td>${stepdefPassCount} of ${totalSteps}</td>
                                 </#if>
                                 <#else>
                                 <#if testStepPassCount gt 0>
                                 <#assign testStepPassPercentage=testStepPassCount/totalActions*100>
                                 <td class="specialRow">${testStepPassCount} of ${totalActions} [${testStepPassPercentage?round}%]</td>
                                 <#else>
                                 <td>${testStepPassCount} of ${totalActions}</td>
                                 </#if>
                                 </#if>
                              </tr>
                              <tr>
                                 <th>${EXECUTIVE_REPORT_BASED_ON?capitalize} Execution</th>
                                 <#if exceutiveReportBasedOn=='step'>
                                 <#if totalSteps gt 0>
                                 <#assign executionBox=(stepdefPassCount+stepdefFailCount)/totalSteps>
                                 <#else>
                                 <#assign executionBox=0>
                                 </#if>
                                 <#else>
                                 <#if totalActions gt 0>
                                 <#assign executionBox=(testStepPassCount+testStepFailCount)/totalActions>
                                 <#else>
                                 <#assign executionBox=0>
                                 </#if>
                                 </#if>
                                 <#assign executionBoxPercentage=executionBox*100>
                                 <#if skipped==true>
                                 <td style="color:#56aff1">${executionBoxPercentage?round}%</td>
                                 <#else>
                                 <td>${executionBoxPercentage?round}%</td>
                                 </#if>
                              </tr>
                              <tr>
                                 <th>Duration</th>
                                 <td>${reportforScenario.duration}</td>
                              </tr>
                           </tbody>
                           </#if>
                           </#list>
                        </table>
                        <#if i==(bddReportOutcome_index+1)>
                        <div class="padding" style="padding: 0px 0px 50px 0px">
                        </div>
                        </#if>
                     </div>
                     </#list>	
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div>
         <button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
      </div>
      <div class="footer-bottom ${result}">
         <div class="col-sm-4 ">
            <#if result=='result_pass'>
            <span style="float:left;font-size:22px;">Execution Successful!!!</span>
            <#elseif result=='result_fail'>
            <span style="float:left;font-size:22px;">FAILED!!</span>
            <#else>
            <span style="float:left;font-size:22px;">Warning!!</span>
            </#if>
         </div>
         <div class="col-sm-4 ">
            <div style="text-align:center;font-size:22px;">${EXECUTIVE_OVERALL_PASS_PERCENTAGE_BASED_ON} Pass Rate :${overallPassRateftl?string["0.##"]}%</div>
         </div>
         <div class="col-sm-4 ">
            <#if count==0>
            <#assign count=1>
            </#if>
            <#assign overallExecutionRatePercentage=overallExecutionRate/count*100>
            <span style="float:right;font-size:22px;" id="makeTop">${EXECUTIVE_REPORT_BASED_ON} Execution Rate :${overallExecutionRatePercentage?string["0.##"]}%</span>
         </div>
      </div>
      <script nomodule>
         //alert("NO Support for Module");
         document.getElementById("errorExecutiveGraph").style.display = "block";
         document.getElementById("chart").style.display = "none";
      </script>
      <script type="module">
         document.getElementById("errorExecutiveGraph").style.display = "none";
                  document.getElementById("chart").style.display = "block";
                  import {Inspector, Runtime} from "https://unpkg.com/@observablehq/notebook-runtime@1?module";
         
         const m0 = {
         id: "86ddbc29bd33f9d6@332",
         variables: [
          {
            name: "chart",
            inputs: ["partition","data","d3","DOM","width","color","arc","format","radius"],
            value: (function(partition,data,d3,DOM,width,color,arc,format,radius)
         {
         const root = partition(data);
         
         root.each(d => d.current = d);
         var startingValue=95;
         var passThresholdPercentage=${passPercentageThreshold};
         var failThresholdPercentage=${failPercentageThreshold};
         if(startingValue < passThresholdPercentage){
         startingValue=passThresholdPercentage;
         }
         const svg = d3.select("#chart").append("svg")
            .style("width", "620px")
            .style("height", "600px")
            .style("font", "8px sans-serif");
         
         const g = svg.append("g")
            .attr("transform", ${widthSize})
            .on("mouseleave",mouseleave);
         const path = g.append("g")
          .selectAll("path")
          .data(root.descendants().slice(1))
          .join("path")
          
          .attr("fill", function(d) { 
                  			            if(d.parent){
                  						
                  						if(d.depth==1){
                  						if(d.data.SKIPPED == 100){
                  			            return '#56aff1';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage && d.data.PASSED >=startingValue){
                  			            return '#005A00';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage){
                  			            return '#28783C';
                  			            }
                  					    else if(d.data.PASSED < passThresholdPercentage && d.data.PASSED > failThresholdPercentage){
                  			            return '#D07C00';
                  			            } 
                  			            else if(d.data.PASSED <= failThresholdPercentage){
                  			            return '#B40000';
                  			            }
                  			            
                  						}
                  						if(d.depth==2){
                  						if(d.data.SKIPPED == 100){
                  			            return '#56aff1';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage && d.data.PASSED >=startingValue){
                  			            return '#008C00';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage){
                  			            return '#3CBE50';
                  			            }
                  					    else if(d.data.PASSED < passThresholdPercentage && d.data.PASSED > failThresholdPercentage){
                  			            return '#FF9900';
                  			            } 
                  			            else if(d.data.PASSED <= failThresholdPercentage){
                  			            return '#E61E1E';
                  			            }
                  						}
                  						if(d.depth==3){
                  						if(d.data.SKIPPED == 100){
                  			            return '#56aff1';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage && d.data.PASSED >=startingValue){
                  			            return '#00DC00';
                  			            }
                  			            else if(d.data.PASSED >= passThresholdPercentage){
                  			            return '#1EEB6E';
                  			            }
                  					    else if(d.data.PASSED < passThresholdPercentage && d.data.PASSED > failThresholdPercentage){
                  			            return '#FFC000';
                  			            } 
                  			            else if(d.data.PASSED <= failThresholdPercentage){
                  			            return '#FF0000';
                  			            }
                  						}
                  						if(d.depth==4){
                  						if(d.data.name==='PASSED'){
                  			            return '#00FF00';
                  			            }
                  			            else{
                  			           	return '#56aff1';
                  			            }
                  						}
                  			            }                  		 
                                  		 })
          
          
          
                  .attr("fill-opacity", d => arcVisible(d.current) ? (d.children ? 1 : 1) : 0)
            .attr("d", d => arc(d.current))
         .on("mouseover",mouseover);
         path.filter(d => d.children)
            .style("cursor", "pointer")
            .on("click", clicked);
         
         path.append("title")
            .text(d =>${showTip});
                  
         const label = g.append("g")
            .attr("pointer-events", "none")
            .attr("text-anchor", "middle")
            .style("user-select", "none")
          .selectAll("text")
          .data(root.descendants().slice(1))
          .join("text")
            .attr("dy", "0.35em")
         .attr("fill","white")
            .attr("fill-opacity", d => +labelVisible(d.current))
            .attr("transform", d => labelTransform(d.current))
            .text(d => d.data.name);
         //percentage text
                    const percentage_text=svg.append("text")
                        .attr("id","title")
                        .attr("x", (width / 2))             
                          .attr("y", (width / 2))
                          .attr("text-anchor", "middle") 
                          .attr("fill","green")  
                  .style("font-weight","bold") 
                          .style("font-size", "2.5em")
                          .text("Failed");
                    const percentage_text_fail=svg.append("text")
                        .attr("id","title")
                        .attr("x", (width / 2))             
                          .attr("y", (width / 2)-40)
                          .attr("text-anchor", "middle") 
                          .attr("fill","red")  
                  .style("font-weight","bold") 
                          .style("font-size", "2.5em")
                          .text("Passed"); 
                    const percentage_text_skip=svg.append("text")
                        .attr("id","title")
                        .attr("x", (width / 2))             
                          .attr("y", (width / 2)+40)
                          .attr("text-anchor", "middle") 
                          .attr("fill","blue")  
                  .style("font-weight","bold") 
                          .style("font-size", "2.5em")
                          .text("Skipped");
         const parent = g.append("circle")
            .datum(root)
            .attr("r", radius)
            .attr("fill", "none")
            .attr("pointer-events", "all")
         .attr("cursor","pointer")	
            .on("click", clicked);
         
         function clicked(p) {
          parent.datum(p.parent || root);
         
          root.each(d => d.target = {
            x0: Math.max(0, Math.min(1, (d.x0 - p.x0) / (p.x1 - p.x0))) * 2 * Math.PI,
            x1: Math.max(0, Math.min(1, (d.x1 - p.x0) / (p.x1 - p.x0))) * 2 * Math.PI,
            y0: Math.max(0, d.y0 - p.depth),
            y1: Math.max(0, d.y1 - p.depth)
          });
         
          const t = g.transition().duration(750);
         
          // Transition the data on all arcs, even the ones that aren’t visible,
          // so that if this transition is interrupted, entering arcs will start
          // the next transition from the desired position.
          path.transition(t)
              .tween("data", d => {
                const i = d3.interpolate(d.current, d.target);
                return t => d.current = i(t);
              })
            .filter(function(d) {
              return +this.getAttribute("fill-opacity") || arcVisible(d.target);
            })
              .attr("fill-opacity", d => arcVisible(d.target) ? (d.children ? 1 : 1) : 0)
              .attrTween("d", d => () => arc(d.current));
         
          label.filter(function(d) {
              return +this.getAttribute("fill-opacity") || labelVisible(d.target);
            }).transition(t)
              .attr("fill-opacity", d => +labelVisible(d.target))
              .attrTween("transform", d => () => labelTransform(d.current));
         }
         //mouse over
                    //const totalSize = root.descendants()[0].value;
                    function mouseover(d){
                  if(d.data.COUNTPASSED){
                      //var percentage = (100 * d.value / totalSize).toPrecision(3);
                  var percentage =d.data.COUNTPASSED;
                      var percentageString = percentage + "%";
                      
                        percentage_text.text(percentageString);
                  	  percentage_text_fail.text("");
                  	  percentage_text_skip.text("");
                  
                  }
                  else{
                  var percentage =d.data.PASSED;
                  var percentageString = percentage + "%";
                  
                  var percentageFail =d.data.FAILED;
                  var percentageStringFail = percentageFail + "%";
                  
                  var percentageSkip =d.data.SKIPPED;
                  var percentageStringSkip = percentageSkip + "%";
                      
                       percentage_text.text(percentageString);
                       percentage_text_fail.text(percentageStringFail);
                       percentage_text_skip.text(percentageStringSkip);
                  
                  }
                  
                      var sequenceArray = d.ancestors().reverse();
                      sequenceArray.shift(); // remove root node from the array
                      // Fade all the segments.
                      d3.selectAll("path")
                          .style("opacity", 1);
                  
                      // Then highlight only those that are an ancestor of the current segment.
                      g.selectAll("path")
                          .filter(function(node) {
                                    return (sequenceArray.indexOf(node) >= 0);
                                  })
                          .style("opacity", 1);
                          
                          
                      var count=0;
         		d3.select("#sequence")
         		  .selectAll("path")
         		  .data(sequenceArray, function(d) { return d.name ; })
         		  .join("path")
         		  //.join('/')
         		 // .style("fill", function(d) { return (d.parent && d.depth > 2) ? ((d.depth == 3) ? d3.rgb(colors[d.parent.name]).brighter(0.4) : d3.rgb(colors[d.parent.parent.name]).brighter(0.8)) : colors[d.name]; })
         		  //.attr("fill", function (d) { return colors[d.name]; })
         		  .style("color",function(d) { 
                  			            if(d.parent){
                  
                  						
                  			            if(d.data.PASSED >= 98 && d.data.SKIPPED == 0){
                  			            return '#006f00';
                  			            }
                  					    else if(d.data.PASSED >= 90 && d.data.SKIPPED == 0){
                  			            return '#349334';
                  			            } 
                  			            else if(d.data.PASSED >= 85 && d.data.SKIPPED == 0){
                  			            return '#6ac56a';
                  			            }
                  						else if(d.data.PASSED >=75 && d.data.SKIPPED == 0){
                  			            return '#ffc414';
                  			            } 
                  							
                  						else if(d.data.PASSED >=65 && d.data.SKIPPED == 0){
                  			            return '#f56464';
                  			            }
                  						else if(d.data.PASSED >=50 && d.data.SKIPPED == 0){
                  			            return '#f00000';
                  			            }
                  						
                  						else if(d.data.PASSED >=0 && d.data.SKIPPED == 0){
                  			            return '#c11d1d';
                  			            }
                  			            else if(d.data.SKIPPED >= 90){
                  			            return '#56aff1';
                  			            }
                  						else if(d.data.SKIPPED >= 50){
                  			            return '#86c3f1';
                  			            }
                  						else if(d.data.SKIPPED >= 0){
                  			            return '#c3e0f7';
                  			            }
                  						else if(d.data.count){
                  
                  			            if(d.data.name==='PASSED'){
                  
                  			            return '#006f00';
                  			            }
                  			            else{
                  			           return '#B0E0E6';
                  			            }
                  			            }
                  			            }
                  			            if(d.children){
                  			            
                  			            if(d.data.PASSED >= 98 && d.data.SKIPPED == 0){
                  			            return '#006f00';
                  			            }
                  					    else if(d.data.PASSED >= 90 && d.data.SKIPPED == 0){
                  			            return '#349334';
                  			            } 
                  			            else if(d.data.PASSED >= 85 && d.data.SKIPPED == 0){
                  			            return '#6ac56a';
                  			            }
                  						else if(d.data.PASSED >=75 && d.data.SKIPPED == 0){
                  			            return '#ffc414';
                  			            } 
                  							
                  						else if(d.data.PASSED >=65 && d.data.SKIPPED == 0){
                  			            return '#f56464';
                  			            }
                  						else if(d.data.PASSED >=50 && d.data.SKIPPED == 0){
                  			            return '#f00000';
                  			            }
                  						
                  						else if(d.data.PASSED >=0 && d.data.SKIPPED == 0){
                  			            return '#c11d1d';
                  			            }
                  			            else if(d.data.SKIPPED >= 90){
                  			            return '#56aff1';
                  			            }
                  						else if(d.data.SKIPPED >= 50){
                  			            return '#86c3f1';
                  			            }
                  						else if(d.data.SKIPPED >= 0){
                  			            return '#c3e0f7';
                  			            }
                  						else if(d.data.count){
                  
                  			            if(d.data.name==='PASSED'){
                  
                  			            return '#006f00';
                  			            }
                  			            else{
                  			           return '#B0E0E6';
                  			            }
                  			            }
                  			            }
                             		 })
         		  
         		  .text(d =>{
         		  var value;
         		  if(count==0){
         		  value=d.data.name;
         		  }
         		  else{
         		  value=">>"+d.data.name;
         		  } 
         		  count=count+1;
         		  return value;
         		  });	
         	var selection=d3.select("#sequence0")
         		  .selectAll("path")
         		  .data(sequenceArray, function(d) { return d.name+"\n" ; });
         		  d3.selectAll("#suite")
         		  .text("");
         		  d3.selectAll("#scenario")
         		  .text("");
         		  d3.selectAll("#case")
         		  .text("");
         		  d3.selectAll("#step")
         		  .text("");
         		  update(selection);
                    }
           
           function update(valueReq){
           document.getElementById("suite").style.visibility="hidden";
           document.getElementById("scenario").style.visibility="hidden";
           document.getElementById("case").style.visibility="hidden";
           document.getElementById("step").style.visibility="hidden";
           
           var len = valueReq.enter().text(0).data(0).length;
           var suite="";
           var scn="";
           var tc="";
           var ts="";
         	    if (len>3)
         		ts = valueReq.enter().text(0).data(0)[3].data.name
         		
         		if (len>2)
         		 tc = valueReq.enter().text(0).data(0)[2].data.name;
         	
         		if (len>1)
         		scn=valueReq.enter().text(0).data(0)[1].data.name;
         		
         		if (len>0)
         		suite=valueReq.enter().text(0).data(0)[0].data.name;
          
         		  if(suite){
         			document.getElementById("suite").style.visibility="visible";
         			d3.select("#suite").style("background-color","pink").text(suite);
         		  }
         		  if(scn){
         			document.getElementById("scenario").style.visibility="visible";
         		    d3.select("#scenario").style("background-color","lightblue").text(scn);
         		  }
         		  if(tc){
         			document.getElementById("case").style.visibility="visible";
         		    d3.select("#case").style("background-color","lightgreen").text(tc);
         		  }
         		  if(ts){
         			document.getElementById("step").style.visibility="visible";
         		    d3.select("#step").style("background-color","orange").text(ts);
         		  }
          }
                      function mouseleave(d) {
                        //document.getElementById("suite").style.visibility="hidden";
         	  //document.getElementById("scenario").style.visibility="hidden";
         	  //document.getElementById("case").style.visibility="hidden";
         	  //document.getElementById("step").style.visibility="hidden";
                        //percentage_text.text("${overallPassRateftl?string["0.##"]}%");
                        percentage_text.text("");
                        percentage_text_fail.text("");
                  	  percentage_text_skip.text("");
                      }
         
         function arcVisible(d) {
          return d.y1 <= 4 && d.y0 >= 1 && d.x1 > d.x0;
         }
         
         function labelVisible(d) {
          return d.y1 <= 4 && d.y0 >= 1 && (d.y1 - d.y0) * (d.x1 - d.x0) > 0.03;
         }
         
         function labelTransform(d) {
          const x = (d.x0 + d.x1) / 2 * 180 / Math.PI;
          const y = (d.y0 + d.y1) / 2 * radius;
          return ${coordinates};
         }
         
         return svg.node();
         }
         )
          },
          {
            name: "data",
            inputs: ["d3"],
            value: (function(d3){return(${jsonValue})})
          },
          {
            name: "partition",
            inputs: ["d3"],
            value: (function(d3){return(
         data => {
         const root = d3.hierarchy(data)
            .sum(d => d.size)
            .sort((a, b) => b.value - a.value);
         return d3.partition()
            .size([2 * Math.PI, root.height + 1])
          (root);
         }
         )})
          },
          {
            name: "color",
            inputs: ["d3","data"],
            value: (function(d3,data){return(
         d3.scaleOrdinal(d3.quantize(d3.interpolateRainbow, data.children.length + 1))
         )})
          },
          {
            name: "format",
            inputs: ["d3"],
            value: (function(d3){return(
         d3.format(",d")
         )})
          },
          {
            name: "width",
            value: (function(){return(
         600
         )})
          },
          {
            name: "radius",
            inputs: ["width"],
            value: (function(width){return(
         400/6
         )})
          },
          {
            name: "arc",
            inputs: ["d3","radius"],
            value: (function(d3,radius){return(
         d3.arc()
          .startAngle(d => d.x0)
          .endAngle(d => d.x1)
          .padAngle(d => Math.min((d.x1 - d.x0) / 2, 0.005))
          .padRadius(radius * 1.5)
          .innerRadius(d => d.y0 * radius)
          .outerRadius(d => Math.max(d.y0 * radius, d.y1 * radius - 1))
         )})
          },
          {
            name: "d3",
            inputs: ["require"],
            value: (function(require){return(
         require("d3@5")
         )})
          }
         ]
         };
         
         const notebook = {
         id: "86ddbc29bd33f9d6@332",
         modules: [m0]
         };
         
         export default notebook;
         Runtime.load(notebook, Inspector.into(document.body));
               
      </script>
      <script>
         // When the user scrolls down 20px from the top of the document, show the button
          window.onscroll = function() {scrollFunction()};
          function scrollFunction() {
          if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
              document.getElementById("myBtn").style.display = "block";
          } else {
              document.getElementById("myBtn").style.display = "none";
          }
          }
          // When the user clicks on the button, scroll to the top of the document
          function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
          }
         
          $(document).ready(function () {
          var $switchLabelOn = $('.on');
         var $switchLabelOff = $('.off');
          var on="#"+$switchLabelOn[0].innerHTML.toLowerCase();
          var off="#"+$switchLabelOff[0].innerHTML.toLowerCase();
          var flag="false";
          var view="${viewType}";
          try{
          if (typeof(Storage) !== "undefined") {
          	view=localStorage.getItem("viewtype");
          	if("#"+view===on){
          	 flag="true";
         $(on).show();
           $(off).hide();
         }
         if("#"+view===off){
          	 flag="true";
         $(on).hide();
           $(off).show();
         }
          
          } else {
          	alert( "Sorry, your browser does not support Web Storage...");
          }
          localStorage.setItem("viewtype", "${viewType}");
          }
          catch(e){}
          if(flag==="false"){
          $(on).show();
         $(off).hide();
          }
          
          
          $('.switch-input').on('change', function () {
          var isChecked = $(this).is(':checked');
          if (isChecked) {
          $(on).show();
          $(off).hide();
          }
          else{
          $(on).hide();
          $(off).show();
          }
          });
          function setSwitchState(el, flag) {
          el.attr('checked', flag);
          }
          setSwitchState($('.switch-input'), true);
          });
          
          
      </script>
      </#if>
   </body>
</html>