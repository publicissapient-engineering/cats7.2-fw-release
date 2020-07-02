<html lang="en">
   <head>
      <title>Executive Summary Report of BDD</title>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
           .column {
         margin-right:-25px;
         float: right;
         padding: 10px;
         color: black;
         }
         .keyValues{
         text-align:center;
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
         text-align:left;
         }
         .columnHeader,.dataAlign{
         text-align:center;
         }
         .footer-bottom {
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
         .attachments{
         width:50%;
         table-layout: fixed;
         }
         .headRow{
         background-color: #3c7aa9;
         color:white;
         font-family:arial;
         }
         <#if cssSummary??>
         ${cssSummary}
         </#if>
      </style>
       
   </head>
   <body style="background: rgb(242, 246, 253,1);">
      <#if startTime?? && endTime??>
      <#assign gherkinValue = EXECUTIVE_REPORT_BASED_ON?lower_case>
     
      <#assign overAllPassPercentage=0>
      <#assign overAllFailPercentage=0>
      <#assign overAllTotalPercentage=0>
      <#assign overallExecutionRate=0>
      <#assign count=0>
      <div> <span>Started at: ${startTime?datetime}</span><br>
	    <span style="float:right">Ended at : ${endTime?datetime}</span>
	<h2 style="text-align:center;font-weight:bolder;text-align:center;position: fixed;top: 10px;margin: 0; /* this is just for the browser where margin works */width: 100%;">${catsprojectName}</h2>
	        <span>Total time taken ${totalDuration}</span></div>
      
         
         <div id="list">
            <div class="container-fluid">
               <div class="row" style="margin-top:12px;">
                  <div class="col-sm-12" style="padding-left:0px;padding-right:0px;">
                     <div class="table-responsive" style="margin-top: -15px;">
                        <table class="table" style="width:100%" cellpadding="5">
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
                                 <td class="color_skip"  style="color:black;">
                                    ${reportforScenario.suiteName}-${reportforScenario.featureId}
                                 </td>
                                 <#else>
                                 <td class="${resultColor}"  style="color:black;">
                                    ${reportforScenario.suiteName}-${reportforScenario.featureId}
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
                                 <td class="result_pass keyValues bandwidth">
                                    <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                                    ${overAllPassCountScenario} [${passPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    <#assign passPercentage=overAllPassCountScenario/totalScenario*100>
                                    ${overAllPassCountScenario}
                                 </td>
                                 </#if>
                                 <#if overAllFailCountScenario gt 0>
                                 <td class="result_fail keyValues bandwidth">
                                    <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                                    ${overAllFailCountScenario} [${failPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    <#assign failPercentage=overAllFailCountScenario/totalScenario*100>
                                    ${overAllFailCountScenario}
                                 </td>
                                 </#if>
                                 <#if overAllPartiallySkipCountScenario gt 0 || overAllSkipCountScenario gt 0>  
                                 <td class="keyValues bandwidth result_skip">
                                    <#assign partialPercentage=(overAllPartiallySkipCountScenario+overAllSkipCountScenario)/totalScenario*100>
                                    ${overAllPartiallySkipCountScenario+overAllSkipCountScenario} [${partialPercentage?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    0
                                 </td>
                                 </#if>
                                 <td class="keyValues">
                                    ${totalScenario}
                                 </td>
                                 <#if EXECUTIVE_REPORT_BASED_ON?lower_case=='step'>
                                 <#if stepdefPassCount gt 0>
                                 <td class="result_pass keyValues bandwidth">
                                    <#assign stepPass=stepdefPassCount/totalSteps*100>
                                    ${stepdefPassCount} [${stepPass?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    <#assign stepPass=stepdefPassCount/totalSteps*100>
                                    ${stepdefPassCount}
                                 </td>
                                 </#if>
                                 <#if stepdefFailCount gt 0>
                                 <td class="result_fail keyValues bandwidth">
                                    <#assign stepFail=stepdefFailCount/totalSteps*100>
                                    ${stepdefFailCount} [${stepFail?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    <#assign stepFail=stepdefFailCount/totalSteps*100>
                                    ${stepdefFailCount}
                                 </td>
                                 </#if>
                                 
                                 <#if stepdefSkipCount gt 0 || stepdefPartiallySkippedCount gt 0> 
                                 <#assign stepSkip=(stepdefSkipCount+stepdefPartiallySkippedCount)/totalSteps*100>
                                 <td class="keyValues bandwidth result_skip">${stepdefSkipCount+stepdefPartiallySkippedCount} [${stepSkip?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">0
                                 </td>
                                 </#if>
                                 <td class="keyValues">${totalSteps}</td>
                                 <#assign execution=(stepdefPassCount+stepdefFailCount)/totalSteps>
                                 <#assign overallExecutionRate=overallExecutionRate+execution>
                                 <#assign count=count+1>
                                 <#assign execution=execution*100>
                                 <#if skipped==true>
                                 <td class="keyValues bandwidth" style="color:#56aff1">${execution?round}%</td>
                                 <#else>
                                 <td class="keyValues bandwidth">${execution?round}%</td>
                                 </#if>
                                 <#else>
                                 <#assign noOfSteps=testStepPassCount+testStepFailCount+testStepSkipCount>
                                 <#if testStepPassCount gt 0>
                                 <td class="result_pass keyValues bandwidth">
                                    <#assign stepPass=testStepPassCount/noOfSteps*100>
                                    ${testStepPassCount} [${stepPass?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    0
                                 </td>
                                 </#if>
                                 <#if testStepFailCount gt 0>
                                 <td class="result_fail keyValues bandwidth">
                                    <#assign stepFail=testStepFailCount/noOfSteps*100>
                                    ${testStepFailCount} [${stepFail?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">
                                    0
                                 </td>
                                 </#if>
                                 <#if testStepSkipCount gt 0> 
                                 <#assign stepSkip=testStepSkipCount/noOfSteps*100>
                                 <td class="keyValues bandwidth result_skip">${testStepSkipCount} [${stepSkip?round}%]
                                 </td>
                                 <#else>
                                 <td class="keyValues">0
                                 </td>
                                 </#if>
                                 <td class="keyValues">${noOfSteps}</td>
                                 <#if noOfSteps gt 0>
                                 <#assign execution=(testStepPassCount+testStepFailCount)/noOfSteps>
                                 <#assign overallExecutionRate=overallExecutionRate+execution>
                                 <#assign count=count+1>
                                 <#assign execution=execution*100>
                                 <#if skipped==true>
                                 <td class="keyValues bandwidth" style="color:#56aff1">${execution?round}%</td>
                                 <#else>
                                 <td class="keyValues bandwidth">${execution?round}%</td>
                                 </#if>
                                 <#else>
                                 <td class="keyValues bandwidth">0%</td>
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
                  </div>
               </div>
            </div>
         
           <#--
         <#if exceutiveReportBasedOn=='feature'>
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
         </#if>
         <#if overallPassRateftl??>	
         <#if overallPassRateftl gte passPercentageThreshold?number >
         <#assign result='result_pass'>
         <#elseif overallPassRateftl lte failPercentageThreshold?number >
         <#assign result='result_fail'>
         <#else>
         <#assign result='result_amber'>
         </#if>
         </#if>
        
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
            <#assign overallExecutionRatePercentage=overallExecutionRate/count*100>
            <span style="float:right;font-size:22px;" id="makeTop">${EXECUTIVE_REPORT_BASED_ON} Execution Rate :${overallExecutionRatePercentage?string["0.##"]}%</span>
         </div>
      </div>
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
          
          
      </script> -->
      </#if>
   </body>
</html>