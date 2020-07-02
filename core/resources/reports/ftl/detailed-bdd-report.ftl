<!DOCTYPE html>
<html>
   <head>
      <title>Detailed Report of BDD</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/es6-shim/0.34.1/es6-shim.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <style>
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
         background-color: #503A56;
         color:white;
         }
         tr td{
         font-family:calibri;
         text-align:left;
         }
         .dataAlign{
         //text-align:center;
         }
         .keyValues{
         text-align:center;
         }
         #errorMessage{
         text-align:center;
         color:red;
         font-size: medium;
         font-weight: 600;
         }
         .switch,.switchGraph {
         position: relative;
         display: inline-block;
         width: 90px;
         float:right;
         height: 34px;
         }
         .switchGraph input {display:none;}
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
         .on,.onGraph
         {
         display: none;
         }
         .on
         {
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 33%;
         font-size: 9px;
         font-family: Verdana, sans-serif;
         }
         #HideG{
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 40%;
         font-size: 9px;
         font-family: Verdana, sans-serif;
         }
         #ShowG
         {
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 65%;
         font-size: 9px;
         font-family: Verdana, sans-serif;
         }
         .off{
         color: white;
         position: absolute;
         transform: translate(-50%,-50%);
         top: 50%;
         left: 55%;
         font-size: 9px;
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
         #myInput{
         float: right;
         }
         .tagNameStyle{
         color:red;
         }
         .myRow{
         width:100%;
         background-color: #1e2c42;
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
         .titleOverallGraph{
         text-align:center;
         font-family:arial;
         }
         .colorbg{
         background-color:#ffe1e7;
         }
         .colorbg2{
         text-align: -webkit-center;
         text-align: -moz-center;
         background-color:#e2edff;
         }
         .lipassnograph{
         float:left;
         font-size:12px;
         }
         .lipassnograph::before{
         content: ' \25CF';
         color:#006600;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .lifailnograph{
         float:left;
         font-size:12px;
         }
         .lifailnograph::before{
         content: ' \25CF';
         color:#FF0000;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .lipartiallyskipnograph{
         float:left;
         word-break: break-all;
         font-size:12px;
         }
         .lipartiallyskipnograph::before{
         content: ' \25CF';
         color:#FFB850;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .liskipnograph{
         float:left;
         font-size:12px;
         }
         .liskipnograph::before{
         content: ' \25CF';
         color:#56aff1;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         #graph{
         float: right;
         margin-bottom:3px;
         margin-right:5px;
         margin-top:2px;
         cursor:pointer;
         font-size:12px;
         }
         .graph1{
         float:left;
         font-family:arial;
         margin-top: 15px;
         border-right:0px;
         list-style-type:none;
         padding-left:30px;
         padding-top:2px;
         line-height:130%
         }
         .graph2{
         float:left;
         font-family:arial;
         margin-top: 15px;
         border-right:0px;
         list-style-type:none;
         padding-left:30px;
         padding-top:2px;
         line-height:130%
         }
         .lipass{
         float:left;
         font-size:12px;
         }
         .lipass::before{
         content: ' \25CF';
         color:#006600;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .lifail{
         float:left;
         font-size:12px;
         }
         .lifail::before{
         content: ' \25CF';
         color:#FF0000;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .lipartiallyskip{
         float:left;
         word-break: break-all;
         font-size:12px;
         }
         .lipartiallyskip::before{
         content: ' \25CF';
         color:#FFB850;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         .liskip{
         float:left;
         font-size:12px;
         }
         .liskip::before{
         content: ' \25CF';
         color:#56aff1;
         vertical-align: sub;
         font-size: 240%;
         padding-right: 3px;
         }
         svg > g > g:last-child { pointer-events: none }
         tr.noBorder td {
         border: 0;
         }
         #status{
         float:right;
         }
         .item{
         padding: 5px;
         color:white;
         text-align: left;
         font-size: 15px;
         background-color: #3c7aaa;
         text-transform: capitalize;
         //padding: 10px;
         font-weight:bolder;
         font-family: arial;
         }
         .duration {
         font-family: calibri;
         color: white;
         }
         .graphTable {
         border-bottom: 1px solid #bfcce2;
         border-top: 1px solid #bfcce2;
         font-family: arial, sans-serif;
         border-collapse: collapse;
         table-layout: fixed;
         width: 100%;
         margin-top: 15px;
         margin-bottom: 25px;
         //margin-left: 10px;
         }
         .detailClass {
         table-layout: fixed;
         word-break:break-word;
         font-family: arial, sans-serif;
         border-collapse: collapse;
         width: 100%;
         margin-top: 15px;
         //margin-bottom: 25px;
         //margin-left: 10px;
         }
         .tagClass,.scenarioClass {
         table-layout: fixed;
         word-break:break-word;
         font-family: arial, sans-serif;
         border-collapse: collapse;
         width: 100%;
         margin-top: 15px;
         margin-bottom: 25px;
         //margin-left: 10px;
         }
         td {
         font-size: 14px;
         }
         th {
         border: 1px solid #dddddd;
         text-align: left;
         padding: 3px;
         word-wrap: break-word;
         font-family: arial;
         }
         td{
         color:black;
         border: 1px solid #dddddd;
         text-align: left;
         padding: 3px;
         word-wrap: break-word;
         font-family: calibri;
         }
         .FAILED {
         color: red;
         }
         td[class$="CONDITION"] {
         color: #FFC200;
         }
         .PASSED {
         color: green;
         }
         td[class$="pass"] {
         color: green;
         }
         td[class$="fail"] {
         color: red;
         }
         .header img {
         margin-bottom: 5px;
         margin-left: -15px;
         float: left;
         background: #1e2c42;
         min-width: 250px;
         min-height: 80px;
         margin-top: -22px;
         }
         .header h1 {
         font-weight: 600;
         color: #add2ea;
         top: 18px;
         }
         .column {
         font-family:calibri;
         float: right;
         padding: 10px;
         color: white;
         }
         .center {
         text-align: center;
         color: white;
         }
         .footer-bottom {
         position: fixed;
         bottom: 0;
         width: 100%;
         border-top: 1px solid #666;
         background: #1e1e1e;
         }
         .projTitle {
         color:white;
         width: 90%;
         text-align: center;
         }
         button{
         float:right;
         }
         .fa-seperator:before{
         content:"\002F";
         }
         #seperator{
         font-weight:bolder;
         }
         #addminus,#addplus{
         font-size:24px;
         float: right;
         margin-top:10px;
         margin-right: 15px;
         margin-bottom: 5px;
         cursor:pointer;
         }
         #addminus{
         margin-right: 5px;
         }
         #tickPass{
         color:green;
         font-size:16px;
         margin:5px;
         }
         #tickFail{
         color:red;
         font-size:16px;
         margin:5px;
         }
         .table-responsive {
         min-height: .01%;
         overflow-x: unset;
         }
         #option{
         float: right;
         margin: -20px 5px 0 0;
         text-decoration: underline;
         color: crimson;
         cursor:pointer;
         }
         ${cssDetailed}
         h2{
         text-align:center;
         }
         .table>thead>tr>th {
         padding:3px;
         }
         .tagClass>tbody>tr>td {
         padding: 3px;
         }
         table.scenarioClass tr th {
         text-align:center;
         padding: 5px;
         color: white;
         background-color: #3c7aa9;
         }
         table.tagClass tr th{
         text-align:center;
         padding:5px;
         color: white;
         background-color: #3c7aa9;
         }
         table.tagClass tr th.dataAlign {
         text-align:center;
         padding: 5px;
         color: #1e2b42;
         background-color: #99cccc;
         }
         table.detailClass tr th {
         text-align:center;
         padding: 5px;
         color: #1e2b42;
         background-color: #99cccc;
         }
         #piechart4 div svg g path{
		  cursor:pointer;
		 }

      </style>
      <script>
         window.addEventListener('offline', function(event){
         document.getElementById("displayInternetError").style.display = "none";
         document.getElementById("logoImage").style.marginLeft = "0px";
         document.getElementById("TAG").style.display = "none";
         document.getElementById("search").style.display = "none";
         location.reload(true);
         });
         window.addEventListener('online', function(event){
         document.getElementById("displayInternetError").style.display = "block";
         document.getElementById("logoImage").style.marginLeft = "-15px";
         //document.getElementById("displayInternetError").style.display = "block";
         //document.getElementById("TAG").style.display = "block";
         //document.getElementById("search").style.display = "block";
         location.reload(true);
         });

          window.onload = function () {

          var xhr = new XMLHttpRequest();
          var file = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css";
          var randomNum = Math.round(Math.random() * 10000);
          xhr.open('HEAD', file + "?rand=" + randomNum, true);
          xhr.send();
          xhr.addEventListener("readystatechange", processRequest, false);

          function processRequest(e) {
            if (xhr.readyState == 4) {
              if (xhr.status >= 200 && xhr.status < 304) {
              	document.getElementById("logoImage").style.marginLeft = "-15px";
                document.getElementById("displayInternetError").style.display = "block";
                //document.getElementById("TAG").style.display = "block";
                //document.getElementById("search").style.display = "block";


              } else {
              document.getElementById("displayInternetError").style.display = "none";
	          document.getElementById("logoImage").style.marginLeft = "0px";
	          document.getElementById("TAG").style.display = "none";
	          document.getElementById("search").style.display = "none";


              }
            }
          }
         }
      </script>
   </head>
   <body style="background: rgb(242, 246, 253,1)">
   <#macro stepTD content="">
		<td>${(content??)?then(content?replace("<","&lt;")?replace(">","&gt;"), "")}</td>
	  </#macro>

      <script>
         $(document).ready(function(){


         $("#graphTable").show();

         sayswho= (function(){
         var ua= navigator.userAgent, tem,
         M= ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
         if(/trident/i.test(M[1])){
         tem=  /\brv[ :]+(\d+)/g.exec(ua) || [];
         return 'IE '+(tem[1] || '');
         }
         if(M[1]=== 'Chrome'){
         tem= ua.match(/\b(OPR|Edge)\/(\d+)/);
         if(tem!= null) return tem.slice(1).join(' ').replace('OPR', 'Opera');
         }
         M= M[2]? [M[1], M[2]]: [navigator.appName, navigator.appVersion, '-?'];
         if((tem= ua.match(/version\/(\d+)/i))!= null) M.splice(1, 1, tem[1]);
         return M.join(' ');
         })();
         //alert(sayswho);
         if (sayswho.indexOf("IE") != -1) {
         //alert("true");
         document.getElementById("customFail").style.marginLeft="-60px";
         document.getElementById("customFail").style.marginTop="3px";
         document.getElementById("graph").style.marginTop="-13px";
         }
         if (sayswho.indexOf("Edge") != -1){
		 document.getElementById("graph").style.marginTop="-13px";
         }



		 $('.switch-Graphinput').on('change', function () {
         var isChecked = $(this).is(':checked');
         if (isChecked) {
		 if (sayswho.indexOf("IE") != -1 || sayswho.indexOf("Edge") != -1) {
		 document.getElementById("graph").style.marginTop="-12px";
		 }
		 else{
         document.getElementById("graph").style.marginTop="2px";
		 }
         $(".graphTable").show();

         }
         else{
		 if (sayswho.indexOf("IE") != -1 || sayswho.indexOf("Edge") != -1) {
		 document.getElementById("graph").style.marginTop="-7px";
		 }
		 else{
         document.getElementById("graph").style.marginTop="-8px";
		 }
         $(".graphTable").hide();
         }
         });
         function setSwitchState(el, flag) {
         el.attr('checked', flag);
         }
         setSwitchState($('.switch-Graphinput'), true);




         try{
         var type=window.location.href;

         if(type.includes("boxVType")){

         if (typeof(Storage) !== "undefined") {
         // Store
         localStorage.setItem("viewtype", "box");

         } else {
         alert( "Sorry, your browser does not support Web Storage...");
         }
         }
         else if(type.includes("listVType")){

         if (typeof(Storage) !== "undefined") {
         // Store
         localStorage.setItem("viewtype", "list");

         } else {
         alert( "Sorry, your browser does not support Web Storage...");
         }
         }
         }
         catch(e){}


           $(".link").click(function(e){
         	e.preventDefault();
         	var url = $(this).attr("href");
         	$("#myModal iframe").attr("src", url);
           });
         $("#addminus").click(function(e){
          $(".steps").css('visibility', 'collapse');
          });

          $("#addplus").click(function(e){
         $(".steps").css('visibility', 'visible');
         $('.steps').show();
         });

         });
         function TestFunction(param,count) {


         for (i = 0; i < count; i++) {
         var x = document.getElementById(param+i);
		 if(x.style.visibility=='collapse'){
		 $("."+param).show();
         x.style.visibility='visible';
		 }
         else{
		 x.style.visibility='collapse';
         }
         }
		 paramName=param;
         }


      </script>
      <div id="contentsWhenInternet">
         <div class="row myRow" style="margin-right:0px;margin-left:0px;display:table">
            <div class="column">
               <div>Started at: ${individualStartDate?datetime}</div>
               <div>Ended at : ${individualEndDate?datetime}</div>
               <div class="duration">Total time taken: ${timeTaken}</div>
            </div>
            <div class="header">
               <img id="logoImage" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA1MAAAEECAMAAAD6cp7IAAACfFBMVEVHcEwerMj29fbU5e3+/f3//v5Db3otjJ1mZmb/////amvv9Pb//v4TXJElrOQysOUkq+P///8Kh5f89vYTXJETXJElrOMTXJEkq+P+/v4AqJxFY3glrOQkrOMmrOQkrONmZmZmZmYAqZwTXJFmZmZmZmYkq+NmZmYkrOMkq+MTXJETXJETXJElrOTQ1ddmZmZmZmYAqJsAqZ3X3d7++vtmZmbS2dkAqZwkq+NmZmbW3+BmZmb+/f4TXJH//f0DqJ1mZmYTXJEAqZ0nrOTY4uNmZmbW1tdmZmYAqZ0TXJEdrMoAqZ0TXJHd4+MAqZ1mZmYAqZ0+teckq+P//f3X3Nzg5uYAqZ1mZmZRvekAqZ0AqZ3//v7P09NJuugAqZ1mZmba6er9zs55yuttyO02s+be5OMhsqre4+NmZmb/REXe4+NawOoAqZ3e4+P/p6j//v4AqZ1iw+tmZmb+kJH/4uP/ysuWztX+3t81ubJfkbX/5OX/1NX/tLUAm43/////////e3z//f5jsb7/NTb/zc612+FKwbqOscr/aGn/UlP+srPc4eEAqZ1hysb/1dYsr+T/5eb/v8BmZmZmZma96ur/r7D/lZZszciI19VKgquFq8f/paal0tv/kpN0n7/2iYr93t//ycr/8vPN1dj/p6j/6utmZmb/eXr7ZWYAnI7KqanefX71Jygkq+NmZmYTXJEAqZ3g5ub0Jyjj6en/rK0Zp+IlrOPl6+sRpeEfquIDq6D/REX/OToAmIkAnpD/jY76Kyz/MTIBpZj/hIX/UVL/XV7/a2zm7e3/d3j/mJn/o6R5eXn/ubqWlZXAubmxqKg1dKHWzMwjaJlwjKHwBTKAAAAArHRSTlMAFBcFKSARCJ4lzQ1l4NwssHIgR8q0n55sOl4aPvjAfF5DTXyDp800XYz0KksfP2ooLa60MtdzgEyyYHVaOoKQ4I275YJQUZDSbH5vXpKewMe37qCinvrLfz7mTymZ9Ol0/R470/T+5vXivWnt2HiQ2lHwkr5cpP75+Xi41vKw2qXB7/LWh+rIt9D3z+Hni/Ke5/n8l7Tsxc/87ufAsOnU3Z73ncrp/ubq77DzJMkctQAAOW1JREFUeNrsnd1vE9kZxiEmnoAZ2jozDOAF7EyMYcaQAAkQgjdxIAQLa4NaiQhSJVymEkIrKJGcq5UQ8q4UraqtqJSIDaq2ShEkYwtV3LBSF6ntRa+i/EX1jL/m45zxfIQysZ+ftNJ6ZnxsJvP4fc/7cc6ePQAAAAAAAABHZIQ6YdwMAHYAoVQng5sBwA7ANTSVw80AYAdgG5rK4mYA4Jpw1HygIamSYL5Yxv0CwJ6YKEmmQ5mmpljTqXSJS+OeAUBHzkpWayQ2NVWKGc4w6tVcnsGNA4BItB7gM9qerE5TxsAfX7NeIu4dAASvr6kdiSEox6q2fNMnzOP+AWDRlE46nP4Eqzuht0hR2hsAABZ7pE9ESbrjvO44pzsOOwWAFX0solQPqEfT+ulUic1nwqTLY7h9ANg6f1rUPCPyeltUn2xxQq6iOLkE1w+AFugnTiVBYEt0uKzhLAJ/AJDIlryC2loASGS8SorFvQOABCN51JSAewcAEcGjplDzBwCZKFw/AHxhboUXPWrKbKeQrQIdCi8Z+nZlznPcz9CrGOXhDILOJGssfs2XfMA1GhnDWkQevYqgA8nV1JBuKswHUm0YUUKxEuhQmskoXrUxfMkvqh+ZZhG3AB0bntDnokTbqRTL8aIo5kRR4Dm7DFZO5pGzAp2Lw3gEn00bvDhGzgucc7sFQMfgKLvL58izoozIIRMMgFtNSaJd7C7NQ1MAuBKV2MwHd/Ue/PJ3KgdnhyKNozIPSQHgeEIlNNfN7L75/OXaWkFlrfjy+VCoaas4TKcAcCQqrtEO1bu4urJtOLdVKF7qqp/OQVIANGG4FoVGkQerK8QLCsWjdQeQc1KsBECniIrcHF+rVorcKGxTrdDW6qztvAySAp1JlJDBlWp+37VV+wjEVrG7eiGplp3HvQUdimyxVGw1ONH9cqtlqLxwozpIHm2/ADQwa4qtRtBn15zkdLeLIbKoEJ8AHYs5bidV6yZurDgsm13rIg+DbX9BpwYpzPOpauXExW3HteiFbuKcCs4f6FBEYsTvopsGj5WqpTLXVKB7CnQkYYlkXS6665qqioqRYKgAME+Dql2EN7bdaapU+L36trTpKLZOBJ0IS1if+ehKyS1bqqViBCR9QWcSyzSmOmlCnja06qFpvtBF8P4anyhnYLNAm9smluU4nuezJjOlxb9felqJYozgSfICz3Mcy7JIV4H2DkvQ+6U0z2/Lk6bSJFcSlUqgI6Cu4Sdpp1c9SUpoMXZpJ1LAk/3JngrJOP6IIFAItrp44G0RsnqPvfQJd6eKPVaq9OCPCAIFZ6eLkDczJdUHp666KfqPUkwq0BQIIjHbnTmueTNTjX1HZeqEyr+hGoCmQCBJ23a6v/Tn+tGjFLpF2b0yBU2BQCLa6aJrxZOksg6G958BTkJTIJDwdq6fxwiFzq/LfLpo+jg0BQKJLLL0qF/R235uukA5JfvF553snBO2q2WPKdAUCOyUipcoYYY1v2aKGFZks462oopNKTM2p1PQFAgwMetq56owuj1Np4xb4lii6byzxWgT06pc+ukXTEJTIODGSjAYK0nNH131ZKaMMyVjzR8rOtstMV6fLKWol/RDUyDoCBZj89yTpoxR8rSH8omB+YZehqkXTUNTIOgYvDROPbLo30yZNOXESg08VnRM0S4bhqZA0OEtmir6qqGoItvYMOI8al4xEidfxzyGpkDQ4SzWprgDdkq2E5yFwWHFzAI5oD6oQFNgV9kpTRlr/sN+LjU1YJGUsj5CjmJAU2AXaqr4f9dUeMEqKmWAdGU/NAU6RVOcnaZa9sxPEzRFDKgnoSkQeISdifuZ1vHLuIul95M0RQqoz0BTIPBkLR7cTmgq7W4x2kGSpizlFKnJ0QVoCgQd41a8Wh3FJf8pX9OSFELLBNU4UVSJpuhGk9Oma6ApEECilup09eEf2vKfnxItFen232SKJKn1cVXiTGp0mhTDgKZA8EwUTzY3oYL//BTvsiw9QbRTytSeeHKBfAqaAgGD0kCl9eF6WeHFuNMUQ1w5ictTl3gJPybqZoEmKGgKBDoyYQ78/eS7fYq2yItE7Z3vUdwCTYFAQVveT9sfcb+XCVWUHqLQDU/tnY9DU2B3k7ddndlLdVLWfjpVm1RRs7/hH6ApsLunU7axhhs+CykY6kX0bt9paArsbqj7BKhhhMiKv6RvjmrM6NnfUWgK7G542+TtT/7sFGe/7weRFDQFdjeibYF5pOAn6ys7C2SYGIamQHtOqKq25IGf8iTeYfG6kX5oCuxqmmEEiSV1QnnI+0pkuerGt13ZOQ5Ngd1NPivmchk5Ggub/UAt3u0lRxUlzqZie2IxWU7nctls2mZPt/gP0BRoG0wrMWvF6V68v6rzl6f6ewllPkEzmyPI+YJ2QiDVw7reMGdbs1PmUr9mzZLWJDU9SPoCiQUFmgLtRJQUpoi4nVI9JwUommaqvmnoSNh3eAKaAoHHHKnTUrPdqx4klaOW1g7T+neZGQWaAu2GTFwFad+qa0llqMsp6SdMj+O6zx6cV6Ap0P6GqlY/7ngJpa2rVSdSopkpUyPvcKoZuFCgKdCGMCy5zHxx25GkCue0q8MsrQjQmnyaqQYrBrxKShnu6ZmKxxODDP56Hc7lsb57QXwKWErvxlUnVUrFCFlSjXolwrpI60oy7C06sb7e7AOenxmZiidieK46iPPnja/Dc+WHy19d7osG3Pdrun+RYqvsb+FqbVLG0lJWDHlZJGWg36ONmp9RaY463jOQwsPWCf5U39id8pwxcnysXONCoL4qse2Xq9nTo2t2DuDKYqh6WVqittQnlR1iuGc0nkjF6vc0HE4lJkd7hv+s6SoZD+Oha2tBHZu4q4nntuHwhbqmloP0ZSlF6my9NeMm1VatLEbsx1BFFd8RPY2MpmiaYQYHklr2a2QST177MlEXz3397Il5GERNia37N7oW16x9iivFm/XzMWoteklO+NfTeH+ilQ1iEqNqBmx8ahAPX5vSMEjlY7qjfY2jXwfnq+bsOg2bOdvu58W1la2qG7i1VSguntMNIdmUq/f7FdSU07nSYL8qq5EEHr+2ZIyongufTVNHDlc4efr0lS/Oms6kWyyGaVjqsmvfOZXukGEE1n4bnR5fLl/c1b8zoX7YNFzAduR2mWCo9t79bJo6tKly/Pj1UyfOXHEhKctq56EKRk1yLdvqRzwrqse9JzfYv15RFWxV+9H08nTyOdY8eMtwdXSi79N+nb2bOk7oz3AO8k9cnpYBoixna46oT3tTlMe5UUz1NnuQtGo3zpdNhophGJ3rZ7JTd8rlsU/6dU5TNRV11sMr5CzLnTNpkXP0Zt6wb5RjkqRpVOjcpTdv3rx6+/btqx+/X1q61ttFVJVaCjXajs9Vd+/BRz9WeLG0NLu/wzQVvquzSZcnbi3fX557WKZo6o4WIDy/Ix/8K+LRMzpJvT9Fn0+xWZt5EZ/NpWU5GpblTFoUOLqF4iybWoVdF8rOWLy3yM03r15/2Hj37pfKfxU2NH5+/eqvB/eFzBenRmi9WruXrqfffLeh4+cDL5baWleMSRK3yrboNMXUL/VvqvYeObF5hnTi13o7dch4LmuInWda2ywHy5LJvHH/nUb3lFPMRmbozYFnG1Ut6QSlov7vx9cvru0zvSO+QNkT2JE52G/Fzfsj+70Sog3Z+83HDROVH5cPfzsYaVtNfVW+bHg9Ya+p8q2x83orVT2219dX+OLwb1XJnCVo7bheU8dNH1P34ARtCiKzJX8IxtBFbTmllJtWXpOFGXryh4qcNsxqMvLh1ZJRVrGkoox4q63cTxj/n70uBujd8Mg/uskD3jxQ/fUwoB34+Pr77vaUlCqhCTeaqnCnzygpYy7LrZ08fWrzvXW6VFPbpoErptOsIRXF8L4k1VgSPcca1kpysSimoWkx9PS7jbqW7DSlyurFNcPP/ICijHuqA3xCGvyPLgaY3VlNDX1r955f/v1lqA0dv6r7ttwojb13q+yEuWOMXntz3gvWTl5vSua0fYhi8735grBU4g5vHjpSfy16VxSr3zNHNCz5POm0QFY/k+p+9EzTksNH8uPfl/QP5eCwN//vGWns/3Z9Ljv1qOU/+y+z7Sap6HJdFdWQ+L2vy065q39x23Ng4rrBtwvZhShIopNzmiU7VT+R4bwpShKMvlZUNJkNJ8EJ3Q9L15MNgsuzYf+jbXCFRqxbbbfmKXHk//zm82gq9G3rt73715/aLG4+15TFWOXlRNkb9z03Vp01auaw+fwh4/mTVkOrTbjeb5664ibCTl4Yms6Au/bd0KOP7h/Kd+8qqvofedf/00SaxqetULmqLaC1IN9VFFduxYDgLaILemrYYwFzKBJRxGtCNK7nqZDToCZKdj25Pc7dxeR2kzuz3l0S2rBGG2k7pS1tr6Bi+I9upp1O58vzvvPOdKhL9/lpl5lO62Q+83yez/N5n1dQtu9gdzBVGb8Cr+x/QHwBk46YMo4QfdB/J6eqKhHP6yqd1RoZ6H4VYtCUQYjBYI6qTTevEmL8SY3UT2Fd2A41et/NEXLOJ0ZV6D+ClFLldu9Uq1DAX7vY+AHyFAMpspsQXCjOIUx1zuoSfRmofhJy1yE+2iI+6rFJP24XHq4zYLbSUbOzGxBKO+JUpR/sL2cyCP+PJfyVqt3uz1XdTFT5EjmV/TyVN0L+KoltyCFQ7dcFU5m0pyTCnqRJVSk5WoGVMFwdpo+0ShSbFX7nLtIsdTU4k1lE24TiyMGMFQo2EzwyZTtPmUbUfFhNxfez1yiu6ACpK5mMqZCyO1fKTmGoL9td2SE5WC5ROCSHbZqpnyL5+5wMUpZ7My8yxBSTqhoFoFJRU6HxEG/Ndp76UvOLZM1H6QdOU8KCiPdKGFoc9o5eFxR2R4uAaEohVyYeT7EHb5zYCG+YA0YVGfFrHJnRI9Kv7Wo1oEI/x+QtKp0wdVV1dv7iF8L+zrZ3dfY3FDUwUXp4P0pnv5aRiUJK71w2WznXA4aj11bHKRk2yZEOs3g/3qL8vVs370HsI7/9kPkkagtSeRwhylI3Z3SKtMB8jLxPZcFccKkgq3kqL5P3yNpnf31Is0Sn1BtbVNMFnn0lE1C1uFSGhwHcJhZWMjTWiW21ycyzjXXNiuH06clDSbq6WbYpiBaFYr3mlzPGWHHblFYcCR0VV/XgVvpgSotMk0NCBcz+HnfCODHXQD6Lx4JuZ4PKaWX1Li3hcdXaZX+0isYobUl/Rz5CjciHB6TLIh/noz2dOutPMzpGiO/a7HRfJytYv8JdbiqbeWqdpivEc8dSAYDkcb+IU1gsQtmoCKCL/EJFBnJqh5VVuHSKWkpE/YR2qY0IkvcZjEE1aeq8eTUgxbp2Ug9pE5mi3oi9HKmRVhdMaewmLA7kbJ4a5A2xBb+5NT0xMcbExPT0Q34VXVG37DMJIDV0DaZtTtoLKq1RSW3biNgpfjNKjNhCUlBh01SKmN3TF1IzL3hQ5ZOtUsT+gBeEKoUuecqo6QLB6GhrbkCqRgaPLu5Iya0JbzhAB5JB04Gwc/oAd+NqZBp8s+HwFW0TK1r0whTDVs38HCRxD3crkuOlULh5r7Y0tYPPUooaetAfiUZjsVg0GvGF1GSqY273PmU0KPTFXlqylqfgwi7oi8XnFxdiPviHhuLPGnMDUgYpOAaTtM90YCJM02GRYZYFmHOa4xA4a2AzEj7gX3v1on6Jgi85Z0Li39uObEQlVzJu2atR9DtNKE+EoguLb4d+WllZXl7+y/j4P6eW5lEPlzBTccxgvfuIIqSUNEcyXU2XPAUWdr7F5+NthSUb2m48igFvlND8XWNuQEompXcnq4MLY4E0oITB/HkyiapmjFcJIVPYXLVlciOFrdyjC6Z4z/pnG2Ud3L1ofe9TBlGHsPcIZ6Dlirbf4pu4saWhleV3b4Q6YWMr83DNR/D5KvSIW6x4Xdmj/pVSJ/lBtvKUJQgSu7ZUojQWTkVlv27p/prGUX93cw2imErqCyUTARoJmDAdfpqn0C6Gu8AJoc4u0RPrXB79qB+PqpPSLgBGitj+EaXZQvGxcgERjMwPrfB4EmnvxoFTU3Efrk31rJhv/SpMU1KW2siMtK0L0oCyii8uO220AAPLYOyucCmzpW3BL77e21NrOzextG3wRHNNg2Bis7CUuhWGc1QaVc4LiaLKizylH/hazi3bIVwDVVarVzEFWNaFLYA9xGZZWWAmPDcp5wjf0ujyG/SebpbWG/MRZFMpXWEcVNL+lFVHMiNtXqEs/guoiG3y0yyYciryTELsSu4I3yW+oTVuTepPK+DdAKTyJuiAV8GNFAg8tYD6RioacPKejZ874XDpF5XYf/Rm+Qp5UOH75JOqqup80arlg4qaH/p59i+MvlfaJ7H41LwP1sEERXu+240dpmlSFj2CjzQ+MIAy/hL3U+S3I7gk6+dabqf/0b7Rte6h6EIBIUH8Spw0gcUvTE8UoOlfN9CjFDrIy5Nr3Q02l55hMxNhCuvr41bJ//38kdNNB48fZxBWXY0eRsatbvo1Wh0ekuYocO/RkhvxEECXRDrYDvd53A+/SWDdjWuUqoGFji/XYc7/QZ6snwO++BSogpHRtd6XMqOs6NfMEKTCrIxOBwJhKajGGlFCRRfwrZIlHaxWUdbh0jc2ySYE1qecgdTeranA2jzU7TrApTOUb9Y//793hPv5DkxJCWAwflds9H7iPqYul2Q260VXTMVA2nnbz707SnKvxyvgawykvCKVL+B1jk1OTo45vcx/i05PggqQ1KERSvXlMqq226V7lIu1+nq7y9WrzorYpGGva5SM7nu7Qr5HtuWLeFACKaNUfcTo6WRd1qWCD4QpRCl3h8nOoYW7a396ZjcCUuyYFuOYEFIB2jn5+4ECi8lksuQVt007A3RYcJieMAL9LdCkXr/JlZ1wpL/Tahd0rQhjn6o0ZcY+zr6h96r2nR9YFEhhzJMm69ZcxyQqMveuxkVKmWMK4Ta0fDcTmr+/9idnonSFbvbgdJr4ecO083txUs47KtDYvYHAN0Da6wK/VJv9aJPNXufY3cKEw1FZZ7dtUqFUWO1EeqCKThQKGghLUGT0vVsVpqiCBxEBpCzAj2vS3JxSZ6TVHVMzi3AuKogt3qfWfhS1o5nfQ4GGHgg8TZTIZvZtvK2GE/KOOrlU5Q2EvwHyHmKAkkF1nqqtbJHPT7furlTU3uvEiAKHBiJjp/pqCpGmfKPv3CoxRVF/i/KQgta6P0Eu+igh7MsuDGQDU/8i1/HbxnPDOgHO8GM1v0ZnumKivb9LIHD/bDNlZvd547rExu8DLD300t6j3OUaFBtTYD2FVfAcVuSvtzpsSpnKKlkFUr8q5dRBXJryDb1zq8cU1RZLaBuLIKSo48gxSvcg70ZUL5VCLab+DKG5hMrtANS6ogTz46sl2tmaYoqDVwYH+2Zn25lMlc9moQtOmoXUBf5q+0nW0ZcRA6rCoYSBegc2W1XARkC9y6lqTJryvX3v1oIpqpABlf/lKdTPewLTAGiBb2y8LcOJtJoxVQJ5kxaNOQ6q/P2A/F0cTjE/L+1kSALDbTrPCiuu0sH2hNw+RtPODVAPGTc9k7C9a5MO+LtotQ5brVaD+M1dZtOoXGBDzTbzRzDt3tDislsbpqjWuH8J6Xc4jVjzAdlnlwYooJMca8sCpqgI5Ae+Y8lxUFE1Z0WYYpndrVSaYmqlQnZG7eF2UByk1o15Rd3DEwoOimTUkSBKyPmGL5/rufS1x+Oam3N5yr/usZ/ZLThsVYMqQvZ3XM1OiMmPgNO/Yj+5tWKKGhgax2D+CKlC4R+yUN9mNJE2A0x9Cy9cznlQNUiX6Rbw1VQ4oeidQAnuTEYTN+Q7idZ5UIogqEjnKOuZno65V0wweGIxNTfH/t+c55L98kU+V5EvEO4luydqdu/dh8wQM5HRN9oxRWEKDxPspIXss3EGmQMAB5svyQKmWsFFLKF/5Pr2iDVSIBzgBQp60oTsY0EN3SLhCe3or8SLf728Pnfx8qUEguTnsH/29PCwcpCuvCLT081HVFM/yL4QwhZTipjCgx5a8gHwz+BbBjuWaCYTaTPAFPTFDP0LLjTmNqY6pYSN702FZ1slmBMOS+oHCiYhRzyL0RZw4p8t1SsePud6zeDJg5rtwuCq/Nwwd0UyAlhHdktU7DPFPdtGDcwvE0xVpQfKCLIXwD8jz9kjf4WWOZlWH1PgFydAVZzTmOqSDJI18tSPfsrmntSOH31dNQZDQ2k7LlWJ8Hmtu6u5tKaIMqsS/1IywnDFq9dzHg9+FhlzSs8wufRRR/zEkscuJPXzD71ZNUxt4z2GCgrFfEKLyPMDpHBDFjCVF4Hnor+It+Yypk5ImlPFs5zqFw4XUtua26W+iKITshlJcG2Wwmlft9ytuhuRqTo48cHa8+oVyRpFD5OsepKfKesltVYoxnpySHGiNtSciq+4Vw1TVBPgTwL4Z2goWbr8qItKoR5TUNuXs0cV5i6kDH0S5eFhKk0FxtalG1ilQGaT79+GsLoD85NgANQmeZ/pzNxr0lW/DKrmziUebAPeWuEhhhRVdV5lwxdiXSHFNJUJpnbICyqIf8buo8WCxXVZwJQxqjxhN7dlv6SSLqB+7aCI147cE/EEoZ4Blz82jvZtYlifiqmZc687/qgsKFaquSu7dv6bDFPJNfPQhtSxP7hXEVPVcs8fZJ9d4iiWKarHYHINmKIKkWskI7d/EZgSSRSskG4+m/bVyvS9bnxxhsFUGQ5SZ1699qgaTcHWVecSH7XrBCkm8j9uykhJDy69W01MmeUF1QhkNjShOVhoypQFTFHfoScN3jblIqKKSvdLpbpJOlVOXWD41CBI3rrSPiZxNJONJOtF69yGClVJik9Vl6xYUDk03Jxjym2qJ8mn4gfocf4/d+f701SWxvFLESqBAEJiAKVoowgvjEIgFSULAZ0haQapmwWQoA4SswTiwJhhiWN2TGYgamA1ii6JJrsmG3df1IYltGkZWksRguPoZP6jub/a3h/Pc++5955b5Z554cwo6K399Dzne77P9wnZyRRzVdlCD6XPbmUE8+oNCkZaU0zt28Ht8U67qMob8nUtKKZ3cFcKs4m0kj6cFtJVc6XEvo4rqoNSDVF6EtTxERGQut4dNZOfFIlEY9N4+RepMvcaFZ7TOVm1Ym+2VX2FwhpTxyUDGTGZZPPX7Dv+XxSMtKaYYg6g0TWrSSc5ar2+BahpnpFI6an1yvS+04dd7naYYioP9E4ISMUM1n1ZbMLRCe471NPapdInq7Yn+lQAZRdB6WeJqVOhY7JPumJAJtn+IfvztykYac0xxTxCU9YcNWy098oKCVM+adgfIBb6yJhS9CdCBZowvnc6HDYd8sdCNcj90S7RZYrbrFp1JAoXtEW8t5epC6GLp/Uup6QhRcUUjLQmmRLzJpw+F7FjAZyLI6v91oe5diktptTCH8k+dRI1t17HkOLss2HO6RfjfX/ooYqDqgz6Fm5rLxd6CSxcEgHZkG//H7KXqROhVtmBCrTPSvehp9bbfc0yxdzZ0Bqw5RCmfFMoU/OJrDOpZh2+3G3C7p1UTE02+4cUUkYjtpGMsoUffAMVDUcelno8AY9nrJu75kUcSzG+/Kuy4KBAlWtNF0UJcOH70WamDoUeSw9UmH02uyo3LRtpTTNVrAHV6sYdZ3RU+XrQGdeLGS39WqYlSinw+bF2Dqk5qb+vw8vf4TbWN9Y1nClL+/gAHngVPb8bQCryOhx+7RmZHk3vNO7R6cFALYyVuFMBNvXaPHuYOo2dVd78ZjNTirk5oH1Wbqr7n2UjrWmmtKHafOYIpcLbhWZRZO+nXrD/tQCem4SvvlKoqaWnlQ13+n1d7+GyWoDTVC0PTECNFEdU6SCnkstvMvImAjF274qojlThCUQDqbP0ch3RjqIAnKLvPtjMFNMpc1JA9tkf5F/wDyiRtjg3TGlDFdxxgvvPi1/OZn0Ui9zBC9qoatBspD6AqSoJIvDi0/gG1SI6y8jYNPIEZSO1yousSDgmGGobTDdOGWXKjW0Sv9jO1IB0Dj2kULxTOOqKfrZqpLXAlCZUznD/DfWi0X7X0p3ziRuVGab6gNMU5DmaUo0GIWhB5GMiRlX6ROR1tHZC4xlGR+SuwEi0VvSoQ4L6GSsvFxZN1ulG32vv7WaqTRr0ck9PoeCWZSOtFaZ0oHKA+y/Pj4reLevpNIr4Urr2kyWfe0UhfcpXiGnsUlXQrZuUxDsgxpSVH3s4CoxqP8X1QDQLYiR6KdNRX4bdf5lcWNLzRey9lrSfqeMSpgrAbBflV4BG2qJcMcVCpTUNyAFGJXfTkLejt3lBLfzlz2eM6fOutPLHHp78AlV5vRppY17Aja47UZQXKCai6rpvUP8xBsPpU1Uk2i0hsFxzKpX9TBGY0mkyBdhnk2tq55FVI601ppj8799qjZq745RApUJ3h1KkyByoVhLnGXdhRnbo7+rt6O3r18qbkH6v/jxcOldfTdWGI6AtQm+JXqaIHCnoDqwql0xt/B7KJVOQfRaYoPHS4hWVRaYY5pEWVJvPHZNSpsqjOJsZ3ZGY5SZKwEcv4c5K8ffWo/oFiFlIAk+5KFBACh5JRcF5blmkSuX7kHqjqj98+Ez2nzP2MpV8kMt9CrLPvgE2oBaLRlrLTOU/2tYcBb7PIUzJzkAcCK7ZbMgL1z2vGvWbRWbphVz5UE8vhc19ytNU/kP5NhWJRSeIHyDAQhUdU4jCutGcebYyFczpeUrHPptdFo20lplKB+yiUDllp+pSHoLm4tmZU39RVHSigb1rgVPXl+LxJaz0W5n0Eh2nSoXTVESh+A0aeICRaLReVejo5ak3GHmJEN3vSSv6Vs2l7le8qW2fza7bapVi9ZeCXDLFlOwmNc5UTin/fCrlLxuXzodmFvYtyLeqPiG4ZSmeSiTmJLqHonO+i9sLDpK8txWiXyQaMPQEgTH1/9PLfDEy5UPvfurlp7mf2p+5nFrVtM9mlws4z+wcyClTTOWzDS2hwhlMNany0mckg3BSX7GwFDIVHVcUgp5rOZ5aX5dC5YeaET0ENdj1sOIw9dC6rqon4XuoMPUJfRStGR8FZJ/9G/wKWkukpcIUU6SlqTulob5HuVG55jNDCFholoUrjBr257z+oY5UL/9GKpnl5+mw0KXnergBr/vlobyGel0hfUS+TcWi0xSeqpyg5iRdxv1+W3b7/dwZvx9on0WMfMNAmfiuJbdMMcXfaygVxlMyPstVo/L8nU0lpCPdlngBoKKG21P4MVRM9XJmqFuC67FX1ZDZArCCOePRifN7GLZS+SGriuSm2SpTJxCmVnfs96U/OSL82y1IocBcqZaMtJSY0lYqdoedwJT8sMRnMs/EZcN8b8xUSmoJ19l/prLDR9Pln0w/VNj+8Okb3OVUmbwnKhYuo/FUeoKjkfsqnf6pYUBO+932/qlOMeEvSapQIGVq8kF+rpliSrbQOKWgA4bpNF0GjLT5i7Kp8+ymND+zdKBkuL3k/JJynG9KQ3HP3A2XHaxFrX6DdmxTeqns5E51/T7foqQ6aWEtZHef74CwSX4BZTahugMUDEtspKXHFFP9HFUqzM2b+5yWH+74KJiXQcWCE2fPT+srqURcPnae3aZeIN9H8DSlL4JONl5CjlOKJo/wNJ0nO0gnO/24/qCcfCiPwube+VOhL1ED78a/8a97auFNTJEpxvUTqlTs9dznXmxKdpECKo4nbil/cVwY5zuEICXtB8mrgwuwMdk+FX5I6dEaCPwbuluUzoSPAfTNtvObvUztF3OToLjOn//TUo2sFihZkzSRliZTDIMqFeTF6Oe4Cnvw/AgWKmmFh6z4DV72c09hv0DqtD0JHqdGI7LjlBh/aX3pWSn0lYnjj0M6cbSPcYna5iyyTjHf71bQ+iLV2ugyxXyz7cDcFy8iKwhQuZblVR6wEvHFSrUcr4xiwncOvsF3Wn47Rav00xMpdPYpN1kO7SFMTCcp/qzl0Aq/9Y8UmEo++CRM8UOLrfx5PsfVhcIiCAtL6/EUDtR6Kp56UQx9o2a319cMRCtVwcYkGVOx16O0Hg8XKWo9DSd1TlHfkuWlCwVYddBU8WeBqRPiMLnKII1FOA6KNlNMCQLV7t5N/Rta0YGqZTmFUpWKJxbFw6RikmI/32nvbvJ39S/IQsDqQDODXPaLdVN7PEzAL9cbaH+BfK6H4Lkr3gDigH61k6lzojxyjwpThCoFdaaY9l3HSX/NOFSirbx9kWVHjVUqEU/MfiXWWD3grF+eK3mungd2UcgligC1pwM7t0qr9G+/DMyfuip8BeCiXd36YCNTA8IOWRyks9aKPw1TzDC8U60V7FmmmjTOSj2iCD68PJuKs1yJkh/7YyIeT91YPC/+NXgRGoHlAe+IDsqZGqH2dGqZsb6R6DrZ+JxE6EC1YeNMt0PiceomJabIjLQ2MMW0g1Bt7eHI52x3Rq9fGffcn45wcV2bWZxdZ1niViq1Prs4c75F/R3SFr88g0wFZP2I4UFqD1dl1jdrZJ6vcOtbDdkCdj/YxtQFcfrBOCWmyIy0djAFjyjY/vPeZUr0vfZxVj71ra1kaGhB9dlrc3NLc3PXzlbuy14feCc1xXM90YC/ngqEKSbxacmMRFdS/KtiYO68eEP1X6jF7oFtTB0XjlMtQVqLyEhrC1PMI+DzaPOnvVv8cf7ZBX8FsuWwdZxmO2xTDxxnRswU3zwViNm0TzWATiiS1WZgo0LbPdhP2492MfVKcMTfpcYUkZHWHqbAz6N3e3kwvd+rKVn0Nzeht1t9BDM8ZKseZMoTy1XtR9zf8aUBpoSOCyjqIbi69d4CUy+rNUo/QRtJUmMquOb6ZEy1Q0nujplLD+qAkz71PMTCoQ7svthvQNxuUNd+MXq1X6PpfcqISIH3z7MlzJppplz3k8+K8H2U70f8jh5SRCqFBaba9xnbqLacM5YeEdd7mn01mSqwqcbX1Y/rhf3oxlZWmluNos50b+/pkGHlryQJjqz9aJIp1zgXzoUo3IdeCRXnfYpMkagUppkquKd54wQUzruOGUulipSQ7VdTU1M9PZcn9SyAsJZ+uK4e6bcYsUtLbzTfL99qgCkxagW+aNE8UuFM7RvXipE8FmrjfigK0lwEKoVZpjjFX2vKaIv682jnG8cw5V2hsNQx6ieryvFQCNvufA8atPjJdDXDKsVt8HCzqgUVytQXSc0YyW8F/+wtqkwRqBTmmPpuXC+c06U+UG3/3TFMddFg6opcLMzjgYqgoRCDilYPakb/cvNZSaeMMCVkrRTDG5UWVPs1Ptc1oBIVivxxqkwRGFfNMLXvnpjqpGF+z1cbgXcds0/VrFBZXRKgGjwaAUa8t0/hoY2V0XqaUvPTEo0cqF49ydfaqFbffjTI1F3ZEEH1z3cKF82VQbprq90GpiR7KV79uZIOPk9NmaXocjNS/V3STyKbjuWq18NABEWr8Y0KvGfhHaEf3xtgquC+zrjbtJB+jzJT+sZVw0xVjkuiBzefYxUI8Omw5RSmTJ+m+ipkLoyFClKmDnPv/dqYLSLFYXjaAdk6ZoSpV4JVuASLWNhE7LQQUzc39WZIXxW2qeIg7aWbSGuQqYK78jBPdBo2cHX9xilausnT1GX+2ngoIwj2uDV0AqAas6l3Xh1GVt9APH9eTB97crVzYOBiW9u5U0eOHr2qE0sBDU0TS7i34Fa1HxCd2WJRG6pTob8qDl0SnWGNdL0D0iB2/kSVqZs/Eg5uK4BSaoYduE311kySEbWQLvTcfarTlO6kHI9wQWVLxgskNXZXEVJVeO7ckQtHT5wmFAOFntuibXRibRJqUVQy5bpFMEPwsdgHCc3H+bqlgHAVPTUxN8cIU5X3iach3geaz77+g72z7Wkq2+J4S5Xi1BQYEgNKS0t46guhXgBFCBJ5usmEi4AGGEQoYOCChIvjxERvQKJvrkyudzRz38yLq87IvLi0SVt6aNMmLaEtgBq/0uzz0Pb0PO99Dqiw/xlxLMfzgPt31l5rr71Ww/Fg6kZ2ipHxu58UIMVOm7jGX56SLrTCBCmCR1iLrMOB3NzNLs5UM31EoWgtIJ9ve+/Te0mmToMXu08Wqh4mcaMBovqs4JgXSggq0Yyps2LdEE1KZn4biWXD8WDqL7x125Hrd+SYGuHEDTmt3vJlCq2QfaAmOTUzQ5rsnr8ounHegRpZ7BOHiqlf+TgmDpUvlvj0UYwpQ9GTmJJut85U3oZg9VmYl/sf8EtUEEyVxMXa4XCSY3MEQy3RYxP2Oy8QDL8MtcBbfl42+CbgUHUcRtHMMqmmHqVIp5RYtZql55SG/25IQOXb2E5++viex9SpH59IrzX50u/tduYvmZ7CVJ8VklAm/aZBs7nff2JiruWbBkmni3KnPpQcmyXfb//Kyy4SWLL6/h8K89ApXmRaAZD/itweBIEpDZ5FugGVFakPvfi+qnVm9teQlIYDTO4i///06ePHj+/fv6/MKRpt+vcT+bXbyMGqgQlH0gEKwfTZA6jNsTlh6ERaGKZM4j+I+C+PGsjHMRX9IPLo8Xe6Y6RrXI+IzdTlS+UjI5e+1em+V7JTXlHgj2oFwO2VE4Ss82IwQUz9YHPU2WqRraCka03IZyzQX2OxbYV7NcIfmElZtYep6ieUPht+aIJ6mN+hE2m/8fFeEeJxv7MRiTfL9t+Bnm6I+I8bO4vHiSndSHbcjs3UPaPAhPAGdERbIF+I19MNbo1qugNu6gfd0y0dDbwvW+pP15ZQBoqPmgwqQyo1xO6npounVUYoSI3GYBNpv/HxJBFL/13q4WM+qXaJrtPHiiluraPzQibJmDFUP0GvvHIiBvzIH9nOFyKebugPBqdh55xuNI+qRX4jlWKoFOc3uFIOezNT1E8wQgHtg5gSsBVp4Zg6k5B5o4i3y1nWHWudFwxHZAzVnVwZRM0WM0vCPWsMFk6P7IByl2pyOigQ1pBrI+w26rQ2VCmXSrxmMVJqa/xhKg+vIm0LharPwvsgb2BLlcMxJbGyIOM9us6cFKbusYZh7r2sLiCS0ku7V9S8bTh78gegCimEamogSBCEmwuVXItsM+KPo0VB3p+Wlmo7+TYVfLalI/ZC/XE29qGzeYT2+++MaseU7p+IybyDupPC1N+4sQyx3VKQU0FyA72RCHCgCiqDailE0UhwWhfIzTjRqzNJlVRat6WgSmq1+za6knItqtMpUILpsxGXCfpZ/hDYmPxAQ6Zy9pA2cr01nRimyrOi7qkeA9cg0xI6lBkqcvqnYBf9WIBhEbhgYxBmCtGd0smVqrCngl4SfQBhXKkP6XwC56vUhmIwVjXyQR4JeDkHJu2Y0hUlUWZ+rbqTwhRnpyEwVHeuX74EfT6HSBfQDh5UoWC/TELF1HQwRGQOH1PuTQ0YkX8gfYqgKvk1rH7el3iYns85Z1P5TzrB9NntDwjFu7hLVCQkUom00EzpCqFnwZGDxeOOlM5Y/t21GwKLu99eLs9FOd9FkXjBVAaPFCXuIDEs4TJPjoUCrO3DbKgG3IcRSU/PwaSUcnlyHqt1qsL7K+nItvNlOqxILk7xQ2bxFZRn+YXPlNQSFTxTurY45Htkf1V3ImQcOX/5erlGJ+M3oSeoET4W5H8jEOwYNokR9YJDIYBqWNQWui28NMPDiFJ41tft6eEUVWGqfNsJV+aFDZBqz1jWUwJhaLQEuewlKnrFTCKRFoEpyCDoiUFKW5WKZNJyF35pUxUIvBhb4mGlX+q3BAPcw0moSLsmlLdbrM8vrSk+V1DVYUktiqFJfrNiVzqu9iCJXNQyfLCSmczZZz1DrEnBD/y1nW20VVJDgkMUkEQiLQpTUPGaCEYKTWYR92YyxIeKoir0on94aYp5T+unlob7LeBDQuDgYHBK5AIsHvNrytDNVJ3yrfSkO/E8gURVZOdhm4F9zWb2PTzlL5gmEcfiGx5SABOTpkzpWqMRpS+SzWWMB5KuiO1NnAoEBKsrAawAQi/M01brtNniDoE/CZZhIgKBeYNwhmGxRvdeB1PxD8i0eABPVWTPNXgmyzJWsu/hRx8vrSm2iVhePL1ExcJEvEkhGlO6hmeK5n+xhKsN06GdoaLXi+Z5cQr2ripAXCgQyt5rxfG+5sFJagiRBCgN1KWwPsXQhUxsre15MgIBVCy84xpkZd0Zm9mGjz2yNcnj/h8PKYkoBSJTwKlS4FqG91eKMBtaelS0SzUcDBBuRBHBEJkkmE8cnplS3pfqpY0VsS58Fo0rXK6KJA/eLbLzWO3jnvWurJs4kxnQGmzhe8QlCmhfLDXoX6hM6Uoe7ITlZruLBowGss6Jr8IiQ0W4gwOkL6Uf0DARiSPnLEQppTz2CCka/DmaiMhaqOS+a/WsiRMRGXJm38XjKF9vkfO4Tfv8s22KOWe/8o99qHRr8eiDaFxsFrwdj7oGT2Ew0CXSutpCVQqbDyBBRYSC0+QCsd4sagNVK3ccpj6ZZzzLvJhGF58d7CTCwvYqFokno5vvBs9mD6zqRoHaSq1n+VJRZGhU4HStEMcqzyMqGny+E4/wHz2x82Gl7QzmQoWsorkNFFRkAh80VcCVotZ7hZGyaoNUOxRSnnVP5YXsM5xqHXz98+b+XjIRj8fDQJFwPJ5I7u3sb7pWlwtLOMMzt4cL5teunNHlZ5vRvQT19OTDJ/ei4NHbSjAVh2GlKKio2iuT0xKRCrF5n2VeHCmYUpkSGvLAq4KXamI4XVR4a21hZua1y+V6/Xp1dXlwsa31lMDbvuU+MFLGY/fvf7q1bXB59TUp8PCLhUUmzMRhWSkKDjqzdSwAZaqAkaITA/OF9yFqE6Bo9qBotg7xcjZgFfvseLxgqUMq1TiRzo0lFHtStJHSXbGIbyRWrUoPosZb4NMijTbgSI3b8HDBkpfsFoxU641hMvWIUERUYIzOXhctfFGgwY3noSIF3KqXPdVw4cUKMOtrb8GRZSwNrBQVUKC9n0mSKjch40eFgqF+euuisUD8YIfqG2/xqFNfnVJjZbSRk8z2OjxYsJQMlypFkzkL7f8Y9MPTwAhJHBgi82uZzcBXpEq6EDVqb73ao1rNNqfsZS50Vb4kD8V+FJYiGcxKgw4FqdrLS2NmMrkvJJioFCD655ltkhcLDmtXb0p1Hg3U2GMXN1e51RXUbsfGigt4rGAp1DnlsfFz6T3FU/P9HQSFEPmL+S3kfjHtWEptAtY7LLK2T3U4vVI9Uuvr5KyusqXL7mSjleus7qrLo3vIDUG6XlgnXWbl8XGLg0XB5NS8Y6zfOk3Kau0fG17Kz6zb6MsGFJxPdXaSUWTFt64Cia92sqkVqaHGjBWzYQuFBal8mIVci4M9YRMLguU7BpSdTnUuhWCH38pcyI6KLL1af7VOr2E19vXY7JgnLBRx6y1XFUsSYS2Wrsmkr7EqZ1R18I/vUjHZrehBwfbKvLyKFpu92ojHBhaiqrI7gcqYLsJtsRaLeUL5xQUWqAwm1cG/Hg4QadfHjspUHh4RWGqlt2QRRaJhkYtXmAvKSvVsg6XXl5YVVLmhpTo7nZ2edN/GnheOY6awPpeuZBNFQqXEIbJYOqqsBQ6HA8BkHnCjqUztzRsauU2x0xGMIcwU1md1qbIaql00Kw6xQ0Q4DiVFycl0IGi+IDcxxExhHZ0K+C0KC9xaq+piPodUokqLm6fyKfqcQt+yz2KmsD6PjAI5DQ6NkTrHDzIO6DW5e7vnvljikLEZM4X1BblZZi2RYjZMZWUs5Wt0p9USybC2WcwU1hejYg3nfRl8ajo0S/hTJNuXwJQBKOf27du1QEXdpK4CNdGamOjs7O299dtvN0nV36xPa45W5gPwTfIYcGRvb29n58QEcwrybNRpu2sbamvBhXLABfEI/vJk1QyprLVdI51jSFw5mqeoOAqmDCYTQAYM51oSlqaJps7OW4CNuYW1tYWFmZmZu3fvejPa8vv9Xq/f6/dvbdH/T30KtLu7S33CiDk+8wF1CPmfn/rYS39EnczL/hteL7jiXXDhBXAHawDKW4BAcFvg5oq6a2tPAehMJgzdkStfMyNVKjSrLD6ix2g8BKZycoDF6e5u6uwF5MzNrS3cpUY1Pcy3yF9bgJFd8MXPjH4/85v3CJS+mD/1dXeXhG+XuR1/irqFNWADbwLcmoB9qwWY4UF/yCrThiiL0BJU2cBRIeXUJkYBzFD31QnAUD0gaCZtI8Bw9XtJiDJD9euQ38vcth+QtuVlYJ8BlNXf7O2cuNqNCTsMaRWiEMyb0x/VU9SpYgqQ1NR5s560Q9RcjXrt+73+r4ofOBMHTBlJG0VYPcCr9jaG60ub+qnf0KtKfWhMGWqvds7RKPmZ+Zv3pImZPYJZ4sJc59U/2zuj1cSBKAwX7a6C4AqCdDFaC9UaQFuQShtvFky7V6Egkd4ILQWJCN70NXLXfQRhLxcksD5CX2szSWJNOkm2ceLo7v/dFOrYJMXfmXPOf2ZGkMTGlJgWpnjxeRJDU0VVH28r+NkfdY11pQ1ZbMSAlaYGPPNLtY/XfCXtFXoKUJbWhTDi8+6cj8rVccwIq8XxMbIxNKUb0FRAOnEqQRkMl34kIS6I+fgWCi5Lv2f6LhQ/Qtd+o8eOZleRoC1XTYYxGz4iptqE9CCgKUNoFsJ01a82m0nsjxmTkyDd3Fy/hOf9Um1Zneqa+4H673IUbm3L/KnpHeWxnYIoNsQnjN8eXbSuKMFWvloSj1okcS4mc9JUHOjdHtZx8Zmz07vnyPpUqn0ryR1bXAsnjb5c/IsSc5wdr863yGKs6VNVlm4hpoSKU/2I2lVVWA+a/HtlfuH2GPSNld5c7Ce9rF9YAT6KHHFOSF1ZUUnR13YakZqvXfZ1JzJjT9RjT0OL5XrB11TRTO/MFbkrEVcFqlIJh1N+VTRCQyZhVwKqi4gj6C0yZye9yUf9frnUiFj7urJlrZjNTJmNPasm15tkWfOM5XLdm2QkH/641yQuKWJLcv2DxsoOqJk3PSU+QOICvG1/gm8i+bxfI2wrlkL4thKlHalQUf2zl5SBd5v70tO2j/aQOM+lbldWlPl8OLTM5cRG6zHRLjzmWP8vwucYzwDDCHoHcdCaoiGe9qE6nxMLbVcqtm3TOvyzvEKqfrAmfKIZ+PxH6cpuBFRUEwVtV9l6or0eudzTyFYbcd4W3U4Pp1FDNlFMCdqoCmnmGFJQh1YviDJ3h5I3yk63yFu3x1frMofmBZ+gnN3L/Tn7MzciUxjViNcFPg9ANVGcR0xo2+hJXPsK2vhjnz5g+MdA4rREyiREiZjeT2SegKvEqepL889eU0fW0OcLtqeqPG2SEaK2vnxz4FZK3NJ+F+97pyblqGQGNAX4SC0yWe50X+WPeTqTDm78q79awGLsGZoCfMkMIl2ypIRVaHK/0/PJXzXxXkJTgDP9SPORUOU7Ra3orTZ5/nkZOOgOmgKcaTDdoDnpueohJI1ucwpNAc4UmB4kkHxcdU8xUKxTg6YAZzw+2X244Yvsr/uQl8+gKcCZ1tXRkSiWCoVqoyHuxy2Xw049LENTALDlGzQFAFPq0BQATPkOTQHAlHNoCgCm3EBTADCl/ABNAcCUXraeNanX8K8AAAAAAABgm/wBcKe5dPYduzkAAAAASUVORK5CYII=" alt="cats logo" width="15%" height="10%" />
               <h1 class="projTitle" style="margin-top:25px;">${catsprojectName}</h1>
               <h4 id="option" style="display:none">Tag Details</h4>
            </div>
         </div>
         <#if stepmap?size !=0>
         <label class="switch" style="margin-top:2px;">
            <input class="switch-input" type="checkbox" id="togBtn" checked="none"/>
            <div class="slider round">
               <span class="on">SCENARIO</span>
               <span class="off">TAG</span>
            </div>
         </label>
         </#if>
         <div id="displayInternetError">
            <div class="modal fade" id="myModal" role="dialog" tabindex='-1' aria-hidden="true">
               <div class="modal-dialog" style="width:80%; height:80%">
                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Link Content</h4>
                     </div>
                     <div class="modal-body">
                        <iframe width="100%" height="500" style="overflow: hidden;"  frameborder="0" marginheight="0" marginwidth="0" scrolling="yes">Loading&amp;#8230;</iframe>
                     </div>
                  </div>
               </div>
            </div>
            <#if graphParam=='no'>
            <#else>
            <label id="graph" class="switchGraph">
               <input class="switch-Graphinput" type="checkbox" id="togBtn" checked="none"/>
               <div class="slider round">
                  <span class="on" id="HideG">Graph</span>
                  <span class="off" id="ShowG">Graph</span>
               </div>
            </label>
            <div>
               <table class="graphTable">
                  <tr class="noBorder">
                     <#if errorCodes?size != 0>
                     <td width="3%" class="colorbg2">
                        <ul class="graph1">
                           <li class="lipass">Passed</li>
                           <br/>
                           <li class="lifail" id="customFail">Failed</li>
                           <br/>
                           <li class="lipartiallyskip">Partially Skipped</li>
                           <br/>
                           <li class="liskip">Skipped</li>
                        </ul>
                     </td>
                     <#else>
                     <td width="2%" class="colorbg2">
                        <ul class="graph2">
                           <li class="lipassnograph">Passed</li>
                           <br/>
                           <li class="lifailnograph" id="customFail">Failed</li>
                           <br/>
                           <li class="lipartiallyskipnograph">Partially Skipped</li>
                           <br/>
                           <li class="liskipnograph">Skipped</li>
                        </ul>
                     </td>
                     </#if>
                     <td width="4%" class="graphTitle colorbg2">
                        <h4 class="titleOverallGraph">Feature Scenario</h4>
                        <div id="piechart1" ></div>
                     </td>
                     <td width="4%" class="graphTitle colorbg2">
                        <h4 class="titleOverallGraph">Gherkin Steps</h4>
                        <div id="piechart2" ></div>
                     </td>
                     <td width="4%" class="graphTitle colorbg2">
                        <h4 class="titleOverallGraph">Actions</h4>
                        <div id="piechart3"></div>
                     </td>
                     <#if errorCodes?size != 0>
                     <td width="9%" class="graphTitle colorbg">
                        <h4 class="titleOverallGraph">Error Code</h4>
                        <div id="piechart4"></div>
                     </td>
                     </#if>
                  </tr>
               </table>
            </div>
            </#if>
            <div>
               <p id="errorMessage"></p>
            </div>
         </div>
         <#if stepmap?size !=0>
         <div id="TAG" style="margin-bottom: -15px;">
            <div class="container-fluid" >
               <div class="row">
                  <div class="col-sm-12" style="padding-right: 0px;padding-left: 0px;">
                     <div class="table-responsive" >
                        <div id="search">
                           <input type="search" id="myInput" onkeyup="myFunction('tag');" placeholder="Regex-Search Tag name" style="background-color:#f5f5f5;border: 1px solid #bfa8a8;">
                        </div>
                        <table class="table table-bordered tagClass">
                           <caption class="titleReport" style="margin-top:-25px;text-align:center;font-weight:bolder;text-transform: capitalize;">Tag Level Report</caption>
                           <thead>
                              <tr>
                                 <th class="columnHeader" colspan="5">Steps</th>
                                 <th class="columnHeader" colspan="4">Scenario</th>
                                 <th class="columnHeader" colspan="1">Feature</th>
                              </tr>
                              <tr>
                                 <th class="dataAlign">Tag</th>
                                 <th class="dataAlign">Passed</th>
                                 <th class="dataAlign">Failed</th>
                                 <th class="dataAlign">Skipped</th>
                                 <th class="dataAlign">Partially Skipped</th>
                                 <th class="dataAlign">Passed</th>
                                 <th class="dataAlign">Failed</th>
                                 <th class="dataAlign">Skipped</th>
                                 <th class="dataAlign">Partially Skipped</th>
                                 <th class="dataAlign">Status</th>
                              </tr>
                           </thead>
                           <tbody>
                              <#list stepmap?keys as tagValues>
                              <tr class="${tagValues}">
                                 <td class="tagNameStyle dataAlign">${tagValues}</td>
                                 <#list stepmap[tagValues]?keys as statusValues>
                                 <td class="dataAlign keyValues">${stepmap[tagValues][statusValues]}</td>
                                 </#list>
                                 <#list scenariomap?keys as sceValues>
                                 <#if tagValues==sceValues>
                                 <#list scenariomap[sceValues]?keys as status>
                                 <td class="dataAlign keyValues">${scenariomap[sceValues][status]}</td>
                                 <#if status_index==3>
                                 <#break>
                                 </#if>
                                 </#list>
                                 </#if>
                                 </#list>
                                 <#list featuremap?keys as featureValues>
                                 <#if tagValues==featureValues>
                                 <td class="dataAlign">${featuremap[featureValues]}</td>
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
         </div>
         </#if>
         <div id="SCENARIO" style="margin-bottom: -15px;">
            <table class="scenarioClass">
               <#assign overAllPassCountScenario=0>
               <#assign overAllFailCountScenario=0>
               <#assign overAllPartiallySkipCountScenario=0>
               <#assign overAllSkipCountScenario=0>
               <#list bddReportOutcome as reportforScenario>
               <#if reportforScenario.stepsCount==1>
               <#if reportforScenario.bddDefExecutionInstance.status=='PARTIALLY SKIPPED'>
               <#assign overAllPartiallySkipCountScenario=overAllPartiallySkipCountScenario+1>
               <#elseif reportforScenario.bddDefExecutionInstance.status=='UNDEFINED'>
               <#assign overAllSkipCountScenario=overAllSkipCountScenario+1>
               <#elseif reportforScenario.bddDefExecutionInstance.status=='PASS'>
               <#assign overAllPassCountScenario=overAllPassCountScenario+1>
               <#elseif reportforScenario.bddDefExecutionInstance.status=='FAIL'>
               <#assign overAllFailCountScenario=overAllFailCountScenario+1>
               </#if>
               </#if>
               </#list>
               <#assign testCaseFailCount=0>
               <#assign testCaseSkipCount=0>
               <#assign totalTestCases=0>
               <#assign noActionCount=0>
               <#assign skipCountforGraph=0>
               <#list bddReportOutcome as reportGraph>
               <#assign totalTestCases=totalTestCases+1>
               <#assign sizeValue=reportGraph.testStepInstanceNew?size>
               <#if sizeValue==0>
               <#assign noActionCount = noActionCount+1>
               </#if>
               <#list reportGraph.testStepInstanceNew as testStepsValues>
               <#if testStepsValues.state??>
               <#if testStepsValues.state?contains("TERMINATED")>
               <#assign testCaseFailCount=testCaseFailCount+1>
               <#break>
               </#if>
               <#if testStepsValues.state=='FAILED'>
               <#assign testCaseFailCount=testCaseFailCount+1>
               <#break>
               </#if>
               <#if testStepsValues.state=='SKIPPED'>
               <#assign skipCountforGraph=skipCountforGraph+1>
               <#if reportGraph.testStepInstanceNew?size==skipCountforGraph>
               <#assign testCaseSkipCount=testCaseSkipCount+1>
               <#assign skipCountforGraph=0>
               </#if>
               </#if>
               </#if>
               </#list>
               </#list>
               <#assign testStepFailCount=0>
               <#assign testStepPassCount=0>
               <#assign testStepSkipCount=0>
               <#list bddReportOutcome as reportGraph>
               <#assign flagForFail="false">
               <#assign flagForPass="false">
               <#-- newly added <#if  reportGraph.scenarioStatus=='SKIPPED'>
               <#assign testStepSkipCount=testStepSkipCount+1>
               </#if>-->
               <#list reportGraph.testStepInstanceNew as testStepsValue>
               <#if testStepsValue.state??>
               <#if testStepsValue.state=='FAILED'>
               <#assign testStepFailCount=testStepFailCount+1>
               <#assign flagForFail="true">
               <#elseif testStepsValue.state=='SKIPPED'>
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

               <#assign count=0>


               <#list bddReportOutcome as report>

               <#if report_index == 0>
               <#if report.bddDefExecutionInstance.suiteName??>
               <tr>
                  <th>FeatureId</th>
                  <th>ScenarioId</th>
                  <th>Total</th>
                  <th>Passed</th>
                  <th>Failed</th>
                  <th>Skipped</th>
                  <th>Execution</th>
                  <th>Duration</th>
               </tr>
               <caption style="margin-top:-15px;text-align: center;text-transform: capitalize;font-weight: bolder;color: black;">Detailed Report For ${report.bddDefExecutionInstance.suiteName}</caption>
               </#if>
               </#if>

              <#assign testStepFailCountDetailReport=0>
              <#assign totalActionCountDetailReport=0>
              <#assign testStepPassCountDetailReport=0>
              <#assign testStepSkipCountDetailReport=0>
              <#list bddReportOutcome as reportDetailedReport>
              <#if report.bddDefExecutionInstance.id==reportDetailedReport.bddDefExecutionInstance.id>
              <#assign flagForFailDetailReport="false">
              <#assign flagForPassDetailReport="false">
              <#list reportDetailedReport.testStepInstanceNew as testStepsValue>
              <#if testStepsValue.exec_inst_id==reportDetailedReport.bddDefExecutionInstance.id>
              <#if testStepsValue.state??>
              <#if testStepsValue.state=='FAILED'>
              <#assign testStepFailCountDetailReport=testStepFailCountDetailReport+1>
              <#assign flagForFailDetailReport="true">
              <#elseif testStepsValue.state=='SKIPPED' || testStepsValue.state=='UNDEFINED'>
              <#assign testStepSkipCountDetailReport=testStepSkipCountDetailReport+1>
              <#assign flagForFailDetailReport="true">
              <#elseif testStepsValue.state=='TC TERMINATED' || testStepsValue.state=='SCN TERMINATED' || testStepsValue.state=='SUITE TERMINATED' >
              <#assign testStepFailCountDetailReport=testStepFailCountDetailReport+1>
              <#assign flagForFailDetailReport="true">
              <#elseif testStepsValue.state=='PASSED' >
              <#assign testStepPassCountDetailReport=testStepPassCountDetailReport+1>
              <#assign flagForPassDetailReport="true">
              </#if>
              </#if>
              </#if>
              </#list>
              <#-- Added for making failed scenario to have atleast one failed action starts here
              <#if flagForFail=='false' && report.scenarioStatus=='FAIL'>
              <#assign testStepFailCount=testStepFailCount+1>
              </#if>-->
              <#-- ends here -->
              <#-- Added for making passed scenario to have atleast one passed action starts here -->
              <#if flagForPassDetailReport=='false' && reportDetailedReport.scenarioStatus=='PASS' && reportDetailedReport.testStepInstanceNew?size gt 0>
              <#assign testStepPassCountDetailReport=testStepPassCountDetailReport+1>
              </#if>
              <#-- ends here -->
              </#if>
               </#list>
               <#assign totalActionCountDetailReport=testStepPassCountDetailReport+testStepFailCountDetailReport+testStepSkipCountDetailReport>



               <#if report.stepsCount==1>
               <#assign TotalCount=0>
               <#assign PassCount=0>
               <#assign FailCount=0>
               <#assign SkipCount=0>
               <#assign PartiallySkipCount=0>
               <#list bddReportOutcome as report1>
               <#if count lte report1_index>
               <#if report1.stepsCount gt TotalCount>
               <#if report1.scenarioStatus??>
               <#if report1.scenarioStatus=='FAIL'>
               <#assign FailCount=FailCount+1>
               <#elseif report1.scenarioStatus=='SKIPPED'>
               <#assign SkipCount=SkipCount+1>
               <#elseif report1.scenarioStatus=='UNDEFINED'>
               <#assign PartiallySkipCount=PartiallySkipCount+1>
               <#else>
               <#assign PassCount=PassCount+1>
               </#if>
               </#if>
               <#assign TotalCount=report1.stepsCount>
               <#assign count=report1_index+1>
               <#else>
               <#assign count=report1_index>
               <#break>
               </#if>
               </#if>
               </#list>


                <#assign durationTakenforScenario=0>
				<#list bddReportOutcome as reports>
				<#if reports.bddDefExecutionInstance.scenarioId==report.bddDefExecutionInstance.scenarioId && reports.bddDefExecutionInstance.id==report.bddDefExecutionInstance.id>
				<#list reports.testStepInstanceNew as testSteps>

				<#assign finalDuration=testSteps.formattedTime?replace("<","")?replace("sec","")?trim?number>
				<#assign durationTakenforScenario=durationTakenforScenario+finalDuration?floor>
				</#list>
				</#if>
				</#list>

               <#if durationTakenforScenario gt 60>
	            <#assign durationTakenforScenario=durationTakenforScenario/60?floor>
	            <#if durationTakenforScenario gt 60>
	            <#assign durationTakenforScenario=durationTakenforScenario?string["0.##"]>
	            <#assign durationTakenforScenario=durationTakenforScenario +"hrs">
	            <#if durationTakenforScenario?contains(".")>
	            <#assign durationTakenforScenario=durationTakenforScenario?replace("hrs"," mins")?replace("."," hrs ")>
	            </#if>
	            <#else>
	            <#assign durationTakenforScenario=durationTakenforScenario?string["0.#"]>
	            <#assign durationTakenforScenario=durationTakenforScenario +"mins">
	            <#if durationTakenforScenario?contains(".")>
	            <#assign durationTakenforScenario=durationTakenforScenario?replace("mins"," sec")?replace("."," mins ")>
	            </#if>
	            </#if>
	            <#else>
	            <#assign durationTakenforScenario=durationTakenforScenario+" sec">
	           </#if>


               <tr>
                  <td class="dataAlign">
                     ${report.bddDefExecutionInstance.featureId}
                  </td>
                  <td class="dataAlign">
                     <a href="#${report.bddDefExecutionInstance.scenarioId}_${report.bddDefExecutionInstance.id}">${report.bddDefExecutionInstance.scenarioId}</a>
                  </td>

                  <#if DETAILED_REPORT_BASED_ON?lower_case=='step'>

                  <td class="dataAlign keyValues">
                     ${TotalCount}
                  </td>
                  <td class="dataAlign keyValues">
                     <#if PassCount gt 0>
                     <#assign passPercentage=PassCount/TotalCount*100>
                     <p style="color:green">${PassCount} [${passPercentage?round}%]</p>
                     <#else>
                     ${PassCount}
                     </#if>
                  </td>
                  <td class="dataAlign keyValues">
                     <#if FailCount gt 0>
                     <#assign failPercentage=FailCount/TotalCount*100>
                     <p style="color:red">${FailCount} [${failPercentage?round}%]</p>
                     <#else>
                     ${FailCount}
                     </#if>
                  </td>
                  <#if SkipCount gt 0 || PartiallySkipCount gt 0>
                  <td class="dataAlign keyValues" style="color:#56aff1">
                     <#assign skipPercentage=(SkipCount+PartiallySkipCount)/TotalCount*100>
                     ${SkipCount+PartiallySkipCount} [${skipPercentage?round}%]
                  </td>
                  <#else>
                  <td class="dataAlign keyValues">
                     0
                  </td>
                  </#if>
                  <#if SkipCount==0 && PartiallySkipCount==0>
                  <td class="dataAlign keyValues">
                     100%
                  </td>
                  <#else>
                  <td class="dataAlign keyValues" style="color:#56aff1">
                     <#assign execution=PassCount+FailCount>
                     <#assign execution=execution/TotalCount*100>
                     ${execution?round}%
                  </td>
                  </#if>
                  <#else>


                  <td class="dataAlign keyValues">
                     ${totalActionCountDetailReport}
                  </td>
                  <td class="dataAlign keyValues">
                     <#if testStepPassCountDetailReport gt 0>
                     <#assign passPercentage=testStepPassCountDetailReport/totalActionCountDetailReport*100>
                     <p style="color:green">${testStepPassCountDetailReport} [${passPercentage?round}%]</p>
                     <#else>
                     ${testStepPassCountDetailReport}
                     </#if>
                  </td>
                  <td class="dataAlign keyValues">
                     <#if testStepFailCountDetailReport gt 0>
                     <#assign failPercentage=testStepFailCountDetailReport/totalActionCountDetailReport*100>
                     <p style="color:red">${testStepFailCountDetailReport} [${failPercentage?round}%]</p>
                     <#else>
                     ${testStepFailCountDetailReport}
                     </#if>
                  </td>
                  <#if testStepSkipCountDetailReport gt 0>
                  <td class="dataAlign keyValues" style="color:#56aff1">
                     <#assign skipPercentage=testStepSkipCountDetailReport/totalActionCountDetailReport*100>
                     ${testStepSkipCountDetailReport} [${skipPercentage?round}%]
                  </td>
                  <#else>
                  <td class="dataAlign keyValues">
                     0
                  </td>
                  </#if>
                  <#if testStepSkipCountDetailReport==0>
                  <td class="dataAlign keyValues">
                     100%
                  </td>
                  <#else>
                  <td class="dataAlign keyValues" style="color:#56aff1">
                     <#assign execution=testStepPassCountDetailReport+testStepFailCountDetailReport>
                     <#assign execution=execution/totalActionCountDetailReport*100>
                     ${execution?round}%
                  </td>
                  </#if>


                  </#if>

                  <td class="dataAlign keyValues">
                  ${durationTakenforScenario}
                  </td>

               </tr>
               </#if>

               </#list>
            </table>
         </div>
         <div>
            <i id="addminus" class="fa fa-chevron-circle-up"></i>
            <i id="addplus" class="fa fa-chevron-circle-down"></i>
         </div>
         <div id="detailTable">
            <#assign stepdefPassCount=0>
            <#assign stepdefFailCount=0>
            <#assign stepdefSkipCount=0>
            <#assign stepdefPartiallySkippedCount=0>
            <#list bddReportOutcome as report>
            <#if report.bddDefExecutionInstance.scenarioId??>
            <#if report.stepsCount==1>
            <#if report_index!=0>
            </tbody>
            </table>
            </#if>
            <#if report.bddDefExecutionInstance.tags!="">
            <#assign nameOfClass=report.bddDefExecutionInstance.tags?replace(",", "_Table ")>
            <#if nameOfClass?contains("_Table")>
            <table class="${nameOfClass} detailClass">
            <#else>
            <table class="${nameOfClass}_Table detailClass">
            </#if>
            <#else>
            <table class="emptyCatsClass detailClass">
            </#if>
            <caption id="${report.bddDefExecutionInstance.scenarioId}_${report.bddDefExecutionInstance.id}" class="item">${report.bddDefExecutionInstance.scenarioId}</caption>
            <tbody class="tbody">
               <tr>
                  <th>Description</th>
                  <th>Condition</th>
                  <th>Action</th>
                  <th>Test Data</th>
                  <th>Expected Result</th>
                  <th>Actual Result</th>
                  <th>Status</th>
                  <th>Error Code</th>
                  <th>OR Reference</th>
                  <th>Duration</th>
                  <th>Screen Link</th>
               </tr>
               </#if>
               </#if>
               <#assign sizeValue=report.testStepInstanceNew?size>
               <#assign paramValue = report.bddDefExecutionInstance.scenarioId+report.bddDefExecutionInstance.id?string+report.bddDefExecutionInstance.exampleSeq?string+report.stepsCount?string>
               <#if sizeValue gt 0>
               <tr id="testCases${report.scenarioStatus}" style="font-family:calibri" onclick="TestFunction('${paramValue}','${sizeValue}')">
                  <#else>
               <tr id="testCasesUNDEFINED" style="font-family:calibri">
                  </#if>
                  <th colspan="11" style="text-align:left;">
                     <#if report.casesName?? && report.keyWord??>
                     <span><span style="color:blue">${report.keyWord}</span> ${report.casesName}</span>
                     </#if>
                     <#if report.scenarioStatus=='FAIL'>
                     <span id="status" style="color:red;"><span id="tickFail">&#x2716;</span>FAIL</span>
                     <#assign stepdefFailCount=stepdefFailCount+1>
                     <#elseif report.scenarioStatus=='UNDEFINED'>
                     <span id="status" style="color:#d2921d;">PENDING</span>
                     <#assign stepdefSkipCount=stepdefSkipCount+1>
                     <#elseif report.scenarioStatus=='SKIPPED'>
                     <span id="status" style="color:black;"><span id="tickFail"></span>SKIP</span>
                     <#assign stepdefPartiallySkippedCount=stepdefPartiallySkippedCount+1>
                     <#else>
                     <span id="status" style="color:green;"><span id="tickPass">&#x2714;</span>PASS</span>
                     <#assign stepdefPassCount=stepdefPassCount+1>
                     </#if>
                  </th>
               </tr>
               <#list report.testStepInstanceNew as testSteps>
               <tr class="steps" id="${paramValue}${testSteps_index}">
               <@stepTD content=testSteps.description/>
               <@stepTD content=testSteps.controlFlow/>
               <@stepTD content=testSteps.action/>
               <@stepTD content=testSteps.testData/>
               <@stepTD content=testSteps.expectedResult/>
               <@stepTD content=testSteps.actualResult/>
                  <#if testSteps.state??>
                  <#if testSteps.state?contains("CONDITION")>
                  <td class="CONDITION">
                     <p>${testSteps.state}</p>
                  </td>
                  <#else>
                  <td class="${testSteps.state}">
                     <p>${testSteps.state}</p>
                  </td>
                  </#if>
                  <#else>
                  <td>
                  </td>
                  </#if>
                  <#if testSteps.errorCode??>
                  <td class="${testSteps.errorCode}">
                     <p>${testSteps.errorCode}</p>
                  </td>
                  <#else>
                  <td>
                  </td>
                  </#if>
                  <#if testSteps.or_name??>
                  <td>
                     <p>${testSteps.or_name}</p>
                  </td>
                  <#else>
                  <td>
                  </td>
                  </#if>
                  <@stepTD content=testSteps.formattedTime/>
                  <#if testSteps.screenshot??>
                  <td>
                     <p><a href="${testSteps.screenshot}" class="link" data-toggle="modal" data-target="#myModal">Link</a></p>
                  </td>
                  <#else>
                  <td>
                  </td>
                  </#if>
               </tr>
               </#list>
               </#list>
         </div>
         <div>
         <button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
         </div>
      </div>
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
         try{
            google.charts.load("current", {packages:["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
            try{
             var data1 = google.visualization.arrayToDataTable([
                ['Scenario', 'Count'],
                ['PASSED',      ${overAllPassCountScenario}],
                ['FAILED',       ${overAllFailCountScenario}],

                ['PARTIALLY SKIPPED',       ${overAllPartiallySkipCountScenario}],
                ['SKIPPED',       ${overAllSkipCountScenario}]

              ]);
              var options1 = {
            fontSize:12,
            colors: ['#50BB50', '#ff5050','#FFB850','#56aff1'],
            legend:'none',
            pieHole: 0.5,
            pieSliceText: 'value',
            backgroundColor: { fill:'transparent' },
            pieSliceTextStyle: {
               color: 'black',
             },
            'width': 230,
               'height': 230,

            chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
              };
              var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
              chart1.draw(data1, options1);
            var data2 = google.visualization.arrayToDataTable([
                ['TestCases', 'Count'],
                ['PASSED',      ${stepdefPassCount}],
                ['FAILED',       ${stepdefFailCount}],
                ['SKIPPED',       ${stepdefSkipCount+stepdefPartiallySkippedCount}]


              ]);
              var options2 = {
            	fontSize:12,
            colors: ['#50BB50', '#ff5050','#56aff1','#FFB850'],
            legend:'none',
            pieHole: 0.5,
            pieSliceText: 'value',
            backgroundColor: { fill:'transparent' },
            pieSliceTextStyle: {
               color: 'black',
             },
            'width':230,
               'height': 230,
            chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
               };
              var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
              chart2.draw(data2, options2);
            var data3 = google.visualization.arrayToDataTable([
                ['TestSteps', 'Count'],
                ['PASSED',     ${testStepPassCount}],
                ['FAILED',      ${testStepFailCount}],
                ['SKIPPED',      ${testStepSkipCount}]
              ]);
              var options3 = {
            fontSize:12,
            colors: ['#50BB50', '#ff5050','#56aff1'],
            legend:'none',
            pieHole: 0.5,
            pieSliceText: 'value',
            backgroundColor: { fill:'transparent' },
            pieSliceTextStyle: {
               color: 'black',
             },
            'width': 230,
               'height': 230,
            chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
            };
            if (data3.getNumberOfRows() === 0) {
         data3.addRows([
          ['', 0, null, 'No Data for Action']
         ]);
         }
              var chart3 = new google.visualization.PieChart(document.getElementById('piechart3'));
              chart3.draw(data3, options3);
            var data4 = new google.visualization.DataTable();
            data4.addColumn('string', 'errorcode');
            data4.addColumn('number', 'values');
            <#list errorCodes?keys as key>
                 data4.addRow(['${key}',${errorCodes[key]}]);
            </#list>
            var i=0;
              var options4 = {
            fontSize:12,

         slices: {
         <#list colorCodes as code>
         ${code_index}:{color:'${code}'},
         </#list>
         },
            sliceVisibilityThreshold:.10,
            legend: {'position':'right','alignment':'center'},
            pieHole: 0.5,
            pieSliceText: 'value',
            backgroundColor: { fill:'transparent' },
            pieSliceTextStyle: {
               color: 'black',
             },
            'width': 500,
               'height': 230,

            chartArea:{width:'100%',height:'90%'}
            };

            colorvalue="false";
              var chart4 = new google.visualization.PieChart(document.getElementById('piechart4'));
              var itemValue;
         function selectHandler() {

		    var selectedItem = chart4.getSelection()[0];
		    if (selectedItem) {
		    filterApplied=true;
		      var value = data4.getValue(selectedItem.row, 0);
			  $('.steps').hide();
			  itemValue="."+value
		      $(itemValue).closest('.steps').show();
		    }
		    else{
		    filterApplied=true;
		      $('.steps').hide();
		      $(itemValue).closest('.steps').show();
		    }
		  }
            google.visualization.events.addListener(chart4, 'select', selectHandler);
              chart4.draw(data4, options4);
              }
              catch(e){}
         }
         }
         catch(e){
         //alert("Oops, seems to be poor/no internet connection!!");
         }

      </script>
      <script>
         var stepMap=new Map();
         var scenarioMap=new Map();
         var idMapWithTag=new Map();
         function myFunction(value) {
         var y = document.getElementById("myInput");

         var serachParam=y.value.toLowerCase();
         var tagList=null;
         <#list searchTag?keys as id>


         tagList=new Array();
         <#list searchTag[id] as tagforExecution>

         tagList.push("${tagforExecution}")
         </#list>
         idMapWithTag.set("${id}",tagList);
         </#list>

         var myArray=new Array();

         if(serachParam==="" || serachParam==="All"){
         document.getElementById("errorMessage").innerHTML = "";
         document.getElementById("myInput").style.backgroundColor="#f5f5f5";
         document.getElementById("detailTable").style.display="block";
         document.getElementById("addminus").style.display="block";
         document.getElementById("addplus").style.display="block";
         //document.getElementById("seperator").style.display="block";
         try{
         var emptycatsValues1=document.getElementsByClassName("emptyCatsClass");
         for(var x1=0;x1<emptycatsValues1.length;x1++){
         emptycatsValues1[x1].style.display="none";
         }
         }
         catch(e){}
         var myArray=new Array();

         <#list stepmap?keys as tagValues>
         var elems = document.getElementsByClassName('${tagValues}');
         for(var i = 0; i != elems.length; ++i)
         {
         elems[i].style.visibility = "visible";
         }
         var elemsTable = document.getElementsByClassName('${tagValues}_Table');
         for(var i = 0; i != elemsTable.length; ++i)
         {
         //changed here from block to none
         if(value==='tag'){
         elemsTable[i].style.display = "";
         }
         else{
         elemsTable[i].style.display = "";
         }

         }
         myArray.push("${tagValues}");
         </#list>

         if($( "#option" ).html()=='Tag Details'){
         newFunction();
         }
         if($( "#option" ).html()=='Feature Details'){
         calculate(myArray);
         }

         var specialClassinIf=document.getElementsByClassName("steps");

         for (k = 0; k < specialClassinIf.length; k++) {
         //changed here from block to none
         if(specialClassinIf[k].parentNode.parentNode.style.display===""){
         specialClassinIf[k].style.visibility = "visible";
         }
         else{
         specialClassinIf[k].style.visibility = "inherit";
         }
         }

         }
         else{
         document.getElementById("myInput").style.backgroundColor="#f5f5f5";

         var myArray=new Array();
         try{
         <#list stepmap?keys as tagValues>
         var elems = document.getElementsByClassName('${tagValues}');
         for(var i = 0; i != elems.length; ++i)
         {
         elems[i].style.visibility = "collapse";
         }

         var elemsTable = document.getElementsByClassName('${tagValues}_Table');
         for(var i = 0; i != elemsTable.length; ++i)
         {
         elemsTable[i].style.display = "none";
         }

         var re = new RegExp(serachParam, 'gim');

         var res = "${tagValues}".match(re);
         if(res!=null){
         myArray.push("${tagValues}");

         }
         </#list>
         }
         catch(err){
         var flagError=true;
         document.getElementById("myInput").style.backgroundColor="red";
         }

         calculate(myArray);
         if(myArray.length==0){
         document.getElementById("addminus").style.display="none";
         document.getElementById("addplus").style.display="none";
         if(flagError){
         document.getElementById("errorMessage").innerHTML = "Invalid Regular Expression";
         }
         else{
         document.getElementById("errorMessage").innerHTML = "No Data for Current search";
         }
         document.getElementById("detailTable").style.display="none";
         document.getElementById("myInput").style.backgroundColor="red";

         }
         else{
         document.getElementById("addminus").style.display="block";
         document.getElementById("addplus").style.display="block";
         document.getElementById("errorMessage").innerHTML = "";
         document.getElementById("detailTable").style.display="block";
         try{
          var emptycatsValues2=document.getElementsByClassName("emptyCatsClass");
         for(var x2=0;x2<emptycatsValues2.length;x2++){
         emptycatsValues2[x2].style.display="none";
         }
         }
         catch(e){}
         document.getElementById("myInput").style.backgroundColor="#f5f5f5";
         for(var j=0;j<myArray.length;j++){
         var matchesTr = document.querySelectorAll("tr[class*='"+myArray[j]+"']");
         var matchesTrTable = document.querySelectorAll("table[class*='"+myArray[j]+"_Table']");
         for (i = 0; i < matchesTr.length; i++) {
         matchesTr[i].style.visibility = "visible";
         }
         for (i = 0; i < matchesTrTable.length; i++) {
         //changed here from block to none
         matchesTrTable[i].style.display = "";
         }
         }
         var specialClass=document.getElementsByClassName("steps");
         for (j = 0; j < specialClass.length; j++) {
         if(specialClass[j].parentNode.parentNode.style.display==="block"){
         specialClass[j].style.visibility = "visible";
         }
         else{
         specialClass[j].style.visibility = "inherit";
         }
         }
         }
         }
         }
         function newFunction(){
         try{
         google.charts.load("current", {packages:["corechart"]});
              google.charts.setOnLoadCallback(drawChart);
              function drawChart() {
         try{
               var data1 = google.visualization.arrayToDataTable([
                  ['Scenario', 'Count'],
                  ['PASSED',      ${overAllPassCountScenario}],
                  ['FAILED',       ${overAllFailCountScenario}],

                  ['PARTIALLY SKIPPED',       ${overAllPartiallySkipCountScenario}],
                  ['SKIPPED',       ${overAllSkipCountScenario}]
                ]);

                var options1 = {
              fontSize:12,
              colors: ['#50BB50', '#ff5050','#FFB850'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 230,
                 'height': 230,

              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
                };

                var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
                chart1.draw(data1, options1);
              var data2 = google.visualization.arrayToDataTable([
                  ['TestCases', 'Count'],
                  ['PASSED',      ${stepdefPassCount}],
                  ['FAILED',       ${stepdefFailCount}],
                  ['SKIPPED',       ${stepdefSkipCount+stepdefPartiallySkippedCount}]

                ]);

                var options2 = {
              	fontSize:12,
             colors: ['#50BB50', '#ff5050','#56aff1','#FFB850'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width':230,
                 'height': 230,
              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
                 };
                var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
                chart2.draw(data2, options2);
              var data3 = google.visualization.arrayToDataTable([
                  ['TestSteps', 'Count'],
                  ['PASSED',     ${testStepPassCount}],
                  ['FAILED',      ${testStepFailCount}],
              	  ['SKIPPED',      ${testStepSkipCount}]
                ]);
                var options3 = {
              fontSize:12,
              colors: ['#50BB50', '#ff5050','#56aff1'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 230,
                 'height': 230,

              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
              };
              if (data3.getNumberOfRows() === 0) {
          data3.addRows([
            ['', 0, null, 'No Data for Action']
          ]);
         }
                var chart3 = new google.visualization.PieChart(document.getElementById('piechart3'));
                chart3.draw(data3, options3);
              var data4 = new google.visualization.DataTable();
              data4.addColumn('string', 'errorcode');
              data4.addColumn('number', 'values');
              <#list errorCodes?keys as key>
                   data4.addRow(['${key}',${errorCodes[key]}]);
              </#list>
              var i=0;
                var options4 = {
              fontSize:12,
           slices: {
           <#list colorCodes as code>
           ${code_index}:{color:'${code}'},
           </#list>
           },
              sliceVisibilityThreshold:.10,
              legend: {'position':'right','alignment':'center'},
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 500,
                 'height': 230,

              chartArea:{width:'100%',height:'90%'}
              };

              colorvalue="false";
                var chart4 = new google.visualization.PieChart(document.getElementById('piechart4'));
                var itemValue;
         function selectHandler() {

		    var selectedItem = chart4.getSelection()[0];
		    if (selectedItem) {
		    filterApplied=true;
		      var value = data4.getValue(selectedItem.row, 0);
			  $('.steps').hide();
			  itemValue="."+value
		      $(itemValue).closest('.steps').show();
		    }
		    else{
		    filterApplied=true;
		      $('.steps').hide();
		      $(itemValue).closest('.steps').show();
		    }
		  }
            google.visualization.events.addListener(chart4, 'select', selectHandler);
                chart4.draw(data4, options4);
         }
         catch(e){}
            }
         }
         catch(e){
         //alert("Oops, seems to be poor/no internet connection!!");

         }
         }
         function calculate(givenArray){
         var myArray=givenArray;
         var passStep=0;
         var failStep=0;
         var skipStep=0;
         var undefinedStep=0;
         var passScenario=0;
         var failScenario=0;
         var skipScenario=0;
         var undefinedScenario=0;
         var actionStatusPass=0;
         var actionStatusFail=0;
         var actionStatusSkip=0;
         var errorMapValues=new Map();
         var caughtItems=new Array();
         if(myArray.length > 0){
         for(var i=0;i<myArray.length;i++){
         var numberofExecution=idMapWithTag.keys();
         for(var j=0;j<idMapWithTag.size;j++){
         var flagItem=false;
         var keyExecutionId=numberofExecution.next().value;
         var items=idMapWithTag.get(keyExecutionId);
         if(typeof items !== "undefined" && caughtItems.length > 0){
         for(var p=0;p<caughtItems.length;p++){
         if(keyExecutionId===caughtItems[p]){
         flagItem=true;
         break;
         }
         }
         }
         if(flagItem==false)
         {
         if(typeof items !== "undefined"){
         for(var k=0;k<items.length;k++){
         if(myArray[i]===items[k]){
         <#list scenariomapforGraph?keys as tagValuesforGraphValues>
         if("${tagValuesforGraphValues}"===keyExecutionId){
         var thisScenarioStatus="${scenariomapforGraph[tagValuesforGraphValues]}";
         if(thisScenarioStatus==="PASS"){
         	passScenario=passScenario+1;
         }
         else if(thisScenarioStatus==="FAIL"){
         	failScenario=failScenario+1;
         }
         else if(thisScenarioStatus==="SKIPPED" || thisScenarioStatus==="UNDEFINED"){
         	skipScenario=skipScenario+1;
         }
         else if(thisScenarioStatus==="PARTIALLY SKIPPED"){
         	undefinedScenario=undefinedScenario+1;
         }
         }
         </#list>
         <#list stepmapforGraph?keys as tagValuesforstepGraphValues>
         if("${tagValuesforstepGraphValues}"===keyExecutionId){
         <#list stepmapforGraph[tagValuesforstepGraphValues]?keys as statusValue>
         if("${statusValue}"==="APASS"){
         var value=${stepmapforGraph[tagValuesforstepGraphValues][statusValue]};
         passStep=passStep+value;
         }
         else if("${statusValue}"==="BFAIL"){
         var value=${stepmapforGraph[tagValuesforstepGraphValues][statusValue]};
         failStep=failStep+value;
         }
         else if("${statusValue}"==="SKIPPED"){
         var value=${stepmapforGraph[tagValuesforstepGraphValues][statusValue]};
         skipStep=skipStep+value;
         }
         else if("${statusValue}"==="UNDEFINED"){
         var value=${stepmapforGraph[tagValuesforstepGraphValues][statusValue]};
         undefinedStep=undefinedStep+value;
         }
         </#list>
         }
         </#list>
         <#list actioncodeMapValuesForGraph?keys as actionExecutionId>
         if("${actionExecutionId}"===keyExecutionId){
         <#list actioncodeMapValuesForGraph[actionExecutionId]?keys as Actionstatus>
         if("${Actionstatus}"==="PASSED"){
         var value=${actioncodeMapValuesForGraph[actionExecutionId][Actionstatus]};
         actionStatusPass=actionStatusPass+value;
         }
         else if("${Actionstatus}"==="FAILED"){
         var value=${actioncodeMapValuesForGraph[actionExecutionId][Actionstatus]};
         actionStatusFail=actionStatusFail+value;
         }
         else if("${Actionstatus}"==="SKIPPED"){
         var value=${actioncodeMapValuesForGraph[actionExecutionId][Actionstatus]};
         actionStatusSkip=actionStatusSkip+value;
         }
         </#list>
         }
         </#list>
         <#list errorCodeForGraph?keys as errorCodeExecutionId>
         if("${errorCodeExecutionId}"===keyExecutionId){
         <#list errorCodeForGraph[errorCodeExecutionId]?keys as errors>
         var value=${errorCodeForGraph[errorCodeExecutionId][errors]};
         if(errorMapValues.has("${errors}")){
         errorMapValues.set("${errors}",errorMapValues.get("${errors}")+value);
         }
         else{
         errorMapValues.set("${errors}",value);
         }
         </#list>
         }
         </#list>
         caughtItems.push(keyExecutionId);
         }
         }
         }
         }
         }
         }
         }
         try{
         google.charts.load("current", {packages:["corechart"]});
              google.charts.setOnLoadCallback(drawChartforTag);
              function drawChartforTag() {
         try{
               var data1 = google.visualization.arrayToDataTable([
                  ['Scenario', 'Count'],
                  ['PASSED',      passScenario],
                  ['FAILED',       failScenario],
                  ['SKIPPED',       skipScenario],
                  ['PARTIALLY SKIPPED',       undefinedScenario],
                ]);
                var options1 = {
              fontSize:12,
              colors: ['#50BB50', '#FF5050','#56aff1','#FFB850'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 230,
                 'height': 230,
              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
                };
                var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
                chart1.draw(data1, options1);
         var data2 = google.visualization.arrayToDataTable([
                  ['TestCases', 'Count'],
                  ['PASSED',      passStep],
                  ['FAILED',      failStep],
                  ['SKIPPED',       skipStep+undefinedStep]

                ]);
                var options2 = {
              	fontSize:12,
              colors: ['#50BB50', '#ff5050','#56aff1','#FFB850'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width':230,
                 'height': 230,
              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
                 };
                var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
                chart2.draw(data2, options2);
         var data3 = google.visualization.arrayToDataTable([
                  ['TestSteps', 'Count'],
                  ['PASSED',     actionStatusPass],
                  ['FAILED',      actionStatusFail],
                  ['SKIPPED',      actionStatusSkip]
                ]);
                var options3 = {
              fontSize:12,
              colors: ['#50BB50', '#ff5050','#56aff1'],
              legend:'none',
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 230,
                 'height': 230,
              chartArea:{left:0,right:10,top:10,bottom:15,width:'90%',height:'95%'}
              };
              if (data3.getNumberOfRows() === 0) {
          data3.addRows([
            ['', 0, null, 'No Data for Action']
          ]);
         }
                var chart3 = new google.visualization.PieChart(document.getElementById('piechart3'));
                chart3.draw(data3, options3);
         var data4 = new google.visualization.DataTable();
              data4.addColumn('string', 'errorcode');
              data4.addColumn('number', 'values');
               function printTwo(values, key)
         {
         data4.addRow([key,values]);
         }
              errorMapValues.forEach(printTwo);
              var i=0;
                var options4 = {
              fontSize:12,
           slices: {
           <#list colorCodes as code>
           ${code_index}:{color:'${code}'},
           </#list>
           },
              sliceVisibilityThreshold:.10,
              legend: {'position':'right','alignment':'center'},
              pieHole: 0.5,
              pieSliceText: 'value',
              backgroundColor: { fill:'transparent' },
              pieSliceTextStyle: {
                 color: 'black',
               },
              'width': 500,
                 'height': 230,

              chartArea:{width:'100%',height:'90%'}
              };
              colorvalue="false";
                var chart4 = new google.visualization.PieChart(document.getElementById('piechart4'));
                var itemValue;
         function selectHandler() {

		    var selectedItem = chart4.getSelection()[0];
		    if (selectedItem) {
		    filterApplied=true;
		      var value = data4.getValue(selectedItem.row, 0);
			  $('.steps').hide();
			  itemValue="."+value
		      $(itemValue).closest('.steps').show();
		    }
		    else{
		    filterApplied=true;
		      $('.steps').hide();
		      $(itemValue).closest('.steps').show();
		    }
		  }
            google.visualization.events.addListener(chart4, 'select', selectHandler);
                chart4.draw(data4, options4);
         }
         catch(e){}
              }
         }
         catch(e){

         //alert("Oops, seems to be poor/no internet connection!!");
         }
         }
         $(document).ready(function () {
           var $switchLabelOn = $('.on');
         var $switchLabelOff = $('.off');
           var on="#"+$switchLabelOn[0].innerHTML;
           var off="#"+$switchLabelOff[0].innerHTML;
           $(on).show();
           $(off).hide();
           $('.switch-input').on('change', function () {
           var isChecked = $(this).is(':checked');
           if (isChecked) {
         document.getElementById("myInput").value="";
           $(on).show();
           $(off).hide();
         $("#option").html("Tag Details");
           myFunction('scenario');
           try{
           var emptycatsValues3=document.getElementsByClassName("emptyCatsClass");
         for(var x3=0;x3<emptycatsValues3.length;x3++){
         emptycatsValues3[x3].style.display="table";
         }
           }
           catch(e){}
           }
           else{
           $(on).hide();
           $(off).show();
         $("#option").html("Feature Details");
           myFunction('tag');
           }
           });
           function setSwitchState(el, flag) {
           el.attr('checked', flag);
           }
           setSwitchState($('.switch-input'), true);
           });
      </script>
   </body>

</html>