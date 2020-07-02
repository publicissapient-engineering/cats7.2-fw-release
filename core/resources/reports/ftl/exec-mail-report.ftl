<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Executive Summary Mail Report</title>
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
   <body>
   
     <#if projectName??>       
         
   
    <div> <span>Started at: ${startTime?datetime}</span><br>
	    <span style="float:right">Ended at : ${endTimeftl?datetime}</span>
	<h2 style="text-align:center;font-weight:bolder;text-align:center;position: fixed;top: 10px;margin: 0; /* this is just for the browser where margin works */width: 100%;"">${projectName}</h2>
	        <span>Total time taken ${executionTime}</span><div>
     <div id="list">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12" >
                  <div class="table-responsive">
                     <table class="table" style="width:100%" cellpadding="5">
                        
                        <thead>
                           <tr style="background-color:#6b7ae0;color:white;">
                              <th class="columnHeader" colspan="4">Suites</th>
                              <th class="columnHeader" colspan="4">Scenarios</th>
                              <th class="columnHeader" colspan="6">${EXECUTIVE_REPORT_BASED_ON?capitalize}</th>
                           </tr>
                           <tr style="background-color:#f8f7ff">
                              <th class="dataAlign">Name</th>
                              <th class="dataAlign">Release</th>
                              <th class="dataAlign">Channel</th>
                              <th class="dataAlign">Browser</th>
                              <th class="dataAlign">Passed</th>
                              <th class="dataAlign">Failed</th>
                              <th class="dataAlign">Skipped</th>
                              <th class="dataAlign">Total</th>
                              <th class="dataAlign">Passed</th>
                              <th class="dataAlign">Failed</th>
                              <th class="dataAlign">Skipped</th>
                              <th class="dataAlign">Total</th>
                              <th class="dataAlign">Execution</th>
                              
			      <th class="dataAlign textCenterAlign">Duration</th>	
                           </tr>
                        </thead>
                        <#assign overallValue=0>
                        <#assign totalValues=0>
                        <#list systems as system>
                        <#assign skipped=false>
                        <#assign executionValue=system.executionPercentage?replace("%","")?number>
                        <#if executionValue lt 100 || system.scenarioSkipCount gt 0>
                           <#assign skipped=true>
                        </#if>
                        <#assign passCount=system.scenarioCount-system.scenarioFailedCount-system.scenarioSkipCount>
                        <#assign testPassPercentage = system.passPercentage />
                        <#assign testPassNumberasString=testPassPercentage?replace("%","")>
                        <#assign testPassNumber = testPassNumberasString?number>
                        <#if testPassNumber gt passPercentageThreshold >
                        <#assign resultColor='color_pass'>
                        <#elseif testPassNumber lt failPercentageThreshold>
                        <#assign resultColor='color_fail'>
                        <#else>
                        <#assign resultColor='color_amber'>
                        </#if>
                        <tbody>
			<#if skipped==true && system.scenarioSkipCount gt 0>
                              <tr style="background-color:#e0e8ef">
                                 <#elseif resultColor?contains("pass")>               
                              <tr style="background-color:#ebffeb">
                                 <#elseif resultColor?contains("fail")>
                              <tr style="background-color:#fff0f0">
                                 <#else>
                              <tr style="background-color:#faffdc">
                                 </#if> 
                                 <#if skipped==true && system.scenarioSkipCount gt 0>
                                 <td class="color_skip" style="color:black;">${system.testSuite}</td>
                                 <#else>
                                 <td class="${resultColor}" style="color:black;">${system.testSuite}</td>
                                 </#if>
                                 <td>${system.release}</td>
                                 <td>${system.channel}</td>
                                 <#if system.browser=="">
                                 <td>NA</td>
                                 <#else>
                                 <td>${system.browser}</td>
                                 </#if>
                                 <#if passCount gt 0>
                                 <#assign passPercentage=system.scenarioPassPercentage>
                                 <td class="result_pass keyValues bandwidth">${passCount} [${passPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${passCount}</td>
                                 </#if>
                                 <#if system.scenarioFailedCount gt 0>
                                 <#assign failPercentage=system.scenarioFailPercentage>
                                 <td class="result_fail keyValues bandwidth">${system.scenarioFailedCount} [${failPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${system.scenarioFailedCount}</td>
                                 </#if>
                                 <#if system.scenarioSkipCount gt 0>
                                 <#assign skipPercentage=system.scenarioSkipPercentage>
                                 <td class="result_skip keyValues bandwidth">${system.scenarioSkipCount} [${skipPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${system.scenarioSkipCount}</td>
                                 </#if>
                                 <td class="keyValues">${system.scenarioCount}</td>
                                 <#if system.passedCount gt 0>
                                 <#assign passCountPercentage=system.passPercentage>
                                 <td class="result_pass keyValues bandwidth">${system.passedCount} [${passCountPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${system.passedCount}</td>
                                 </#if>
                                 <#if system.failedCount gt 0>
                                 <#assign failCountPercentage=system.failPercentage>
                                 <td class="result_fail keyValues bandwidth">${system.failedCount} [${failCountPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${system.failedCount}</td>
                                 </#if>
                                 <#if system.noRunCount gt 0>
                                 <td class="result_skip keyValues">${system.noRunCount}[${system.skipPercentage}]</td>
                                 <#else>
                                 <td class="keyValues">${system.noRunCount}</td>
                                 </#if>
                                 <#if EXECUTIVE_REPORT_BASED_ON?capitalize=='Teststep'>
                                 <td class="keyValues">${system.testcaseCount}</td>
                                 <#else>
                                 <td class="keyValues">${system.testcaseCount+system.noRunCount}</td>
                                 </#if>
                                 <#assign executionPercentageBox=system.executionPercentage>
                                 <#assign percentageValue=executionPercentageBox?replace("%","")>
                                 <#assign overallValue=overallValue+percentageValue?number>
                                 <#assign totalValues=totalValues+1>
                                 <#if skipped==true && percentageValue?number lt 100 >
                                 <td class="keyValues" style="color:#56aff1">${system.executionPercentage}</td>
                                 <#else>
                                 <td class="keyValues">${system.executionPercentage}</td>
                                 </#if>
                                 <#assign durationHours=system.suiteExecutionTime?replace(" Hours ", ":")>
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
                                 <td>${timeTaken}</td>
                              
                              </tr>
                           </tbody>
                        </#list>
                     </table>
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
      	
       
     
      
         
         
     </#if>
   </body>
</html>