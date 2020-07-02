<html>
   <head>
      <title>HAR Report</title>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
      <style>
         /* Absolute Center Spinner */
         .loading {
         position: fixed;
         z-index: 999;
         height: 2em;
         width: 2em;
         overflow: visible;
         margin: auto;
         top: 0;
         left: 0;
         bottom: 0;
         right: 0;
         }
         /* Transparent Overlay */
         .loading:before {
         content: '';
         display: block;
         position: fixed;
         top: 0;
         left: 0;
         width: 100%;
         height: 100%;
         background-color: rgba(0,0,0,0.3);
         }
         /* :not(:required) hides these rules from IE9 and below */
         .loading:not(:required) {
         /* hide "loading..." text */
         font: 0/0 a;
         color: transparent;
         text-shadow: none;
         background-color: transparent;
         border: 0;
         }
         .loading:not(:required):after {
         content: '';
         display: block;
         font-size: 10px;
         width: 1em;
         height: 1em;
         margin-top: -0.5em;
         -webkit-animation: spinner 1500ms infinite linear;
         -moz-animation: spinner 1500ms infinite linear;
         -ms-animation: spinner 1500ms infinite linear;
         -o-animation: spinner 1500ms infinite linear;
         animation: spinner 1500ms infinite linear;
         border-radius: 0.5em;
         -webkit-box-shadow: rgba(0, 0, 0, 0.75) 1.5em 0 0 0, rgba(0, 0, 0, 0.75) 1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) 0 1.5em 0 0, rgba(0, 0, 0, 0.75) -1.1em 1.1em 0 0, rgba(0, 0, 0, 0.5) -1.5em 0 0 0, rgba(0, 0, 0, 0.5) -1.1em -1.1em 0 0, rgba(0, 0, 0, 0.75) 0 -1.5em 0 0, rgba(0, 0, 0, 0.75) 1.1em -1.1em 0 0;
         box-shadow: rgba(0, 0, 0, 0.75) 1.5em 0 0 0, rgba(0, 0, 0, 0.75) 1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) 0 1.5em 0 0, rgba(0, 0, 0, 0.75) -1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) -1.5em 0 0 0, rgba(0, 0, 0, 0.75) -1.1em -1.1em 0 0, rgba(0, 0, 0, 0.75) 0 -1.5em 0 0, rgba(0, 0, 0, 0.75) 1.1em -1.1em 0 0;
         }
         /* Animation */
         @-webkit-keyframes spinner {
         0% {
         -webkit-transform: rotate(0deg);
         -moz-transform: rotate(0deg);
         -ms-transform: rotate(0deg);
         -o-transform: rotate(0deg);
         transform: rotate(0deg);
         }
         100% {
         -webkit-transform: rotate(360deg);
         -moz-transform: rotate(360deg);
         -ms-transform: rotate(360deg);
         -o-transform: rotate(360deg);
         transform: rotate(360deg);
         }
         }
         @-moz-keyframes spinner {
         0% {
         -webkit-transform: rotate(0deg);
         -moz-transform: rotate(0deg);
         -ms-transform: rotate(0deg);
         -o-transform: rotate(0deg);
         transform: rotate(0deg);
         }
         100% {
         -webkit-transform: rotate(360deg);
         -moz-transform: rotate(360deg);
         -ms-transform: rotate(360deg);
         -o-transform: rotate(360deg);
         transform: rotate(360deg);
         }
         }
         @-o-keyframes spinner {
         0% {
         -webkit-transform: rotate(0deg);
         -moz-transform: rotate(0deg);
         -ms-transform: rotate(0deg);
         -o-transform: rotate(0deg);
         transform: rotate(0deg);
         }
         100% {
         -webkit-transform: rotate(360deg);
         -moz-transform: rotate(360deg);
         -ms-transform: rotate(360deg);
         -o-transform: rotate(360deg);
         transform: rotate(360deg);
         }
         }
         @keyframes spinner {
         0% {
         -webkit-transform: rotate(0deg);
         -moz-transform: rotate(0deg);
         -ms-transform: rotate(0deg);
         -o-transform: rotate(0deg);
         transform: rotate(0deg);
         }
         100% {
         -webkit-transform: rotate(360deg);
         -moz-transform: rotate(360deg);
         -ms-transform: rotate(360deg);
         -o-transform: rotate(360deg);
         transform: rotate(360deg);
         }
         }
         .btn {
         white-space:unset;
         line-height:1.5;
         }
         #addminus,#addplus{
         font-size: 22px;
         margin-left: 10px;
         cursor: pointer;
         }
         .dropdown-submenu {
         position: relative;
         }
         th{
         text-align:center;
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
         .header h1 {
         font-weight: 600;
         color: #add2ea;
         top: 18px;
         left: 10px;
         }
         .column {
         font-family:calibri;
         float: right;
         padding: 10px;
         color: white;
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
         .observablehq {
         display: none;}
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
         table {
         border-collapse: collapse;
         width: 100%;
         word-break: break-all;
         }
         td, th {
         border: 1px solid #dddddd;
         text-align: left;
         padding: 4px;
         }
         tr:nth-child(even) {
         background-color: #dddddd;
         }
         td{
         word-break: break-all;
         text-align:center;
         }
         .catsActions td{
         word-break: break-all;
         text-align:left;
         }
         .headRow th{
         text-align:center;
         }
         .tooltipApply {
         position: relative;
         display: inline-block;
         opacity:1;
         }
         .wrapContent{
         display: inline-block;
         max-width: 200px;
         overflow: hidden;
         text-overflow: ellipsis;
         white-space: nowrap;
         vertical-align: top
         }
         .tooltipApply .tooltiptextApply {
         visibility: hidden;
         width: 550px;
         background-color: #1e2c42;
         color: #fff;
         text-align: center;
         border-radius: 6px;
         padding: 5px 0;
         /* Position the tooltip */
         position: absolute;
         z-index: 1;
         top: -5px;
         left: 95%;
         }
         .tooltipApply:hover .tooltiptextApply {
         visibility: visible;
         }
         #toastBar {
         visibility: hidden;
         min-width: 200px;
         margin-left: -125px;
         background-color: #333;
         color: #fff;
         text-align: center;
         border-radius: 2px;
         padding: 10px;
         position: fixed;
         z-index: 1;
         left: 50%;
         bottom: 30px;
         font-size: 17px;
         }
         #toastBar.show {
         visibility: visible;
         -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
         animation: fadein 0.5s, fadeout 0.5s 2.5s;
         }
         @-webkit-keyframes fadein {
         from {bottom: 0; opacity: 0;} 
         to {bottom: 30px; opacity: 1;}
         }
         @keyframes fadein {
         from {bottom: 0; opacity: 0;}
         to {bottom: 30px; opacity: 1;}
         }
         @-webkit-keyframes fadeout {
         from {bottom: 30px; opacity: 1;} 
         to {bottom: 0; opacity: 0;}
         }
         @keyframes fadeout {
         from {bottom: 30px; opacity: 1;}
         to {bottom: 0; opacity: 0;}
         }
         .dropdown-menu {
         left:-100px;
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
         #harEntries{
         width:100%
         }
         #overAllHARInfo,#overAllHARInfoResponseCode{
         width: auto;}
      </style>
      <script>
         function reload(){
         var container = document.getElementById("harEntries");
         var content = container.innerHTML;
         container.innerHTML= content; 
         }
           $(document).ready(function(){
           document.getElementById("betweenInputRequestsize").style.display = "none";
           document.getElementById("betweenInputResponsesize").style.display = "none";
           document.getElementById("betweenConnectTime").style.display = "none";
           document.getElementById("betweenWaitTime").style.display = "none";
           document.getElementById("betweenReceiveTime").style.display = "none";
           document.getElementById("betweenDNSTime").style.display = "none";
           document.getElementById("betweenBlockedTime").style.display = "none";
           document.getElementById("betweenSendTime").style.display = "none";
           document.getElementById("betweenSSLTime").style.display = "none";
           document.getElementById("betweenTotalTime").style.display = "none";	
           // Restricts input for the given textbox to the given inputFilter.
           function setInputFilter(textbox, inputFilter) {
             ["input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop"].forEach(function(event) {
               textbox.addEventListener(event, function() {
                 if (inputFilter(this.value)) {
                   this.oldValue = this.value;
                   this.oldSelectionStart = this.selectionStart;
                   this.oldSelectionEnd = this.selectionEnd;
                 } else if (this.hasOwnProperty("oldValue")) {
                   this.value = this.oldValue;
                   this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
                 }
               });
             });
           }
           setInputFilter(document.getElementById("myInputRequestsize"), function(value) {
             return /^\d*$/.test(value); });
           setInputFilter(document.getElementById("myInputResponsesize"), function(value) {
             return /^\d*$/.test(value); });
           setInputFilter(document.getElementById("myInputConnect"), function(value) {
             return /^\d*$/.test(value); });
           setInputFilter(document.getElementById("myInputWait"), function(value) {
             return /^\d*$/.test(value); });  
           setInputFilter(document.getElementById("myInputReceive"), function(value) {
             return /^\d*$/.test(value); });  
           setInputFilter(document.getElementById("myInputDNS"), function(value) {
             return /^\d*$/.test(value); });  
           setInputFilter(document.getElementById("myInputBlocked"), function(value) {
             return /^\d*$/.test(value); });  
           setInputFilter(document.getElementById("myInputSend"), function(value) {
             return /^\d*$/.test(value); });  
           setInputFilter(document.getElementById("myInputSSL"), function(value) {
             return /^\d*$/.test(value); }); 
           setInputFilter(document.getElementById("myInputTotal"), function(value) {
             return /^\d*$/.test(value); });              
                     
           
           
             $('.dropdown-submenu').on("click", function(e){
               $(this).next('ul').toggle();
               e.stopPropagation();
               e.preventDefault();
             });
           });
           
           function copyText(element) {
             var range, selection, worked;
           
             if (document.body.createTextRange) {
               range = document.body.createTextRange();
               range.moveToElementText(element);
               range.select();
             } else if (window.getSelection) {
               selection = window.getSelection();        
               range = document.createRange();
               range.selectNodeContents(element);
               selection.removeAllRanges();
               selection.addRange(range);
             }
             try {
               document.execCommand('copy');
           	var x = document.getElementById("toastBar");
             x.className = "show";
             setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
               //alert('text copied');
             }
             catch (err) {
               console.log('unable to copy text');
             }
           }
           
           function showonlyMethod(value){
           document.getElementById("clearAll").style.display="";
            document.getElementById("requestType").style.backgroundColor='#7d3b3b';
            if(document.getElementById(value+"Value").checked){
            	var x = document.querySelectorAll('[data-methodtype="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('hideus')){
           		 x[n].classList.remove("hideus");
           		 x[n].classList.add("showus");
           		 x[n].style.display  = "";
           		 }
           		 }
           		 
           		 }
           		 else{
                 var x = document.querySelectorAll('[data-methodtype="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('showus') && x[n].style.display!='none'){
           		 x[n].classList.remove("showus");
           		 x[n].classList.add("hideus");
           		 }
           		 x[n].style.display  = "none";
           		 }
           		 }
           }
           function showonlyCode(value){
           document.getElementById("clearAll").style.display="";
            document.getElementById("responseCode").style.backgroundColor='#7d3b3b';
                    if(document.getElementById(value+"Value").checked){
           		 var x = document.querySelectorAll('[data-responsestatus="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('hidecode')){
           		 x[n].classList.remove("hidecode");
           		 x[n].classList.add("showcode");
           		 x[n].style.display  = "";
           		 }
           		 }
           		 }
           		 else{
                 var x = document.querySelectorAll('[data-responsestatus="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('showus') && x[n].style.display!='none'){
           		 x[n].classList.remove("showcode");
           		 x[n].classList.add("hidecode")
           		 }
           		 x[n].style.display  = "none";
           		 }
           		 }
           
           }
           function showMimeCode(value){
           document.getElementById("clearAll").style.display="";
           	document.getElementById("responseType").style.backgroundColor='#7d3b3b';
                    if(document.getElementById(value+"Value").checked){
                    if(value==''){
                    value="emptyMime";
                    }
           		 var x = document.querySelectorAll('[data-mimetype="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('hidemime')){
           		 x[n].classList.remove("hidemime");
           		 x[n].classList.add("showmime");
           		 x[n].style.display  = "";
           		 }
           		 }
           		 }
           		 else{
           		 if(value==''){
                    value="emptyMime";
                    }
                 var x = document.querySelectorAll('[data-mimetype="'+value+'"]');
           		 for(var n=0;n<x.length;n++){
           		 if(x[n].classList.contains('showus') && x[n].style.display!='none'){
           		 x[n].classList.remove("showmime");
           		 x[n].classList.add("hidemime")
           		 }
           		 x[n].style.display  = "none";
           		 }
           		 }
           }
           function urlSearch() {
           document.getElementById("clearAll").style.display="";
           	document.getElementById("requestUrl").style.backgroundColor='#7d3b3b';
             var input, filter, table, tr, td, i, txtValue;
             input = document.getElementById("myInputUrl");
             filter = input.value.toUpperCase();
             table = document.getElementById("harEntries");
             tr = table.getElementsByTagName("tr");
             for (i = 0; i < tr.length; i++) {
               td = tr[i].getElementsByTagName("td")[3];
               if (td) {
                 txtValue = td.textContent || td.innerText;
                 if (txtValue.toUpperCase().indexOf(filter) > -1) {
           		if(tr[i].classList.contains('hidesearch')){
           		 tr[i].classList.remove("hidesearch");
           		 tr[i].classList.add("showsearch");
                   tr[i].style.display = "";
           		}
                 } else {
           	  
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		 tr[i].classList.remove("showsearch");
           		 tr[i].classList.add("hidesearch")
           		}
                   tr[i].style.display = "none";
                 }
               }       
             }
           }
           function filterSize(selectInput,inputValue,columnNumber,betweenFilter) {
           document.getElementById("clearAll").style.display="";
           	document.getElementById(selectInput+"Header").style.backgroundColor='#7d3b3b';
             var input, filter, table, tr, td, i, txtValue,searchMethod,betweenValue;
             input = document.getElementById(inputValue);
             searchMethod=document.getElementById(selectInput).value;
             console.log("searchmethod is"+searchMethod)
             if(searchMethod=='less'){
             document.getElementById(betweenFilter).style.display = "none";
             }
             else if(searchMethod=='greater'){
             document.getElementById(betweenFilter).style.display = "none";
             }
             else if(searchMethod=='between'){
             document.getElementById(betweenFilter).style.display = "block";
             }
             
             filter = input.value;
             table = document.getElementById("harEntries");
             tr = table.getElementsByTagName("tr");
             for (i = 0; i < tr.length; i++) {
               td = tr[i].getElementsByTagName("td")[columnNumber];
           	if(filter.length==0){
           		if(tr[i].classList.contains("hidevalueof"+columnNumber)){
           		 tr[i].classList.remove("hidevalueof"+columnNumber);
           		 tr[i].classList.add("showvalueof"+columnNumber);
                   tr[i].style.display = "";
           		}
           	}
           	else{
               if (td) {
                 txtValue = td.innerText;
                 if(txtValue=="NA"){
           	  txtValue=0;
           	  }
           	  else{
           	  txtValue = txtValue.replace(/,/g, "");
           	  }
           	  filter = filter.replace(/,/g, "");
           	  var integer1 = parseInt(txtValue, 10);
           	  var integer2 = parseInt(filter, 10);
           	  if(searchMethod=='less'){
           	  if (integer1 < integer2) {
           		if(tr[i].classList.contains("hidevalueof"+columnNumber)){
           		 tr[i].classList.remove("hidevalueof"+columnNumber);
           		 tr[i].classList.add("showvalueof"+columnNumber);
                   tr[i].style.display = "";
           		}
                 } else {
           	  
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		tr[i].classList.remove("showvalueof"+columnNumber);
           		 tr[i].classList.add("hidevalueof"+columnNumber)
           		}
                   tr[i].style.display = "none";
                 }
           	  
           	  }
           	  else if(searchMethod=='greater'){
           	  //document.getElementById("betweenInputRequestsize").style.display = "none";
           	  if (integer1 > integer2) {
                   if(tr[i].classList.contains("hidevalueof"+columnNumber)){
           		 tr[i].classList.remove("hidevalueof"+columnNumber);
           		 tr[i].classList.add("showvalueof"+columnNumber);
                   tr[i].style.display = "";
           		}
                 } else {
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		tr[i].classList.remove("showvalueof"+columnNumber);
           		 tr[i].classList.add("hidevalueof"+columnNumber)
           		}
                   tr[i].style.display = "none";
                 }
           	  }
           	  else if(searchMethod=='between'){
           		
           		//document.getElementById("betweenInputRequestsize").style.display = "block";
           		betweenValue=document.getElementById(betweenFilter).value;
           	    betweenValue = betweenValue.replace(/,/g, "");
           		var integer3 = parseInt(betweenValue, 10);
           		if(integer1 >= integer3 && integer1 <= integer2){
           		if(tr[i].classList.contains("hidevalueof"+columnNumber)){
           		 tr[i].classList.remove("hidevalueof"+columnNumber);
           		 tr[i].classList.add("showvalueof"+columnNumber);
                   tr[i].style.display = "";
           		}
           		}
           		else{
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		tr[i].classList.remove("showvalueof"+columnNumber);
           		 tr[i].classList.add("hidevalueof"+columnNumber)
           		}
                   tr[i].style.display = "none";
           		}
           	  }
               } 
           	}
             }
           }
           
          function filtermyCustomTime2(ItemName,colIndex,category){
          ItemName=ItemName.replace(/<span class="caret"><\/span>/g,"").trim();
          document.getElementById("filterTypResolveTime").innerHTML=ItemName+" <span class='caret'></span>";
          var input, filter, table, tr, td, i, txtValue;
          table = document.getElementById("harEntries");
          if(category.includes('ResponseCode')){
          
          var x1 = document.getElementsByClassName("responseTypeRows");
         var i1;
         for (i1 = 0; i1 < x1.length; i1++) {
         x1[i1].style.display = "none";
         }
         var x2 = document.getElementsByClassName("requestTypeRows");
         var i2;
         for (i2 = 0; i2 < x2.length; i2++) {
         x2[i2].style.display = "none";
         }
          var x3 = document.getElementsByClassName("responseCodeRows");
         var i3;
         for (i3 = 0; i3 < x3.length; i3++) {
         x3[i3].style.display = "";
         }
          				<#assign responseCodes=[]>
                        <#list harData as harOverAllData>
                        <#list harOverAllData as harItems>
                        <#if harItems.pageref=='CATS-Step'>
                        <#else>
                        <#assign responseStatus=harItems.responseCode>
                        <#if responseCodes?seq_contains(responseStatus)>
                        <#else>
                        <#assign responseCodes=responseCodes+[responseStatus]>
         tr = table.querySelectorAll('[data-responsestatus="${responseStatus}"]'); 
         var oldValue=0;
         var totalCount=0;
               <#list timeFilterasNumber as values>
               var countValue=0
               var countValueforNA=0;
               var countValueforLast=0;
               filter = "${values}";
               for (i = 0; i < tr.length; i++) {
                   td = tr[i].getElementsByTagName("td")[colIndex];
                   if (td) {
                     txtValue = td.innerText;
                     //if(txtValue=="NA")
               	  	 //txtValue=0;
               	     //else
               	  	 txtValue = txtValue.replace(/,/g, "");
               	  filter = filter.replace(/,/g, "");
               	  var integer1 = parseInt(txtValue, 10);
               	  var integer2 = parseInt(filter, 10);
               	  
               	  if(integer1<=integer2 && integer1 >= oldValue){
               	  countValue=countValue+1;
               	  }
               	  <#if values?index+1==timeFilterasNumber?size>
               	  if(integer1 > integer2){
               	  countValueforLast=countValueforLast+1;
               	  }
               	  if (txtValue.toUpperCase().indexOf("NA") > -1) {
               	 	countValueforNA=countValueforNA+1;
               	 	} 
               	  </#if>
               	  }
               }
               document.getElementById("${responseStatus}responseStatusValue${values?index+1}").innerHTML=countValue;
               oldValue=filter;
               totalCount=totalCount+countValue;
             			</#list>
               document.getElementById("${responseStatus}responseStatusValueLast").innerHTML=countValueforLast;
               document.getElementById("${responseStatus}responseStatusValueNA").innerHTML=countValueforNA;
               totalCount=totalCount+countValueforLast+countValueforNA;
               document.getElementById("${responseStatus}responseStatusValueTotal").innerHTML=totalCount;
         				</#if>
                        </#if>
                        </#list>
                        </#list>
                }
                else if(category.includes('ResponseType')){
                
                  var x1 = document.getElementsByClassName("responseCodeRows");
         var i1;
         for (i1 = 0; i1 < x1.length; i1++) {
         x1[i1].style.display = "none";
         }
         var x2 = document.getElementsByClassName("requestTypeRows");
         var i2;
         for (i2 = 0; i2 < x2.length; i2++) {
         x2[i2].style.display = "none";
         }
         var x3 = document.getElementsByClassName("responseTypeRows");
         var i3;
         for (i3 = 0; i3 < x3.length; i3++) {
         x3[i3].style.display = "";
         }
                	 <#assign responseType=[]>
                     <#list harData as harOverAllData>
                     <#list harOverAllData as harItems>
                     <#if harItems.pageref=='CATS-Step'>
                     <#else>
                     <#if harItems.mimeType!=''>
                     <#assign responseMimeType=harItems.mimeType?keep_before(";")>
                     <#else>
                     <#assign responseMimeType="NA">
                     </#if>
                     <#if responseType?seq_contains(responseMimeType)>
                     <#else>
                     <#assign responseType=responseType+[responseMimeType]>
                	 tr = table.querySelectorAll('[data-mimetype="${responseMimeType}"]'); 
         var oldValue=0;
         var totalCount=0;
               <#list timeFilterasNumber as values>
               var countValue=0
               var countValueforNA=0;
               var countValueforLast=0;
               filter = "${values}";
               for (i = 0; i < tr.length; i++) {
                   td = tr[i].getElementsByTagName("td")[colIndex];
                   if (td) {
                     txtValue = td.innerText;
                    // if(txtValue=="NA")
               	  	 //txtValue=0;
               	     //else
               	  	 txtValue = txtValue.replace(/,/g, "");
               	  filter = filter.replace(/,/g, "");
               	  var integer1 = parseInt(txtValue, 10);
               	  var integer2 = parseInt(filter, 10);
               	  if(integer1<=integer2 && integer1 >= oldValue){
               	  countValue=countValue+1;
               	  }
               	  <#if values?index+1==timeFilterasNumber?size>
               	  if(integer1 > integer2){
               	  countValueforLast=countValueforLast+1;
               	  }
               	  if (txtValue.toUpperCase().indexOf("NA") > -1) {
               	 	countValueforNA=countValueforNA+1;
               	 	} 
               	  </#if>
               	  }
               }
               document.getElementById("${responseMimeType}responseStatusValue${values?index+1}").innerHTML=countValue;
               oldValue=filter;
               totalCount=totalCount+countValue;
             </#list>
               document.getElementById("${responseMimeType}responseStatusValueNA").innerHTML=countValueforNA;
               document.getElementById("${responseMimeType}responseStatusValueLast").innerHTML=countValueforLast;
               totalCount=totalCount+countValueforLast+countValueforNA;
               document.getElementById("${responseMimeType}responseStatusValueTotal").innerHTML=totalCount;
         </#if>
                        </#if>
                        </#list>
                        </#list>
                
                }  
                else if(category.includes('RequestType')){
                
                var x1 = document.getElementsByClassName("responseCodeRows");
         var i1;
         for (i1 = 0; i1 < x1.length; i1++) {
         x1[i1].style.display = "none";
         }
         var x2 = document.getElementsByClassName("responseTypeRows");
         var i2;
         for (i2 = 0; i2 < x2.length; i2++) {
         x2[i2].style.display = "none";
         }
         var x3 = document.getElementsByClassName("requestTypeRows");
         var i3;
         for (i3 = 0; i3 < x3.length; i3++) {
         x3[i3].style.display = "";
         }
                	<#assign methodNames=[]>
                        <#list harData as harOverAllData>
                        <#list harOverAllData as harItems>
                        <#if harItems.pageref=='CATS-Step'>
                        <#else>
                        <#assign methodType=harItems.requestType>
                        <#if methodNames?seq_contains(methodType)>
                        <#else>
                        <#assign methodNames=methodNames+[methodType]>
                        tr = table.querySelectorAll('[data-methodtype="${methodType}"]'); 
                        var totalCount=0;
         var oldValue=0;
               <#list timeFilterasNumber as values>
               var countValue=0
               var countValueforNA=0;
               var countValueforLast=0;
               filter = "${values}";
               for (i = 0; i < tr.length; i++) {
                   td = tr[i].getElementsByTagName("td")[colIndex];
                   if (td) {
                     txtValue = td.innerText;
                     //if(txtValue=="NA")
               	  	 //txtValue=0;
               	     //else
               	  	 txtValue = txtValue.replace(/,/g, "");
               	  filter = filter.replace(/,/g, "");
               	  var integer1 = parseInt(txtValue, 10);
               	  var integer2 = parseInt(filter, 10);
               	  if(integer1<=integer2 && integer1 >= oldValue){
               	  countValue=countValue+1;
               	  }
               	  <#if values?index+1==timeFilterasNumber?size>
               	  if(integer1 > integer2){
               	  countValueforLast=countValueforLast+1;
               	  }
               	  if (txtValue.toUpperCase().indexOf("NA") > -1) {
               	 	countValueforNA=countValueforNA+1;
               	 	} 
               	  </#if>
               	  }
               }
               document.getElementById("${methodType}responseStatusValue${values?index+1}").innerHTML=countValue;
               oldValue=filter;
               totalCount=totalCount+countValue;
             </#list>
               document.getElementById("${methodType}responseStatusValueLast").innerHTML=countValueforLast;
               document.getElementById("${methodType}responseStatusValueNA").innerHTML=countValueforNA;
               totalCount=totalCount+countValueforLast+countValueforNA;
               document.getElementById("${methodType}responseStatusValueTotal").innerHTML=totalCount;
         </#if>
                        </#if>
                        </#list>
                        </#list>
                }      
          } 
         
         function preCheckFilter1(category){
         category=category.replace(/<span class="caret"><\/span>/g,"").trim();
         document.getElementById("decideFilterType").innerHTML=category+" <span class='caret'></span>";
         var filterForTime=document.getElementById("filterTypResolveTime").innerHTML;
         //filtermyCustomTime2
         var columnValue;
         if(filterForTime.includes("Connect")){
         columnValue=6;
         }
         else if(filterForTime.includes("Receive")){
         columnValue=8;
         }
         else if(filterForTime.includes("Wait")){
         columnValue=7;
         }
         else if(filterForTime.includes("DNS")){
         columnValue=9;
         }
         else if(filterForTime.includes("Blocked")){
         columnValue=10;
         }
         else if(filterForTime.includes("Send")){
         columnValue=11;
         }
         else if(filterForTime.includes("SSL")){
         columnValue=12;
         }
         else if(filterForTime.includes("Total")){
         columnValue=13;
         }
         filtermyCustomTime2(filterForTime,columnValue,category);
         }  
         function preCheckFilter2(timeCategory,colindex){
         initializeMe();
         timeCategory=timeCategory.replace(/<span class="caret"><\/span>/g,"").trim();
         document.getElementById("filterTypResolveTime").innerHTML=timeCategory+" <span class='caret'></span>";
         var category=document.getElementById("decideFilterType").innerHTML;
         filtermyCustomTime2(timeCategory,colindex,category);
         }  
         function initializeMe(){
         document.getElementById("ALLCodesValue").checked=true;
         uniqueCodes();
         document.getElementById("ALLMimeCodesValue").checked=true;
         uniqueMimeCodes();
         document.getElementById("ALLValue").checked=true;
         uniqueMethods();
         var cont = document.getElementById("harEntries");
         elements = cont.getElementsByClassName("btn-primary");
            for (var i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor="";
            }
         document.getElementById("clearAll").style.display="none";    
         } 
         function myFunction() {
         var loader=document.getElementsByClassName("loading")
         loader[0].style.display="block";
         myVar = setTimeout(showPage, 800);
         }
         
         function showPage() {
         var loader=document.getElementsByClassName("loading")
         loader[0].style.display="none";
         }
         function findNumberedRows(category,categoryValue,startValue,endValue,operation){
         myFunction();
         initializeMe();
         document.getElementById("clearAll").style.display="";
         var input, filter, table, tr, td, i, txtValue,betweenValue;
         table = document.getElementById("harEntries");
         filter=endValue;
         var filterForTime=document.getElementById("filterTypResolveTime").innerHTML;
         var columnNumber;
         if(filterForTime.includes("Connect")){
         columnNumber=6;
         }
         else if(filterForTime.includes("Receive")){
         columnNumber=8;
         }
         else if(filterForTime.includes("Wait")){
         columnNumber=7;
         }
         else if(filterForTime.includes("DNS")){
         columnNumber=9;
         }
         else if(filterForTime.includes("Blocked")){
         columnNumber=10;
         }
         else if(filterForTime.includes("Send")){
         columnNumber=11;
         }
         else if(filterForTime.includes("SSL")){
         columnNumber=12;
         }
         else if(filterForTime.includes("Total")){
         columnNumber=13;
         }
         var dataattributetype;
         if(category=='code')	{	
         dataattributetype="data-responsestatus";
         document.getElementById("ALLCodesValue").checked=false;
         uniqueCodes();
         document.getElementById(categoryValue+"Value").checked=true;
         showonlyCode(categoryValue);
         }
         else if(category=='type')	{
         dataattributetype="data-mimetype";	
         document.getElementById("ALLMimeCodesValue").checked=false;
         uniqueMimeCodes();
         document.getElementById(categoryValue+"Value").checked=true;
         showMimeCode(categoryValue);
         }
         else if(category=='method')	{
         dataattributetype="data-methodtype";	
         document.getElementById("ALLValue").checked=false;
         uniqueMethods();
         document.getElementById(categoryValue+"Value").checked=true;
         showonlyMethod(categoryValue);
         }
         tr=table.querySelectorAll('['+dataattributetype+'="'+categoryValue+'"]');
         //tr = table.getElementsByClassName(categoryValue);
         for (i = 0; i < tr.length; i++) {
               td = tr[i].getElementsByTagName("td")[columnNumber];
           	if(filter.length==0){
           		if(tr[i].classList.contains("hidevalueofNew"+columnNumber)){
           		 tr[i].classList.remove("hidevalueofNew"+columnNumber);
           		 tr[i].classList.add("showvalueofNew"+columnNumber);
                   tr[i].style.display = "";
           		}
           	}
           	else{
           	   if (td && operation=='search') {
                 txtValue = td.textContent || td.innerText;
                 if (txtValue.toUpperCase().indexOf(filter) > -1) {
           		if(tr[i].classList.contains("hidevalueofNew"+columnNumber)){
           		 tr[i].classList.remove("hidevalueofNew"+columnNumber);
           		 tr[i].classList.add("showvalueofNew"+columnNumber);
                   tr[i].style.display = "";
           		}
                 } else {
           	  
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		 tr[i].classList.remove("showvalueofNew"+columnNumber);
           		 tr[i].classList.add("hidevalueofNew"+columnNumber)
           		}
                   tr[i].style.display = "none";
                 }
               }	
           	
               else if (td) {
                  txtValue = td.innerText;
              	  txtValue = txtValue.replace(/,/g, "");
            	  filter = filter.replace(/,/g, "");
            	  var integer1 = parseInt(txtValue, 10);
            	  var integer2 = parseInt(filter, 10);
           	  
           	  if(operation=='greater'){
           	  integer2=integer2-1;
           	  //document.getElementById("betweenInputRequestsize").style.display = "none";
           	  if (integer1 > integer2) {
                   if(tr[i].classList.contains("hidevalueofNew"+columnNumber)){
           		 tr[i].classList.remove("hidevalueofNew"+columnNumber);
           		 tr[i].classList.add("showvalueofNew"+columnNumber);
                   tr[i].style.display = "";
           		}
                 } else {
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		tr[i].classList.remove("showvalueofNew"+columnNumber);
           		 tr[i].classList.add("hidevalueofNew"+columnNumber)
           		}
                   tr[i].style.display = "none";
                 }
           	  }
           	  else if(operation=='between'){
           		betweenValue=startValue;
           	    betweenValue = betweenValue.replace(/,/g, "");
           		var integer3 = parseInt(betweenValue, 10);
           		
           		if(integer1 >= integer3 && integer1 <= integer2){
           		if(tr[i].classList.contains("hidevalueofNew"+columnNumber)){
           		 tr[i].classList.remove("hidevalueofNew"+columnNumber);
           		 tr[i].classList.add("showvalueofNew"+columnNumber);
                   tr[i].style.display = "";
           		}
           		}
           		else{
           		if(tr[i].classList.contains('showus') && tr[i].style.display!='none'){
           		tr[i].classList.remove("showvalueofNew"+columnNumber);
           		 tr[i].classList.add("hidevalueofNew"+columnNumber)
           		}
                   tr[i].style.display = "none";
           		}
           	  }
               } 
           	}
             }
         }
      </script>
   </head>
   <body>
      <div class="row myRow" style="margin-right:0px;margin-left:0px;display:table;">
         <div class="header">
            <img id="logoImage" src="data:image/png;base64,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" alt="cats logo" width="15%" height="10%" />
            <h1 class="projTitle" style="margin-top:25px;margin-left:40%">${projectName}</h1>
         </div>
      </div>
      <table align="center" id="overAllHARInfoResponseCode" style="margin-top:10px;">
         <tr class="headRow" style="background-color: white;color:#3d807e;font-family:arial;">
            <th colspan="${timeFilterasNumber?size+4}">
               <div class="dropdown">
                  <button id="filterTypResolveTime" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background-color: white;color: #3d807e;border: 0;"> Connect Time                   <span class="caret"></span></button>
                  <ul class="dropdown-menu" style="left:0px">
                     <li><a href="#" class="small" data-value="Connect-Time" tabIndex="-1" onclick=preCheckFilter2("Connect-Time",6)>Connect Time</a></li>
                     <li><a href="#" class="small" data-value="Wait-Time" tabIndex="-1" onclick=preCheckFilter2("Wait-Time",7)>Wait Time</a></li>
                     <li><a href="#" class="small" data-value="Receive-Time" tabIndex="-1" onclick=preCheckFilter2("Receive-Time",8)>Receive Time</a></li>
                     <li><a href="#" class="small" data-value="DNS-Time" tabIndex="-1" onclick=preCheckFilter2("DNS-Time",9)>DNS Time</a></li>
                     <li><a href="#" class="small" data-value="Blocked-Time" tabIndex="-1" onclick=preCheckFilter2("Blocked-Time",10)>Blocked Time</a></li>
                     <li><a href="#" class="small" data-value="Send-Time" tabIndex="-1" onclick=preCheckFilter2("Send-Time",11)>Send Time</a></li>
                     <li><a href="#" class="small" data-value="SSL-Time" tabIndex="-1" onclick=preCheckFilter2("SSL-Time",12)>SSL Time</a></li>
                     <li><a href="#" class="small" data-value="Total-Time" tabIndex="-1" onclick=preCheckFilter2("Total-Time",13)>Total Time</a></li>
                  </ul>
               </div>
            </th>
         </tr>
         <tr>
            <th>
               <div class="dropdown">
                  <button id="decideFilterType" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background-color: white;color: #3d807e;border: 0;"> ResponseCode                   <span class="caret"></span></button>
                  <ul class="dropdown-menu" style="left:0px">
                     <li><a href="#" class="small" data-value="ResponseCode" tabIndex="-1" onclick=preCheckFilter1("ResponseCode")>ResponseCode</a></li>
                     <li><a href="#" class="small" data-value="ResponseType" tabIndex="-1" onclick=preCheckFilter1("ResponseType")>ResponseType</a></li>
                     <li><a href="#" class="small" data-value="RequestType" tabIndex="-1" onclick=preCheckFilter1("RequestType")>RequestType</a></li>
                  </ul>
               </div>
            </th>
            <th id="filterValue-NA">NA</th>
            <#assign preValue=0>
            <#list timeFilterasNumber as values>
            <#if values?index+1==1>
            <th id="filterValue-1">${preValue}-${values?replace(",", "")}</th>
            <#else>
            <th id="filterValue-${values?index+1}">${preValue?replace(",", "")}-${values?replace(",", "")}</th>
            </#if>
            <#if values?index+1==timeFilterasNumber?size>
            <th id="filterValue-Last">&gt; ${values?replace(",", "")}</th>
            </#if>
            <#assign preValue=values+1>
            </#list>
            <th id="filterValue-Total">Total</th>
         </tr>
         <#assign responseCodes=[]>
         <#list harData as harOverAllData>
         <#list harOverAllData as harItems>
         <#if harItems.pageref=='CATS-Step'>
         <#else>
         <#assign responseStatus=harItems.responseCode>
         <#if responseCodes?seq_contains(responseStatus)>
         <#else>
         <#assign responseCodes=responseCodes+[responseStatus]>
         <tr class="responseCodeRows" style="display:none">
            <td id="responseStatusId${responseStatus}">${responseStatus}</td>
            <td id="${responseStatus}responseStatusValueNA" onclick=findNumberedRows('code','${responseStatus}','0','NA','search') style="cursor:pointer;"></td>
            <#assign preValueItem=0>
            <#list timeFilterasNumber as values>
            <td id="${responseStatus}responseStatusValue${values?index+1}" style="cursor:pointer;" onclick=findNumberedRows('code','${responseStatus}','${preValueItem}','${values}','between')></td>
            <#assign preValueItem=values+1>
            </#list>
            <td id="${responseStatus}responseStatusValueLast" onclick=findNumberedRows('code','${responseStatus}','0','${preValueItem}','greater') style="cursor:pointer;"></td>
            <td id="${responseStatus}responseStatusValueTotal" onclick=findNumberedRows('code','${responseStatus}','','','total') style="cursor:pointer;"></td>
         </tr>
         </#if>
         </#if>
         </#list>
         </#list>
         <#assign responseType=[]>
         <#list harData as harOverAllData>
         <#list harOverAllData as harItems>
         <#if harItems.pageref=='CATS-Step'>
         <#else>
         <#if harItems.mimeType!=''>
         <#assign responseMimeType=harItems.mimeType?keep_before(";")>
         <#else>
         <#assign responseMimeType="NA">
         </#if>
         <#if responseType?seq_contains(responseMimeType)>
         <#else>
         <#assign responseType=responseType+[responseMimeType]>
         <tr class="responseTypeRows" style="display:none">
            <td id="responseTypeId${responseMimeType}">${responseMimeType}</td>
            <td id="${responseMimeType}responseStatusValueNA" style="cursor:pointer;" onclick=findNumberedRows('type','${responseMimeType}','0','NA','search')></td>
            <#assign preValueItem=0>
            <#list timeFilterasNumber as values>
            <td id="${responseMimeType}responseStatusValue${values?index+1}" style="cursor:pointer;" onclick=findNumberedRows('type','${responseMimeType}','${preValueItem}','${values}','between')></td>
            <#assign preValueItem=values+1>
            </#list>
            <td id="${responseMimeType}responseStatusValueLast" style="cursor:pointer;" onclick=findNumberedRows('type','${responseMimeType}','0','${preValueItem}','greater')></td>
            <td id="${responseMimeType}responseStatusValueTotal" style="cursor:pointer;" onclick=findNumberedRows('type','${responseMimeType}','','','total')></td>
         </tr>
         </#if>
         </#if>
         </#list>
         </#list>
         <#assign methodNames=[]>
         <#list harData as harOverAllData>
         <#list harOverAllData as harItems>
         <#if harItems.pageref=='CATS-Step'>
         <#else>
         <#assign methodType=harItems.requestType>
         <#if methodNames?seq_contains(methodType)>
         <#else>
         <#assign methodNames=methodNames+[methodType]>
         <tr class="requestTypeRows" style="display:none">
            <td id="requestTypeId${methodType}">${methodType}</td>
            <td id="${methodType}responseStatusValueNA" style="cursor:pointer;" onclick=findNumberedRows('method','${methodType}','0','NA','search')></td>
            <#assign preValueItem=0>
            <#list timeFilterasNumber as values>
            <td id="${methodType}responseStatusValue${values?index+1}" style="cursor:pointer;" onclick=findNumberedRows('method','${methodType}','${preValueItem}','${values}','between')></td>
            <#assign preValueItem=values+1>
            </#list>
            <td id="${methodType}responseStatusValueLast" style="cursor:pointer;" onclick=findNumberedRows('method','${methodType}','0','${preValueItem}','greater')></td>
            <td id="${methodType}responseStatusValueTotal" style="cursor:pointer;" onclick=findNumberedRows('method','${methodType}','','','total')></td>
         </tr>
         </#if>
         </#if>
         </#list>
         </#list>
      </table>
      <div>
         <div class="container" style="width:100%">
            <div class="row">
               <div class="col-lg-12">
                  <div class="button-group" style="margin-left: -10px;margin-top: 10px;">
                     <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-cog"></span> <span class="caret"></span></button>
                     <ul class="dropdown-menu" style="left:0px">
                        <li><a href="#" class="small" data-value="Connect Time" tabIndex="-1"><input id="connectFilter" type="checkbox" checked/>&nbsp;Connect Time</a></li>
                        <li><a href="#" class="small" data-value="Wait Time" tabIndex="-1"><input id="waitFilter" type="checkbox" checked/>&nbsp;Wait Time</a></li>
                        <li><a href="#" class="small" data-value="Receive Time" tabIndex="-1"><input id="receiveFilter" type="checkbox" checked/>&nbsp;Receive Time</a></li>
                        <li><a href="#" class="small" data-value="DNS Time" tabIndex="-1"><input id="dnsFilter" type="checkbox" checked/>&nbsp;DNS Time</a></li>
                        <li><a href="#" class="small" data-value="Blocked Time" tabIndex="-1"><input id="blockedFilter" type="checkbox" checked/>&nbsp;Blocked Time</a></li>
                        <li><a href="#" class="small" data-value="Send Time" tabIndex="-1"><input id="sendFilter" type="checkbox" checked/>&nbsp;Send Time</a></li>
                        <li><a href="#" class="small" data-value="SSL Time" tabIndex="-1"><input id="sslFilter" type="checkbox" checked/>&nbsp;SSL Time</a></li>
                     </ul>
                  </div>
                  <div style="margin-top: -25px;margin-left: 30px;">
                     <i id="addminus" class="fa fa-chevron-circle-up"></i>
                     <i id="addplus" class="fa fa-chevron-circle-down"></i>
                  </div>
                  <div id="clearAll" style="color:red;cursor:pointer;width: 80px;margin-top: -22px;margin-left: 100px;display:none;font-style: oblique;" onclick="initializeMe()">
                     <p>Clear Filter</p>
                  </div>
               </div>
            </div>
         </div>
         <div class="loading">Loading&#8230;</div>
         <div style="margin-top:-35px;float:right">
            <label class="switch">
               <input class="switch-input" type="checkbox" id="togBtn" checked="none"/>
               <div class="slider round">
                  <span class="on">ACTION</span>
                  <span class="off">ACTION</span>
               </div>
            </label>
         </div>
      </div>
      <div id="toastBar">Text copied to clipboard...</div>
      <table id="harEntries">
         <thead>
            <tr class="headRow" style="background-color: #3c7aa9;color:white;font-family:arial;">
               <th >
                  <div class="dropdown">
                     <button id="requestType" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Request Type
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" style="left:0px">
                        <li><a href="#" class="small" data-value="ALL" tabIndex="-1" onclick=uniqueMethods()>
                           <input id="ALLValue" type="checkbox" checked/>&nbsp;ALL</a>
                        </li>
                        <#assign methodNames=[]>
                        <#list harData as harOverAllData>
                        <#list harOverAllData as harItems>
                        <#if harItems.pageref=='CATS-Step'>
                        <#else>
                        <#assign methodType=harItems.requestType>
                        <#if methodNames?seq_contains(methodType)>
                        <#else>
                        <#assign methodNames=methodNames+[methodType]>
                        <li><a href="#" class="small" data-value="${methodType}" tabIndex="-1" onclick=showonlyMethod("${methodType}")>
                           <input id="${methodType}Value" type="checkbox" checked/>&nbsp;${methodType}</a>
                        </li>
                        </#if>
                        </#if>
                        </#list>
                        </#list>
                     </ul>
                  </div>
               </th>
               <th >
                  <div class="dropdown">
                     <button id="responseCode" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Response Code
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" style="left:0px">
                        <li><a href="#" class="small" data-value="ALL" tabIndex="-1" onclick=uniqueCodes()>
                           <input id="ALLCodesValue" type="checkbox" checked/>&nbsp;ALL</a>
                        </li>
                        <#assign responseCodes=[]>
                        <#list harData as harOverAllData>
                        <#list harOverAllData as harItems>
                        <#if harItems.pageref=='CATS-Step'>
                        <#else>
                        <#assign responseStatus=harItems.responseCode>
                        <#if responseCodes?seq_contains(responseStatus)>
                        <#else>
                        <#assign responseCodes=responseCodes+[responseStatus]>
                        <li><a href="#" class="small" data-value="${responseStatus}" tabIndex="-1" onclick=showonlyCode("${responseStatus}")>
                           <input id="${responseStatus}Value" type="checkbox" checked/>&nbsp;${responseStatus}</a>
                        </li>
                        </#if>
                        </#if>
                        </#list>
                        </#list>
                     </ul>
                  </div>
               </th>
               <th>
                  <div class="dropdown">
                     <button id="responseType" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Response Type
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" style="left:0px">
                        <li><a href="#" class="small" data-value="ALL" tabIndex="-1" onclick=uniqueMimeCodes()>
                           <input id="ALLMimeCodesValue" type="checkbox" checked/>&nbsp;ALL</a>
                        </li>
                        <#assign responseType=[]>
                        <#list harData as harOverAllData>
                        <#list harOverAllData as harItems>
                        <#if harItems.pageref=='CATS-Step'>
                        <#else>
                        <#if harItems.mimeType!=''>
                        <#assign responseMimeType=harItems.mimeType?keep_before(";")>
                        <#else>
                        <#assign responseMimeType="NA">
                        </#if>
                        <#if responseType?seq_contains(responseMimeType)>
                        <#else>
                        <#assign responseType=responseType+[responseMimeType]>
                        <li><a href="#" class="small" data-value="${responseMimeType}" tabIndex="-1" onclick=showMimeCode("${responseMimeType}")>
                           <input id="${responseMimeType}Value" type="checkbox" checked/>&nbsp;${responseMimeType}</a>
                        </li>
                        </#if>
                        </#if>
                        </#list>
                        </#list>
                     </ul>
                  </div>
               </th>
               <th >
                  <div class="dropdown">
                     <button id="requestUrl" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Request URL
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" style="left:0px">
                        <input type="text" style='color:black' id="myInputUrl" onkeyup="urlSearch()" placeholder="Search for text.." title="Search url">
                     </ul>
                  </div>
               </th>
               <th >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Request Size
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteria" onchange="filterSize('selectSearchCriteria','myInputRequestsize',4,'betweenInputRequestsize')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenInputRequestsize"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputRequestsize" onkeyup="filterSize('selectSearchCriteria','myInputRequestsize',4,'betweenInputRequestsize')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaResponseHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Response Size
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaResponse" onchange="filterSize('selectSearchCriteriaResponse','myInputResponsesize',5,'betweenInputResponsesize')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenInputResponsesize"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputResponsesize" onkeyup="filterSize('selectSearchCriteriaResponse','myInputResponsesize',5,'betweenInputResponsesize')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='connectTime' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaConnectHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Connection Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaConnect" onchange="filterSize('selectSearchCriteriaConnect','myInputConnect',6,'betweenConnectTime')">
                              <option value="less" selected="selected">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenConnectTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputConnect" onkeyup="filterSize('selectSearchCriteriaConnect','myInputConnect',6,'betweenConnectTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='wait' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaWaitHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Wait Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaWait" onchange="filterSize('selectSearchCriteriaWait','myInputWait',7,'betweenWaitTime')">
                              <option value="less" selected="selected">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenWaitTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputWait" onkeyup="filterSize('selectSearchCriteriaWait','myInputWait',7,'betweenWaitTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='receive' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaReceiveHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Receive Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaReceive" onchange="filterSize('selectSearchCriteriaReceive','myInputReceive',8,'betweenReceiveTime')">
                              <option value="less" selected="selected">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenReceiveTime"  style="margin-top:2px;width:100%;color:black; ">  
                           <input type="number" name="type" id="myInputReceive" onkeyup="filterSize('selectSearchCriteriaReceive','myInputReceive',8,'betweenReceiveTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='dns' id="selectSearchCriteriaDNSHeader">
                  <div class="dropdown">
                     <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">DNS Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaDNS" onchange="filterSize('selectSearchCriteriaDNS','myInputDNS',9,'betweenDNSTime')">
                              <option value="less" selected="selected">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenDNSTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputDNS" onkeyup="filterSize('selectSearchCriteriaDNS','myInputDNS',9,'betweenDNSTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='blocked' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaBlockedHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Blocked Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaBlocked" onchange="filterSize('selectSearchCriteriaBlocked','myInputBlocked',10,'betweenBlockedTime')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenBlockedTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputBlocked" onkeyup="filterSize('selectSearchCriteriaBlocked','myInputBlocked',10,'betweenBlockedTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='send' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaSendHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Send Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaSend" onchange="filterSize('selectSearchCriteriaSend','myInputSend',11,'betweenSendTime')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenSendTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputSend" onkeyup="filterSize('selectSearchCriteriaSend','myInputSend',11,'betweenSendTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='ssl' >
                  <div class="dropdown">
                     <button id="selectSearchCriteriaSSLHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">SSL Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaSSL" onchange="filterSize('selectSearchCriteriaSSL','myInputSSL',12,'betweenSSLTime')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenSSLTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputSSL" onkeyup="filterSize('selectSearchCriteriaSSL','myInputSSL',12,'betweenSSLTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
               <th class='total'>
                  <div class="dropdown">
                     <button id="selectSearchCriteriaTotalHeader" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Total Time
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu">
                        <div  class="dropdown-submenu">
                           <select style="color:black;" id="selectSearchCriteriaTotal" onchange="filterSize('selectSearchCriteriaTotal','myInputTotal',13,'betweenTotalTime')">
                              <option value="less">less than</option>
                              <option value="greater">greater than</option>
                              <option value="between">between</option>
                           </select>
                           <input type="number" name="type" value="0" id="betweenTotalTime"  style="margin-top:2px;width:100%;color:black; "> 
                           <input type="number" name="type" id="myInputTotal" onkeyup="filterSize('selectSearchCriteriaTotal','myInputTotal',13,'betweenTotalTime')" style="margin-top:2px;width:100%;color:black; ">
                        </div>
                     </ul>
                  </div>
               </th>
            </tr>
         </thead>
         <tbody>
            <#assign paramforTime=timeTaken>
            <#list harData as harOverAllData>
            <#list harOverAllData as harItems>
            <#if harItems.pageref=='CATS-Step'>
            <tr class='catsActions'>
               <td colspan='14' style='background-color: #99cccc;font-family:arial;'>${harItems.comment}</td>
            </tr>
            <#else>
            <#assign methodType=harItems.requestType>
            <#assign requestHeaderSize=harItems.requestSize>
            <#assign responseStatus=harItems.responseCode>
            <#if harItems.mimeType??>
            <#assign responseMimeType=harItems.mimeType?keep_before(";")>
            <#else>
            <#assign responseMimeType="NA">
            </#if>
            <#assign responseHeaderSize=harItems.responseSize>
            <#assign url=harItems.url>
            <#assign connect="NA">
            <#assign wait="NA">
            <#assign receive="NA">
            <#assign dns="NA">
            <#assign blocked="NA">
            <#assign send="NA">
            <#assign ssl="NA">
            <#assign totalTime=0>
            <#if harItems.connect?? && harItems.connect != -1>
            <#assign connect=harItems.connect>
            <#if paramforTime?contains('connect')>
            <#assign totalTime=totalTime+connect> 
            </#if>
            </#if>
            <#if harItems.wait?? && harItems.wait != -1>
            <#assign wait=harItems.wait>
            <#if paramforTime?contains('wait')>
            <#assign totalTime=totalTime+wait> 
            </#if>
            </#if>
            <#if harItems.receive?? && harItems.receive != -1>
            <#assign receive=harItems.receive>
            <#if paramforTime?contains('receive')>
            <#assign totalTime=totalTime+receive> 
            </#if>
            </#if>
            <#if harItems.dns?? && harItems.dns != -1>
            <#assign dns=harItems.dns>
            <#if paramforTime?contains('dns')>
            <#assign totalTime=totalTime+dns> 
            </#if>
            </#if>
            <#if harItems.blocked?? && harItems.blocked != -1>
            <#assign blocked=harItems.blocked>
            <#if paramforTime?contains('blocked')>
            <#assign totalTime=totalTime+blocked> 
            </#if>
            </#if>
            <#if harItems.send?? && harItems.send != -1>
            <#assign send=harItems.send>
            <#if paramforTime?contains('send')>
            <#assign totalTime=totalTime+send> 
            </#if>
            </#if>
            <#if harItems.ssl?? && harItems.ssl != -1>
            <#assign ssl=harItems.ssl>
            <#if paramforTime?contains('ssl')>
            <#assign totalTime=totalTime+ssl> 
            </#if>
            </#if>
            <#if responseMimeType==''>
            <tr class='otherRows showus' data-methodtype='${methodType}' data-responsestatus='${responseStatus}' data-mimetype='NA'>
               <#else>
            <tr class='otherRows showus' data-methodtype='${methodType}' data-responsestatus='${responseStatus}' data-mimetype='${responseMimeType}'>
               </#if>
               <td>${methodType}</td>
               <td>${responseStatus}</td>
               <#if responseMimeType==''>
               <td>NA</td>
               <#else>
               <td>${responseMimeType}</td>
               </#if>
               <td width="20%">
                  <div class="tooltipApply">
                     <p class="wrapContent">${url}</p>
                     <span class="tooltiptextApply" onClick='copyText(this)'>${url}
                     </span>
                  </div>
               </td>
               <td>${requestHeaderSize}</td>
               <td>${responseHeaderSize}</td>
               <td class='connectTime'>${connect}</td>
               <td class='wait'>${wait}</td>
               <td class='receive'>${receive}</td>
               <td class='dns'>${dns}</td>
               <td class='blocked'>${blocked}</td>
               <td class='send'>${send}</td>
               <td class='ssl'>${ssl}</td>
               <td class="total">${totalTime}</td>
            </tr>
            </#if>
            </#list>
            </#list>
         </tbody>
      </table>
      <div>
         <button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
      </div>
      <script>
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
            $(document).ready(function(){
            //filtermyCustomTime("Connect-Time",6);
            filtermyCustomTime2("Total-Time",13,"ResponseCode")
                          try{
                          var $switchLabelOn = $('.on');
                          var $switchLabelOff = $('.off');
                          var on=$switchLabelOn[0].innerHTML.toLowerCase();
                          var off=$switchLabelOff[0].innerHTML.toLowerCase();
                          $(".catsActions").show();
                          
                          $('#togBtn').on('change', function () {
                          var isChecked = $(this).is(':checked');
                          if (isChecked) {
                          
                          $(".catsActions").show();
                          
                          }
                          else{
                          
                          $(".catsActions").hide();
                          }
                          });
                          function setSwitchState(el, flag) {
                          el.attr('checked', flag);
                          }
                          setSwitchState($('#togBtn'), true);
                          }
                          catch(e){}
                          $("#addminus").click(function(e){
            			  $(".otherRows").css('display', 'none');
            			  });
            				 
            			  $("#addplus").click(function(e){
            			  $(".otherRows").css('display', '');
            			  reload();
            			  var ele=document.getElementById("harEntries")
            			  elements = ele.getElementsByClassName("btn-primary");
            for (var i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor="";
            }
            			  });
            document.getElementById("connectFilter").addEventListener("change", function(){
                     connectFilterFunction();
                     });
            document.getElementById("waitFilter").addEventListener("change", function(){
                     waitFilterFunction();
                     });
            document.getElementById("receiveFilter").addEventListener("change", function(){
                     receiveFilterFunction();
                     });
            document.getElementById("dnsFilter").addEventListener("change", function(){
                     dnsFilterFunction();
                     });
            document.getElementById("blockedFilter").addEventListener("change", function(){
                     blockedFilterFunction();
                     });
            document.getElementById("sendFilter").addEventListener("change", function(){
                     sendFilterFunction();
                     });
            document.getElementById("sslFilter").addEventListener("change", function(){
                     sslFilterFunction();
                     });		 
            function connectFilterFunction() {
            		 if(document.getElementById("connectFilter").checked){
            		 var x = document.getElementsByClassName("connectTime");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("connectTime");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function waitFilterFunction() {
            		 if(document.getElementById("waitFilter").checked){
            		 var x = document.getElementsByClassName("wait");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("wait");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function receiveFilterFunction() {
            		 if(document.getElementById("receiveFilter").checked){
            		 var x = document.getElementsByClassName("receive");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("receive");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function dnsFilterFunction() {
            		 if(document.getElementById("dnsFilter").checked){
            		 var x = document.getElementsByClassName("dns");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("dns");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function blockedFilterFunction() {
            		 if(document.getElementById("blockedFilter").checked){
            		 var x = document.getElementsByClassName("blocked");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("blocked");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function sendFilterFunction() {
            		 if(document.getElementById("sendFilter").checked){
            		 var x = document.getElementsByClassName("send");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("send");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
            function sslFilterFunction() {
            		 if(document.getElementById("sslFilter").checked){
            		 var x = document.getElementsByClassName("ssl");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.visibility  = "visible";
            		 x[n].style.display  = "table-cell";
            		 }
            		 
            		 }
            		 else{
                     var x = document.getElementsByClassName("ssl");
            		 for(var n=0;n<x.length;n++){
            		 x[n].style.display  = "none";
            		 }
            		 }
            }
              }
              );
            function uniqueMethods(){
            	<#assign methodNames=[]>
            	<#list harData as harOverAllData>
                <#list harOverAllData as harItems>
                <#if harItems.pageref=='CATS-Step'>
                <#else>
                <#assign methodType=harItems.requestType>
                <#if methodNames?seq_contains(methodType)>
                <#else>
                <#assign methodNames=methodNames+[methodType]>
                if(document.getElementById("ALLValue").checked)
                document.getElementById("${methodType}Value").checked=true;
                else
                document.getElementById("${methodType}Value").checked=false;
                
            	showonlyMethod("${methodType}");
                </#if>
                </#if>
                </#list>
                </#list>
            	}
            
            //uniqueMethods();
            function uniqueCodes(){
            	<#assign responseCodes=[]>
            	<#list harData as harOverAllData>
                <#list harOverAllData as harItems>
                <#if harItems.pageref=='CATS-Step'>
                <#else>
                <#assign responseStatus=harItems.responseCode>
                <#if responseCodes?seq_contains(responseStatus)>
                <#else>
                <#assign responseCodes=responseCodes+[responseStatus]>
            	if(document.getElementById("ALLCodesValue").checked)
                document.getElementById("${responseStatus}Value").checked=true;
                else
                document.getElementById("${responseStatus}Value").checked=false;
                
            	showonlyCode("${responseStatus}");
                </#if>
                </#if>
                </#list>
                </#list>
            }	
            //uniqueCodes();
            function uniqueMimeCodes(){
            	<#assign responseType=[]>
            	<#list harData as harOverAllData>
                <#list harOverAllData as harItems>
                <#if harItems.pageref=='CATS-Step'>
                <#else>
                <#if harItems.mimeType!=''>
                <#assign responseMimeType=harItems.mimeType?keep_before(";")>
                <#else>
                <#assign responseMimeType="NA">
                </#if>
                <#if responseType?seq_contains(responseMimeType)>
                <#else>
                <#assign responseType=responseType+[responseMimeType]>
            	if(document.getElementById("ALLMimeCodesValue").checked)
                document.getElementById("${responseMimeType}Value").checked=true;
                else
                document.getElementById("${responseMimeType}Value").checked=false;
                
            	showMimeCode("${responseMimeType}");
                </#if>
                </#if>
                </#list>
                </#list>
            }	
            window.onload = function () { 
         var x=document.getElementsByClassName("loading")
         x[0].style.display="none";
         }
      </script>
   </body>
</html>