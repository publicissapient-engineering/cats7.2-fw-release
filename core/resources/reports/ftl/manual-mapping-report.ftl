<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Manual Mapping Report</title>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
         html{
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
         white-space:nowrap;
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
         color:cadetblue;
         }
         .duration {
         font-family: calibri;
         color: white;
         }
         div span {
         font-size: 18px;
         float: left;
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
         tr:hover {
         background-color: #ddd;
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
         top: 18px;
         left: 10px;
         }
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
         background-color: #f9f9db;
         }
         tr td{
         font-family:calibri;
         text-align:left;
         }
         .columnHeader,.dataAlign{
         text-align:center;
         }
         .myRow{
         width:100%;
         background-color: #1e2c42;
         }
         ${cssSummary}
         .table>thead>tr>th {
         padding:4px;
         }
         .table>tbody>tr>th {
         padding:4px;
         }
      </style>
     <#--  <script>
         window.addEventListener('offline', function(event){
         var elementExists = document.getElementsByTagName("marquee");
         if(elementExists.length==0){
         var para = document.createElement("marquee");
         var node = document.createTextNode("Oops, Poor/No Internet Connection. To View Manual Mapping Report, You Need Internet Connection!!");
         para.appendChild(node);
         
         var element = document.getElementById("displayInternetError");
         element.appendChild(para);
         }
         else{
         
         document.getElementById("displayInternetError").style.display = "block";	
         }
         document.getElementById("contentsWhenInternet").style.display = "none";
         });
         window.addEventListener('online', function(event){
         
         document.getElementById("contentsWhenInternet").style.display = "block";
         document.getElementById("displayInternetError").style.display = "none";
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
                //document.getElementById("displayInternetError").style.display = "none";
          
              } else {
         
         document.getElementById("contentsWhenInternet").style.display = "none";
         var elementExistsNew = document.getElementsByTagName("marquee");
         if(elementExistsNew.length==0){
         var para = document.createElement("marquee");
         var node = document.createTextNode("Oops, Poor/No Internet Connection. To View Manual Mapping Report, You Need Internet Connection!!");
         para.appendChild(node);
         
         var element = document.getElementById("displayInternetError");
         element.appendChild(para);
         }
         else{
         document.getElementById("displayInternetError").style.display = "block";	
         }		
              }
            }
          }
         }
      </script> -->
   </head>
   <body>
   <#if startTime?? && endTimeftl??>
      <div id="displayInternetError">
      </div>
      <div id="contentsWhenInternet">
         <#assign countOfPass=currentRunDataSet?size>
         <#assign countOfPassConsolidated=consolidatedRunDataSet?size>
         <#if countOfPass!=0 || countOfPassConsolidated!=0>
         <div class="row myRow" style="margin-right:0px;margin-left:0px;">
            <div class="column">
               <div>Started at: ${startTime?datetime}</div>
               <div>Ended at : ${endTimeftl?datetime}</div>
               <p class="duration">Total time taken ${executionTime}</p>
            </div>
            <div class="header">
			   <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA1MAAAEECAMAAAD6cp7IAAACfFBMVEVHcEwerMj29fbU5e3+/f3//v5Db3otjJ1mZmb/////amvv9Pb//v4TXJElrOQysOUkq+P///8Kh5f89vYTXJETXJElrOMTXJEkq+P+/v4AqJxFY3glrOQkrOMmrOQkrONmZmZmZmYAqZwTXJFmZmZmZmYkq+NmZmYkrOMkq+MTXJETXJETXJElrOTQ1ddmZmZmZmYAqJsAqZ3X3d7++vtmZmbS2dkAqZwkq+NmZmbW3+BmZmb+/f4TXJH//f0DqJ1mZmYTXJEAqZ0nrOTY4uNmZmbW1tdmZmYAqZ0TXJEdrMoAqZ0TXJHd4+MAqZ1mZmYAqZ0+teckq+P//f3X3Nzg5uYAqZ1mZmZRvekAqZ0AqZ3//v7P09NJuugAqZ1mZmba6er9zs55yuttyO02s+be5OMhsqre4+NmZmb/REXe4+NawOoAqZ3e4+P/p6j//v4AqZ1iw+tmZmb+kJH/4uP/ysuWztX+3t81ubJfkbX/5OX/1NX/tLUAm43/////////e3z//f5jsb7/NTb/zc612+FKwbqOscr/aGn/UlP+srPc4eEAqZ1hysb/1dYsr+T/5eb/v8BmZmZmZma96ur/r7D/lZZszciI19VKgquFq8f/paal0tv/kpN0n7/2iYr93t//ycr/8vPN1dj/p6j/6utmZmb/eXr7ZWYAnI7KqanefX71Jygkq+NmZmYTXJEAqZ3g5ub0Jyjj6en/rK0Zp+IlrOPl6+sRpeEfquIDq6D/REX/OToAmIkAnpD/jY76Kyz/MTIBpZj/hIX/UVL/XV7/a2zm7e3/d3j/mJn/o6R5eXn/ubqWlZXAubmxqKg1dKHWzMwjaJlwjKHwBTKAAAAArHRSTlMAFBcFKSARCJ4lzQ1l4NwssHIgR8q0n55sOl4aPvjAfF5DTXyDp800XYz0KksfP2ooLa60MtdzgEyyYHVaOoKQ4I275YJQUZDSbH5vXpKewMe37qCinvrLfz7mTymZ9Ol0/R470/T+5vXivWnt2HiQ2lHwkr5cpP75+Xi41vKw2qXB7/LWh+rIt9D3z+Hni/Ke5/n8l7Tsxc/87ufAsOnU3Z73ncrp/ubq77DzJMkctQAAOW1JREFUeNrsnd1vE9kZxiEmnoAZ2jozDOAF7EyMYcaQAAkQgjdxIAQLa4NaiQhSJVymEkIrKJGcq5UQ8q4UraqtqJSIDaq2ShEkYwtV3LBSF6ntRa+i/EX1jL/m45zxfIQysZ+ftNJ6ZnxsJvP4fc/7cc6ePQAAAAAAAABHZIQ6YdwMAHYAoVQng5sBwA7ANTSVw80AYAdgG5rK4mYA4Jpw1HygIamSYL5Yxv0CwJ6YKEmmQ5mmpljTqXSJS+OeAUBHzkpWayQ2NVWKGc4w6tVcnsGNA4BItB7gM9qerE5TxsAfX7NeIu4dAASvr6kdiSEox6q2fNMnzOP+AWDRlE46nP4Eqzuht0hR2hsAABZ7pE9ESbrjvO44pzsOOwWAFX0solQPqEfT+ulUic1nwqTLY7h9ANg6f1rUPCPyeltUn2xxQq6iOLkE1w+AFugnTiVBYEt0uKzhLAJ/AJDIlryC2loASGS8SorFvQOABCN51JSAewcAEcGjplDzBwCZKFw/AHxhboUXPWrKbKeQrQIdCi8Z+nZlznPcz9CrGOXhDILOJGssfs2XfMA1GhnDWkQevYqgA8nV1JBuKswHUm0YUUKxEuhQmskoXrUxfMkvqh+ZZhG3AB0bntDnokTbqRTL8aIo5kRR4Dm7DFZO5pGzAp2Lw3gEn00bvDhGzgucc7sFQMfgKLvL58izoozIIRMMgFtNSaJd7C7NQ1MAuBKV2MwHd/Ue/PJ3KgdnhyKNozIPSQHgeEIlNNfN7L75/OXaWkFlrfjy+VCoaas4TKcAcCQqrtEO1bu4urJtOLdVKF7qqp/OQVIANGG4FoVGkQerK8QLCsWjdQeQc1KsBECniIrcHF+rVorcKGxTrdDW6qztvAySAp1JlJDBlWp+37VV+wjEVrG7eiGplp3HvQUdimyxVGw1ONH9cqtlqLxwozpIHm2/ADQwa4qtRtBn15zkdLeLIbKoEJ8AHYs5bidV6yZurDgsm13rIg+DbX9BpwYpzPOpauXExW3HteiFbuKcCs4f6FBEYsTvopsGj5WqpTLXVKB7CnQkYYlkXS6665qqioqRYKgAME+Dql2EN7bdaapU+L36trTpKLZOBJ0IS1if+ehKyS1bqqViBCR9QWcSyzSmOmlCnja06qFpvtBF8P4anyhnYLNAm9smluU4nuezJjOlxb9felqJYozgSfICz3Mcy7JIV4H2DkvQ+6U0z2/Lk6bSJFcSlUqgI6Cu4Sdpp1c9SUpoMXZpJ1LAk/3JngrJOP6IIFAItrp44G0RsnqPvfQJd6eKPVaq9OCPCAIFZ6eLkDczJdUHp666KfqPUkwq0BQIIjHbnTmueTNTjX1HZeqEyr+hGoCmQCBJ23a6v/Tn+tGjFLpF2b0yBU2BQCLa6aJrxZOksg6G958BTkJTIJDwdq6fxwiFzq/LfLpo+jg0BQKJLLL0qF/R235uukA5JfvF553snBO2q2WPKdAUCOyUipcoYYY1v2aKGFZks462oopNKTM2p1PQFAgwMetq56owuj1Np4xb4lii6byzxWgT06pc+ukXTEJTIODGSjAYK0nNH131ZKaMMyVjzR8rOtstMV6fLKWol/RDUyDoCBZj89yTpoxR8rSH8omB+YZehqkXTUNTIOgYvDROPbLo30yZNOXESg08VnRM0S4bhqZA0OEtmir6qqGoItvYMOI8al4xEidfxzyGpkDQ4SzWprgDdkq2E5yFwWHFzAI5oD6oQFNgV9kpTRlr/sN+LjU1YJGUsj5CjmJAU2AXaqr4f9dUeMEqKmWAdGU/NAU6RVOcnaZa9sxPEzRFDKgnoSkQeISdifuZ1vHLuIul95M0RQqoz0BTIPBkLR7cTmgq7W4x2kGSpizlFKnJ0QVoCgQd41a8Wh3FJf8pX9OSFELLBNU4UVSJpuhGk9Oma6ApEECilup09eEf2vKfnxItFen232SKJKn1cVXiTGp0mhTDgKZA8EwUTzY3oYL//BTvsiw9QbRTytSeeHKBfAqaAgGD0kCl9eF6WeHFuNMUQ1w5ictTl3gJPybqZoEmKGgKBDoyYQ78/eS7fYq2yItE7Z3vUdwCTYFAQVveT9sfcb+XCVWUHqLQDU/tnY9DU2B3k7ddndlLdVLWfjpVm1RRs7/hH6ApsLunU7axhhs+CykY6kX0bt9paArsbqj7BKhhhMiKv6RvjmrM6NnfUWgK7G542+TtT/7sFGe/7weRFDQFdjeibYF5pOAn6ys7C2SYGIamQHtOqKq25IGf8iTeYfG6kX5oCuxqmmEEiSV1QnnI+0pkuerGt13ZOQ5Ngd1NPivmchk5Ggub/UAt3u0lRxUlzqZie2IxWU7nctls2mZPt/gP0BRoG0wrMWvF6V68v6rzl6f6ewllPkEzmyPI+YJ2QiDVw7reMGdbs1PmUr9mzZLWJDU9SPoCiQUFmgLtRJQUpoi4nVI9JwUommaqvmnoSNh3eAKaAoHHHKnTUrPdqx4klaOW1g7T+neZGQWaAu2GTFwFad+qa0llqMsp6SdMj+O6zx6cV6Ap0P6GqlY/7ngJpa2rVSdSopkpUyPvcKoZuFCgKdCGMCy5zHxx25GkCue0q8MsrQjQmnyaqQYrBrxKShnu6ZmKxxODDP56Hc7lsb57QXwKWErvxlUnVUrFCFlSjXolwrpI60oy7C06sb7e7AOenxmZiidieK46iPPnja/Dc+WHy19d7osG3Pdrun+RYqvsb+FqbVLG0lJWDHlZJGWg36ONmp9RaY463jOQwsPWCf5U39id8pwxcnysXONCoL4qse2Xq9nTo2t2DuDKYqh6WVqittQnlR1iuGc0nkjF6vc0HE4lJkd7hv+s6SoZD+Oha2tBHZu4q4nntuHwhbqmloP0ZSlF6my9NeMm1VatLEbsx1BFFd8RPY2MpmiaYQYHklr2a2QST177MlEXz3397Il5GERNia37N7oW16x9iivFm/XzMWoteklO+NfTeH+ilQ1iEqNqBmx8ahAPX5vSMEjlY7qjfY2jXwfnq+bsOg2bOdvu58W1la2qG7i1VSguntMNIdmUq/f7FdSU07nSYL8qq5EEHr+2ZIyongufTVNHDlc4efr0lS/Oms6kWyyGaVjqsmvfOZXukGEE1n4bnR5fLl/c1b8zoX7YNFzAduR2mWCo9t79bJo6tKly/Pj1UyfOXHEhKctq56EKRk1yLdvqRzwrqse9JzfYv15RFWxV+9H08nTyOdY8eMtwdXSi79N+nb2bOk7oz3AO8k9cnpYBoixna46oT3tTlMe5UUz1NnuQtGo3zpdNhophGJ3rZ7JTd8rlsU/6dU5TNRV11sMr5CzLnTNpkXP0Zt6wb5RjkqRpVOjcpTdv3rx6+/btqx+/X1q61ttFVJVaCjXajs9Vd+/BRz9WeLG0NLu/wzQVvquzSZcnbi3fX557WKZo6o4WIDy/Ix/8K+LRMzpJvT9Fn0+xWZt5EZ/NpWU5GpblTFoUOLqF4iybWoVdF8rOWLy3yM03r15/2Hj37pfKfxU2NH5+/eqvB/eFzBenRmi9WruXrqfffLeh4+cDL5baWleMSRK3yrboNMXUL/VvqvYeObF5hnTi13o7dch4LmuInWda2ywHy5LJvHH/nUb3lFPMRmbozYFnG1Ut6QSlov7vx9cvru0zvSO+QNkT2JE52G/Fzfsj+70Sog3Z+83HDROVH5cPfzsYaVtNfVW+bHg9Ya+p8q2x83orVT2219dX+OLwb1XJnCVo7bheU8dNH1P34ARtCiKzJX8IxtBFbTmllJtWXpOFGXryh4qcNsxqMvLh1ZJRVrGkoox4q63cTxj/n70uBujd8Mg/uskD3jxQ/fUwoB34+Pr77vaUlCqhCTeaqnCnzygpYy7LrZ08fWrzvXW6VFPbpoErptOsIRXF8L4k1VgSPcca1kpysSimoWkx9PS7jbqW7DSlyurFNcPP/ICijHuqA3xCGvyPLgaY3VlNDX1r955f/v1lqA0dv6r7ttwojb13q+yEuWOMXntz3gvWTl5vSua0fYhi8735grBU4g5vHjpSfy16VxSr3zNHNCz5POm0QFY/k+p+9EzTksNH8uPfl/QP5eCwN//vGWns/3Z9Ljv1qOU/+y+z7Sap6HJdFdWQ+L2vy065q39x23Ng4rrBtwvZhShIopNzmiU7VT+R4bwpShKMvlZUNJkNJ8EJ3Q9L15MNgsuzYf+jbXCFRqxbbbfmKXHk//zm82gq9G3rt73715/aLG4+15TFWOXlRNkb9z03Vp01auaw+fwh4/mTVkOrTbjeb5664ibCTl4Yms6Au/bd0KOP7h/Kd+8qqvofedf/00SaxqetULmqLaC1IN9VFFduxYDgLaILemrYYwFzKBJRxGtCNK7nqZDToCZKdj25Pc7dxeR2kzuz3l0S2rBGG2k7pS1tr6Bi+I9upp1O58vzvvPOdKhL9/lpl5lO62Q+83yez/N5n1dQtu9gdzBVGb8Cr+x/QHwBk46YMo4QfdB/J6eqKhHP6yqd1RoZ6H4VYtCUQYjBYI6qTTevEmL8SY3UT2Fd2A41et/NEXLOJ0ZV6D+ClFLldu9Uq1DAX7vY+AHyFAMpspsQXCjOIUx1zuoSfRmofhJy1yE+2iI+6rFJP24XHq4zYLbSUbOzGxBKO+JUpR/sL2cyCP+PJfyVqt3uz1XdTFT5EjmV/TyVN0L+KoltyCFQ7dcFU5m0pyTCnqRJVSk5WoGVMFwdpo+0ShSbFX7nLtIsdTU4k1lE24TiyMGMFQo2EzwyZTtPmUbUfFhNxfez1yiu6ACpK5mMqZCyO1fKTmGoL9td2SE5WC5ROCSHbZqpnyL5+5wMUpZ7My8yxBSTqhoFoFJRU6HxEG/Ndp76UvOLZM1H6QdOU8KCiPdKGFoc9o5eFxR2R4uAaEohVyYeT7EHb5zYCG+YA0YVGfFrHJnRI9Kv7Wo1oEI/x+QtKp0wdVV1dv7iF8L+zrZ3dfY3FDUwUXp4P0pnv5aRiUJK71w2WznXA4aj11bHKRk2yZEOs3g/3qL8vVs370HsI7/9kPkkagtSeRwhylI3Z3SKtMB8jLxPZcFccKkgq3kqL5P3yNpnf31Is0Sn1BtbVNMFnn0lE1C1uFSGhwHcJhZWMjTWiW21ycyzjXXNiuH06clDSbq6WbYpiBaFYr3mlzPGWHHblFYcCR0VV/XgVvpgSotMk0NCBcz+HnfCODHXQD6Lx4JuZ4PKaWX1Li3hcdXaZX+0isYobUl/Rz5CjciHB6TLIh/noz2dOutPMzpGiO/a7HRfJytYv8JdbiqbeWqdpivEc8dSAYDkcb+IU1gsQtmoCKCL/EJFBnJqh5VVuHSKWkpE/YR2qY0IkvcZjEE1aeq8eTUgxbp2Ug9pE5mi3oi9HKmRVhdMaewmLA7kbJ4a5A2xBb+5NT0xMcbExPT0Q34VXVG37DMJIDV0DaZtTtoLKq1RSW3biNgpfjNKjNhCUlBh01SKmN3TF1IzL3hQ5ZOtUsT+gBeEKoUuecqo6QLB6GhrbkCqRgaPLu5Iya0JbzhAB5JB04Gwc/oAd+NqZBp8s+HwFW0TK1r0whTDVs38HCRxD3crkuOlULh5r7Y0tYPPUooaetAfiUZjsVg0GvGF1GSqY273PmU0KPTFXlqylqfgwi7oi8XnFxdiPviHhuLPGnMDUgYpOAaTtM90YCJM02GRYZYFmHOa4xA4a2AzEj7gX3v1on6Jgi85Z0Li39uObEQlVzJu2atR9DtNKE+EoguLb4d+WllZXl7+y/j4P6eW5lEPlzBTccxgvfuIIqSUNEcyXU2XPAUWdr7F5+NthSUb2m48igFvlND8XWNuQEompXcnq4MLY4E0oITB/HkyiapmjFcJIVPYXLVlciOFrdyjC6Z4z/pnG2Ud3L1ofe9TBlGHsPcIZ6Dlirbf4pu4saWhleV3b4Q6YWMr83DNR/D5KvSIW6x4Xdmj/pVSJ/lBtvKUJQgSu7ZUojQWTkVlv27p/prGUX93cw2imErqCyUTARoJmDAdfpqn0C6Gu8AJoc4u0RPrXB79qB+PqpPSLgBGitj+EaXZQvGxcgERjMwPrfB4EmnvxoFTU3Efrk31rJhv/SpMU1KW2siMtK0L0oCyii8uO220AAPLYOyucCmzpW3BL77e21NrOzextG3wRHNNg2Bis7CUuhWGc1QaVc4LiaLKizylH/hazi3bIVwDVVarVzEFWNaFLYA9xGZZWWAmPDcp5wjf0ujyG/SebpbWG/MRZFMpXWEcVNL+lFVHMiNtXqEs/guoiG3y0yyYciryTELsSu4I3yW+oTVuTepPK+DdAKTyJuiAV8GNFAg8tYD6RioacPKejZ874XDpF5XYf/Rm+Qp5UOH75JOqqup80arlg4qaH/p59i+MvlfaJ7H41LwP1sEERXu+240dpmlSFj2CjzQ+MIAy/hL3U+S3I7gk6+dabqf/0b7Rte6h6EIBIUH8Spw0gcUvTE8UoOlfN9CjFDrIy5Nr3Q02l55hMxNhCuvr41bJ//38kdNNB48fZxBWXY0eRsatbvo1Wh0ekuYocO/RkhvxEECXRDrYDvd53A+/SWDdjWuUqoGFji/XYc7/QZ6snwO++BSogpHRtd6XMqOs6NfMEKTCrIxOBwJhKajGGlFCRRfwrZIlHaxWUdbh0jc2ySYE1qecgdTeranA2jzU7TrApTOUb9Y//793hPv5DkxJCWAwflds9H7iPqYul2Q260VXTMVA2nnbz707SnKvxyvgawykvCKVL+B1jk1OTo45vcx/i05PggqQ1KERSvXlMqq226V7lIu1+nq7y9WrzorYpGGva5SM7nu7Qr5HtuWLeFACKaNUfcTo6WRd1qWCD4QpRCl3h8nOoYW7a396ZjcCUuyYFuOYEFIB2jn5+4ECi8lksuQVt007A3RYcJieMAL9LdCkXr/JlZ1wpL/Tahd0rQhjn6o0ZcY+zr6h96r2nR9YFEhhzJMm69ZcxyQqMveuxkVKmWMK4Ta0fDcTmr+/9idnonSFbvbgdJr4ecO083txUs47KtDYvYHAN0Da6wK/VJv9aJPNXufY3cKEw1FZZ7dtUqFUWO1EeqCKThQKGghLUGT0vVsVpqiCBxEBpCzAj2vS3JxSZ6TVHVMzi3AuKogt3qfWfhS1o5nfQ4GGHgg8TZTIZvZtvK2GE/KOOrlU5Q2EvwHyHmKAkkF1nqqtbJHPT7furlTU3uvEiAKHBiJjp/pqCpGmfKPv3CoxRVF/i/KQgta6P0Eu+igh7MsuDGQDU/8i1/HbxnPDOgHO8GM1v0ZnumKivb9LIHD/bDNlZvd547rExu8DLD300t6j3OUaFBtTYD2FVfAcVuSvtzpsSpnKKlkFUr8q5dRBXJryDb1zq8cU1RZLaBuLIKSo48gxSvcg70ZUL5VCLab+DKG5hMrtANS6ogTz46sl2tmaYoqDVwYH+2Zn25lMlc9moQtOmoXUBf5q+0nW0ZcRA6rCoYSBegc2W1XARkC9y6lqTJryvX3v1oIpqpABlf/lKdTPewLTAGiBb2y8LcOJtJoxVQJ5kxaNOQ6q/P2A/F0cTjE/L+1kSALDbTrPCiuu0sH2hNw+RtPODVAPGTc9k7C9a5MO+LtotQ5brVaD+M1dZtOoXGBDzTbzRzDt3tDislsbpqjWuH8J6Xc4jVjzAdlnlwYooJMca8sCpqgI5Ae+Y8lxUFE1Z0WYYpndrVSaYmqlQnZG7eF2UByk1o15Rd3DEwoOimTUkSBKyPmGL5/rufS1x+Oam3N5yr/usZ/ZLThsVYMqQvZ3XM1OiMmPgNO/Yj+5tWKKGhgax2D+CKlC4R+yUN9mNJE2A0x9Cy9cznlQNUiX6Rbw1VQ4oeidQAnuTEYTN+Q7idZ5UIogqEjnKOuZno65V0wweGIxNTfH/t+c55L98kU+V5EvEO4luydqdu/dh8wQM5HRN9oxRWEKDxPspIXss3EGmQMAB5svyQKmWsFFLKF/5Pr2iDVSIBzgBQp60oTsY0EN3SLhCe3or8SLf728Pnfx8qUEguTnsH/29PCwcpCuvCLT081HVFM/yL4QwhZTipjCgx5a8gHwz+BbBjuWaCYTaTPAFPTFDP0LLjTmNqY6pYSN702FZ1slmBMOS+oHCiYhRzyL0RZw4p8t1SsePud6zeDJg5rtwuCq/Nwwd0UyAlhHdktU7DPFPdtGDcwvE0xVpQfKCLIXwD8jz9kjf4WWOZlWH1PgFydAVZzTmOqSDJI18tSPfsrmntSOH31dNQZDQ2k7LlWJ8Hmtu6u5tKaIMqsS/1IywnDFq9dzHg9+FhlzSs8wufRRR/zEkscuJPXzD71ZNUxt4z2GCgrFfEKLyPMDpHBDFjCVF4Hnor+It+Yypk5ImlPFs5zqFw4XUtua26W+iKITshlJcG2Wwmlft9ytuhuRqTo48cHa8+oVyRpFD5OsepKfKesltVYoxnpySHGiNtSciq+4Vw1TVBPgTwL4Z2goWbr8qItKoR5TUNuXs0cV5i6kDH0S5eFhKk0FxtalG1ilQGaT79+GsLoD85NgANQmeZ/pzNxr0lW/DKrmziUebAPeWuEhhhRVdV5lwxdiXSHFNJUJpnbICyqIf8buo8WCxXVZwJQxqjxhN7dlv6SSLqB+7aCI147cE/EEoZ4Blz82jvZtYlifiqmZc687/qgsKFaquSu7dv6bDFPJNfPQhtSxP7hXEVPVcs8fZJ9d4iiWKarHYHINmKIKkWskI7d/EZgSSRSskG4+m/bVyvS9bnxxhsFUGQ5SZ1699qgaTcHWVecSH7XrBCkm8j9uykhJDy69W01MmeUF1QhkNjShOVhoypQFTFHfoScN3jblIqKKSvdLpbpJOlVOXWD41CBI3rrSPiZxNJONJOtF69yGClVJik9Vl6xYUDk03Jxjym2qJ8mn4gfocf4/d+f701SWxvFLESqBAEJiAKVoowgvjEIgFSULAZ0haQapmwWQoA4SswTiwJhhiWN2TGYgamA1ii6JJrsmG3df1IYltGkZWksRguPoZP6jub/a3h/Pc++5955b5Z554cwo6K399Dzne77P9wnZyRRzVdlCD6XPbmUE8+oNCkZaU0zt28Ht8U67qMob8nUtKKZ3cFcKs4m0kj6cFtJVc6XEvo4rqoNSDVF6EtTxERGQut4dNZOfFIlEY9N4+RepMvcaFZ7TOVm1Ym+2VX2FwhpTxyUDGTGZZPPX7Dv+XxSMtKaYYg6g0TWrSSc5ar2+BahpnpFI6an1yvS+04dd7naYYioP9E4ISMUM1n1ZbMLRCe471NPapdInq7Yn+lQAZRdB6WeJqVOhY7JPumJAJtn+IfvztykYac0xxTxCU9YcNWy098oKCVM+adgfIBb6yJhS9CdCBZowvnc6HDYd8sdCNcj90S7RZYrbrFp1JAoXtEW8t5epC6GLp/Uup6QhRcUUjLQmmRLzJpw+F7FjAZyLI6v91oe5diktptTCH8k+dRI1t17HkOLss2HO6RfjfX/ooYqDqgz6Fm5rLxd6CSxcEgHZkG//H7KXqROhVtmBCrTPSvehp9bbfc0yxdzZ0Bqw5RCmfFMoU/OJrDOpZh2+3G3C7p1UTE02+4cUUkYjtpGMsoUffAMVDUcelno8AY9nrJu75kUcSzG+/Kuy4KBAlWtNF0UJcOH70WamDoUeSw9UmH02uyo3LRtpTTNVrAHV6sYdZ3RU+XrQGdeLGS39WqYlSinw+bF2Dqk5qb+vw8vf4TbWN9Y1nClL+/gAHngVPb8bQCryOhx+7RmZHk3vNO7R6cFALYyVuFMBNvXaPHuYOo2dVd78ZjNTirk5oH1Wbqr7n2UjrWmmtKHafOYIpcLbhWZRZO+nXrD/tQCem4SvvlKoqaWnlQ13+n1d7+GyWoDTVC0PTECNFEdU6SCnkstvMvImAjF274qojlThCUQDqbP0ch3RjqIAnKLvPtjMFNMpc1JA9tkf5F/wDyiRtjg3TGlDFdxxgvvPi1/OZn0Ui9zBC9qoatBspD6AqSoJIvDi0/gG1SI6y8jYNPIEZSO1yousSDgmGGobTDdOGWXKjW0Sv9jO1IB0Dj2kULxTOOqKfrZqpLXAlCZUznD/DfWi0X7X0p3ziRuVGab6gNMU5DmaUo0GIWhB5GMiRlX6ROR1tHZC4xlGR+SuwEi0VvSoQ4L6GSsvFxZN1ulG32vv7WaqTRr0ck9PoeCWZSOtFaZ0oHKA+y/Pj4reLevpNIr4Urr2kyWfe0UhfcpXiGnsUlXQrZuUxDsgxpSVH3s4CoxqP8X1QDQLYiR6KdNRX4bdf5lcWNLzRey9lrSfqeMSpgrAbBflV4BG2qJcMcVCpTUNyAFGJXfTkLejt3lBLfzlz2eM6fOutPLHHp78AlV5vRppY17Aja47UZQXKCai6rpvUP8xBsPpU1Uk2i0hsFxzKpX9TBGY0mkyBdhnk2tq55FVI601ppj8799qjZq745RApUJ3h1KkyByoVhLnGXdhRnbo7+rt6O3r18qbkH6v/jxcOldfTdWGI6AtQm+JXqaIHCnoDqwql0xt/B7KJVOQfRaYoPHS4hWVRaYY5pEWVJvPHZNSpsqjOJsZ3ZGY5SZKwEcv4c5K8ffWo/oFiFlIAk+5KFBACh5JRcF5blmkSuX7kHqjqj98+Ez2nzP2MpV8kMt9CrLPvgE2oBaLRlrLTOU/2tYcBb7PIUzJzkAcCK7ZbMgL1z2vGvWbRWbphVz5UE8vhc19ytNU/kP5NhWJRSeIHyDAQhUdU4jCutGcebYyFczpeUrHPptdFo20lplKB+yiUDllp+pSHoLm4tmZU39RVHSigb1rgVPXl+LxJaz0W5n0Eh2nSoXTVESh+A0aeICRaLReVejo5ak3GHmJEN3vSSv6Vs2l7le8qW2fza7bapVi9ZeCXDLFlOwmNc5UTin/fCrlLxuXzodmFvYtyLeqPiG4ZSmeSiTmJLqHonO+i9sLDpK8txWiXyQaMPQEgTH1/9PLfDEy5UPvfurlp7mf2p+5nFrVtM9mlws4z+wcyClTTOWzDS2hwhlMNany0mckg3BSX7GwFDIVHVcUgp5rOZ5aX5dC5YeaET0ENdj1sOIw9dC6rqon4XuoMPUJfRStGR8FZJ/9G/wKWkukpcIUU6SlqTulob5HuVG55jNDCFholoUrjBr257z+oY5UL/9GKpnl5+mw0KXnergBr/vlobyGel0hfUS+TcWi0xSeqpyg5iRdxv1+W3b7/dwZvx9on0WMfMNAmfiuJbdMMcXfaygVxlMyPstVo/L8nU0lpCPdlngBoKKG21P4MVRM9XJmqFuC67FX1ZDZArCCOePRifN7GLZS+SGriuSm2SpTJxCmVnfs96U/OSL82y1IocBcqZaMtJSY0lYqdoedwJT8sMRnMs/EZcN8b8xUSmoJ19l/prLDR9Pln0w/VNj+8Okb3OVUmbwnKhYuo/FUeoKjkfsqnf6pYUBO+932/qlOMeEvSapQIGVq8kF+rpliSrbQOKWgA4bpNF0GjLT5i7Kp8+ymND+zdKBkuL3k/JJynG9KQ3HP3A2XHaxFrX6DdmxTeqns5E51/T7foqQ6aWEtZHef74CwSX4BZTahugMUDEtspKXHFFP9HFUqzM2b+5yWH+74KJiXQcWCE2fPT+srqURcPnae3aZeIN9H8DSlL4JONl5CjlOKJo/wNJ0nO0gnO/24/qCcfCiPwube+VOhL1ED78a/8a97auFNTJEpxvUTqlTs9dznXmxKdpECKo4nbil/cVwY5zuEICXtB8mrgwuwMdk+FX5I6dEaCPwbuluUzoSPAfTNtvObvUztF3OToLjOn//TUo2sFihZkzSRliZTDIMqFeTF6Oe4Cnvw/AgWKmmFh6z4DV72c09hv0DqtD0JHqdGI7LjlBh/aX3pWSn0lYnjj0M6cbSPcYna5iyyTjHf71bQ+iLV2ugyxXyz7cDcFy8iKwhQuZblVR6wEvHFSrUcr4xiwncOvsF3Wn47Rav00xMpdPYpN1kO7SFMTCcp/qzl0Aq/9Y8UmEo++CRM8UOLrfx5PsfVhcIiCAtL6/EUDtR6Kp56UQx9o2a319cMRCtVwcYkGVOx16O0Hg8XKWo9DSd1TlHfkuWlCwVYddBU8WeBqRPiMLnKII1FOA6KNlNMCQLV7t5N/Rta0YGqZTmFUpWKJxbFw6RikmI/32nvbvJ39S/IQsDqQDODXPaLdVN7PEzAL9cbaH+BfK6H4Lkr3gDigH61k6lzojxyjwpThCoFdaaY9l3HSX/NOFSirbx9kWVHjVUqEU/MfiXWWD3grF+eK3mungd2UcgligC1pwM7t0qr9G+/DMyfuip8BeCiXd36YCNTA8IOWRyks9aKPw1TzDC8U60V7FmmmjTOSj2iCD68PJuKs1yJkh/7YyIeT91YPC/+NXgRGoHlAe+IDsqZGqH2dGqZsb6R6DrZ+JxE6EC1YeNMt0PiceomJabIjLQ2MMW0g1Bt7eHI52x3Rq9fGffcn45wcV2bWZxdZ1niViq1Prs4c75F/R3SFr88g0wFZP2I4UFqD1dl1jdrZJ6vcOtbDdkCdj/YxtQFcfrBOCWmyIy0djAFjyjY/vPeZUr0vfZxVj71ra1kaGhB9dlrc3NLc3PXzlbuy14feCc1xXM90YC/ngqEKSbxacmMRFdS/KtiYO68eEP1X6jF7oFtTB0XjlMtQVqLyEhrC1PMI+DzaPOnvVv8cf7ZBX8FsuWwdZxmO2xTDxxnRswU3zwViNm0TzWATiiS1WZgo0LbPdhP2492MfVKcMTfpcYUkZHWHqbAz6N3e3kwvd+rKVn0Nzeht1t9BDM8ZKseZMoTy1XtR9zf8aUBpoSOCyjqIbi69d4CUy+rNUo/QRtJUmMquOb6ZEy1Q0nujplLD+qAkz71PMTCoQ7svthvQNxuUNd+MXq1X6PpfcqISIH3z7MlzJppplz3k8+K8H2U70f8jh5SRCqFBaba9xnbqLacM5YeEdd7mn01mSqwqcbX1Y/rhf3oxlZWmluNos50b+/pkGHlryQJjqz9aJIp1zgXzoUo3IdeCRXnfYpMkagUppkquKd54wQUzruOGUulipSQ7VdTU1M9PZcn9SyAsJZ+uK4e6bcYsUtLbzTfL99qgCkxagW+aNE8UuFM7RvXipE8FmrjfigK0lwEKoVZpjjFX2vKaIv682jnG8cw5V2hsNQx6ieryvFQCNvufA8atPjJdDXDKsVt8HCzqgUVytQXSc0YyW8F/+wtqkwRqBTmmPpuXC+c06U+UG3/3TFMddFg6opcLMzjgYqgoRCDilYPakb/cvNZSaeMMCVkrRTDG5UWVPs1Ptc1oBIVivxxqkwRGFfNMLXvnpjqpGF+z1cbgXcds0/VrFBZXRKgGjwaAUa8t0/hoY2V0XqaUvPTEo0cqF49ydfaqFbffjTI1F3ZEEH1z3cKF82VQbprq90GpiR7KV79uZIOPk9NmaXocjNS/V3STyKbjuWq18NABEWr8Y0KvGfhHaEf3xtgquC+zrjbtJB+jzJT+sZVw0xVjkuiBzefYxUI8Omw5RSmTJ+m+ipkLoyFClKmDnPv/dqYLSLFYXjaAdk6ZoSpV4JVuASLWNhE7LQQUzc39WZIXxW2qeIg7aWbSGuQqYK78jBPdBo2cHX9xilausnT1GX+2ngoIwj2uDV0AqAas6l3Xh1GVt9APH9eTB97crVzYOBiW9u5U0eOHr2qE0sBDU0TS7i34Fa1HxCd2WJRG6pTob8qDl0SnWGNdL0D0iB2/kSVqZs/Eg5uK4BSaoYduE311kySEbWQLvTcfarTlO6kHI9wQWVLxgskNXZXEVJVeO7ckQtHT5wmFAOFntuibXRibRJqUVQy5bpFMEPwsdgHCc3H+bqlgHAVPTUxN8cIU5X3iach3geaz77+g72z7Wkq2+J4S5Xi1BQYEgNKS0t46guhXgBFCBJ5usmEi4AGGEQoYOCChIvjxERvQKJvrkyudzRz38yLq87IvLi0SVt6aNMmLaEtgBq/0uzz0Pb0PO99Dqiw/xlxLMfzgPt31l5rr71Ww/Fg6kZ2ipHxu58UIMVOm7jGX56SLrTCBCmCR1iLrMOB3NzNLs5UM31EoWgtIJ9ve+/Te0mmToMXu08Wqh4mcaMBovqs4JgXSggq0Yyps2LdEE1KZn4biWXD8WDqL7x125Hrd+SYGuHEDTmt3vJlCq2QfaAmOTUzQ5rsnr8ounHegRpZ7BOHiqlf+TgmDpUvlvj0UYwpQ9GTmJJut85U3oZg9VmYl/sf8EtUEEyVxMXa4XCSY3MEQy3RYxP2Oy8QDL8MtcBbfl42+CbgUHUcRtHMMqmmHqVIp5RYtZql55SG/25IQOXb2E5++viex9SpH59IrzX50u/tduYvmZ7CVJ8VklAm/aZBs7nff2JiruWbBkmni3KnPpQcmyXfb//Kyy4SWLL6/h8K89ApXmRaAZD/itweBIEpDZ5FugGVFakPvfi+qnVm9teQlIYDTO4i///06ePHj+/fv6/MKRpt+vcT+bXbyMGqgQlH0gEKwfTZA6jNsTlh6ERaGKZM4j+I+C+PGsjHMRX9IPLo8Xe6Y6RrXI+IzdTlS+UjI5e+1em+V7JTXlHgj2oFwO2VE4Ss82IwQUz9YHPU2WqRraCka03IZyzQX2OxbYV7NcIfmElZtYep6ieUPht+aIJ6mN+hE2m/8fFeEeJxv7MRiTfL9t+Bnm6I+I8bO4vHiSndSHbcjs3UPaPAhPAGdERbIF+I19MNbo1qugNu6gfd0y0dDbwvW+pP15ZQBoqPmgwqQyo1xO6npounVUYoSI3GYBNpv/HxJBFL/13q4WM+qXaJrtPHiiluraPzQibJmDFUP0GvvHIiBvzIH9nOFyKebugPBqdh55xuNI+qRX4jlWKoFOc3uFIOezNT1E8wQgHtg5gSsBVp4Zg6k5B5o4i3y1nWHWudFwxHZAzVnVwZRM0WM0vCPWsMFk6P7IByl2pyOigQ1pBrI+w26rQ2VCmXSrxmMVJqa/xhKg+vIm0LharPwvsgb2BLlcMxJbGyIOM9us6cFKbusYZh7r2sLiCS0ku7V9S8bTh78gegCimEamogSBCEmwuVXItsM+KPo0VB3p+Wlmo7+TYVfLalI/ZC/XE29qGzeYT2+++MaseU7p+IybyDupPC1N+4sQyx3VKQU0FyA72RCHCgCiqDailE0UhwWhfIzTjRqzNJlVRat6WgSmq1+za6knItqtMpUILpsxGXCfpZ/hDYmPxAQ6Zy9pA2cr01nRimyrOi7qkeA9cg0xI6lBkqcvqnYBf9WIBhEbhgYxBmCtGd0smVqrCngl4SfQBhXKkP6XwC56vUhmIwVjXyQR4JeDkHJu2Y0hUlUWZ+rbqTwhRnpyEwVHeuX74EfT6HSBfQDh5UoWC/TELF1HQwRGQOH1PuTQ0YkX8gfYqgKvk1rH7el3iYns85Z1P5TzrB9NntDwjFu7hLVCQkUom00EzpCqFnwZGDxeOOlM5Y/t21GwKLu99eLs9FOd9FkXjBVAaPFCXuIDEs4TJPjoUCrO3DbKgG3IcRSU/PwaSUcnlyHqt1qsL7K+nItvNlOqxILk7xQ2bxFZRn+YXPlNQSFTxTurY45Htkf1V3ImQcOX/5erlGJ+M3oSeoET4W5H8jEOwYNokR9YJDIYBqWNQWui28NMPDiFJ41tft6eEUVWGqfNsJV+aFDZBqz1jWUwJhaLQEuewlKnrFTCKRFoEpyCDoiUFKW5WKZNJyF35pUxUIvBhb4mGlX+q3BAPcw0moSLsmlLdbrM8vrSk+V1DVYUktiqFJfrNiVzqu9iCJXNQyfLCSmczZZz1DrEnBD/y1nW20VVJDgkMUkEQiLQpTUPGaCEYKTWYR92YyxIeKoir0on94aYp5T+unlob7LeBDQuDgYHBK5AIsHvNrytDNVJ3yrfSkO/E8gURVZOdhm4F9zWb2PTzlL5gmEcfiGx5SABOTpkzpWqMRpS+SzWWMB5KuiO1NnAoEBKsrAawAQi/M01brtNniDoE/CZZhIgKBeYNwhmGxRvdeB1PxD8i0eABPVWTPNXgmyzJWsu/hRx8vrSm2iVhePL1ExcJEvEkhGlO6hmeK5n+xhKsN06GdoaLXi+Z5cQr2ripAXCgQyt5rxfG+5sFJagiRBCgN1KWwPsXQhUxsre15MgIBVCy84xpkZd0Zm9mGjz2yNcnj/h8PKYkoBSJTwKlS4FqG91eKMBtaelS0SzUcDBBuRBHBEJkkmE8cnplS3pfqpY0VsS58Fo0rXK6KJA/eLbLzWO3jnvWurJs4kxnQGmzhe8QlCmhfLDXoX6hM6Uoe7ITlZruLBowGss6Jr8IiQ0W4gwOkL6Uf0DARiSPnLEQppTz2CCka/DmaiMhaqOS+a/WsiRMRGXJm38XjKF9vkfO4Tfv8s22KOWe/8o99qHRr8eiDaFxsFrwdj7oGT2Ew0CXSutpCVQqbDyBBRYSC0+QCsd4sagNVK3ccpj6ZZzzLvJhGF58d7CTCwvYqFokno5vvBs9mD6zqRoHaSq1n+VJRZGhU4HStEMcqzyMqGny+E4/wHz2x82Gl7QzmQoWsorkNFFRkAh80VcCVotZ7hZGyaoNUOxRSnnVP5YXsM5xqHXz98+b+XjIRj8fDQJFwPJ5I7u3sb7pWlwtLOMMzt4cL5teunNHlZ5vRvQT19OTDJ/ei4NHbSjAVh2GlKKio2iuT0xKRCrF5n2VeHCmYUpkSGvLAq4KXamI4XVR4a21hZua1y+V6/Xp1dXlwsa31lMDbvuU+MFLGY/fvf7q1bXB59TUp8PCLhUUmzMRhWSkKDjqzdSwAZaqAkaITA/OF9yFqE6Bo9qBotg7xcjZgFfvseLxgqUMq1TiRzo0lFHtStJHSXbGIbyRWrUoPosZb4NMijTbgSI3b8HDBkpfsFoxU641hMvWIUERUYIzOXhctfFGgwY3noSIF3KqXPdVw4cUKMOtrb8GRZSwNrBQVUKC9n0mSKjch40eFgqF+euuisUD8YIfqG2/xqFNfnVJjZbSRk8z2OjxYsJQMlypFkzkL7f8Y9MPTwAhJHBgi82uZzcBXpEq6EDVqb73ao1rNNqfsZS50Vb4kD8V+FJYiGcxKgw4FqdrLS2NmMrkvJJioFCD655ltkhcLDmtXb0p1Hg3U2GMXN1e51RXUbsfGigt4rGAp1DnlsfFz6T3FU/P9HQSFEPmL+S3kfjHtWEptAtY7LLK2T3U4vVI9Uuvr5KyusqXL7mSjleus7qrLo3vIDUG6XlgnXWbl8XGLg0XB5NS8Y6zfOk3Kau0fG17Kz6zb6MsGFJxPdXaSUWTFt64Cia92sqkVqaHGjBWzYQuFBal8mIVci4M9YRMLguU7BpSdTnUuhWCH38pcyI6KLL1af7VOr2E19vXY7JgnLBRx6y1XFUsSYS2Wrsmkr7EqZ1R18I/vUjHZrehBwfbKvLyKFpu92ojHBhaiqrI7gcqYLsJtsRaLeUL5xQUWqAwm1cG/Hg4QadfHjspUHh4RWGqlt2QRRaJhkYtXmAvKSvVsg6XXl5YVVLmhpTo7nZ2edN/GnheOY6awPpeuZBNFQqXEIbJYOqqsBQ6HA8BkHnCjqUztzRsauU2x0xGMIcwU1md1qbIaql00Kw6xQ0Q4DiVFycl0IGi+IDcxxExhHZ0K+C0KC9xaq+piPodUokqLm6fyKfqcQt+yz2KmsD6PjAI5DQ6NkTrHDzIO6DW5e7vnvljikLEZM4X1BblZZi2RYjZMZWUs5Wt0p9USybC2WcwU1hejYg3nfRl8ajo0S/hTJNuXwJQBKOf27du1QEXdpK4CNdGamOjs7O299dtvN0nV36xPa45W5gPwTfIYcGRvb29n58QEcwrybNRpu2sbamvBhXLABfEI/vJk1QyprLVdI51jSFw5mqeoOAqmDCYTQAYM51oSlqaJps7OW4CNuYW1tYWFmZmZu3fvejPa8vv9Xq/f6/dvbdH/T30KtLu7S33CiDk+8wF1CPmfn/rYS39EnczL/hteL7jiXXDhBXAHawDKW4BAcFvg5oq6a2tPAehMJgzdkStfMyNVKjSrLD6ix2g8BKZycoDF6e5u6uwF5MzNrS3cpUY1Pcy3yF9bgJFd8MXPjH4/85v3CJS+mD/1dXeXhG+XuR1/irqFNWADbwLcmoB9qwWY4UF/yCrThiiL0BJU2cBRIeXUJkYBzFD31QnAUD0gaCZtI8Bw9XtJiDJD9euQ38vcth+QtuVlYJ8BlNXf7O2cuNqNCTsMaRWiEMyb0x/VU9SpYgqQ1NR5s560Q9RcjXrt+73+r4ofOBMHTBlJG0VYPcCr9jaG60ub+qnf0KtKfWhMGWqvds7RKPmZ+Zv3pImZPYJZ4sJc59U/2zuj1cSBKAwX7a6C4AqCdDFaC9UaQFuQShtvFky7V6Egkd4ILQWJCN70NXLXfQRhLxcksD5CX2szSWJNOkm2ceLo7v/dFOrYJMXfmXPOf2ZGkMTGlJgWpnjxeRJDU0VVH28r+NkfdY11pQ1ZbMSAlaYGPPNLtY/XfCXtFXoKUJbWhTDi8+6cj8rVccwIq8XxMbIxNKUb0FRAOnEqQRkMl34kIS6I+fgWCi5Lv2f6LhQ/Qtd+o8eOZleRoC1XTYYxGz4iptqE9CCgKUNoFsJ01a82m0nsjxmTkyDd3Fy/hOf9Um1Zneqa+4H673IUbm3L/KnpHeWxnYIoNsQnjN8eXbSuKMFWvloSj1okcS4mc9JUHOjdHtZx8Zmz07vnyPpUqn0ryR1bXAsnjb5c/IsSc5wdr863yGKs6VNVlm4hpoSKU/2I2lVVWA+a/HtlfuH2GPSNld5c7Ce9rF9YAT6KHHFOSF1ZUUnR13YakZqvXfZ1JzJjT9RjT0OL5XrB11TRTO/MFbkrEVcFqlIJh1N+VTRCQyZhVwKqi4gj6C0yZye9yUf9frnUiFj7urJlrZjNTJmNPasm15tkWfOM5XLdm2QkH/641yQuKWJLcv2DxsoOqJk3PSU+QOICvG1/gm8i+bxfI2wrlkL4thKlHalQUf2zl5SBd5v70tO2j/aQOM+lbldWlPl8OLTM5cRG6zHRLjzmWP8vwucYzwDDCHoHcdCaoiGe9qE6nxMLbVcqtm3TOvyzvEKqfrAmfKIZ+PxH6cpuBFRUEwVtV9l6or0eudzTyFYbcd4W3U4Pp1FDNlFMCdqoCmnmGFJQh1YviDJ3h5I3yk63yFu3x1frMofmBZ+gnN3L/Tn7MzciUxjViNcFPg9ANVGcR0xo2+hJXPsK2vhjnz5g+MdA4rREyiREiZjeT2SegKvEqepL889eU0fW0OcLtqeqPG2SEaK2vnxz4FZK3NJ+F+97pyblqGQGNAX4SC0yWe50X+WPeTqTDm78q79awGLsGZoCfMkMIl2ypIRVaHK/0/PJXzXxXkJTgDP9SPORUOU7Ra3orTZ5/nkZOOgOmgKcaTDdoDnpueohJI1ucwpNAc4UmB4kkHxcdU8xUKxTg6YAZzw+2X244Yvsr/uQl8+gKcCZ1tXRkSiWCoVqoyHuxy2Xw049LENTALDlGzQFAFPq0BQATPkOTQHAlHNoCgCm3EBTADCl/ABNAcCUXraeNanX8K8AAAAAAABgm/wBcKe5dPYduzkAAAAASUVORK5CYII=" alt="cats logo" width="15%" height="10%" />               
               <h1 class="projTitle" style="margin-top:25px;">${projectName}</h1>
            </div>
         </div>
         <div class="header">
            <h4 style="text-align: center;color: black;font-weight: 600;font-family:verdana;">Manual Mapping Report</h4>
         </div>
         <#assign displayManualMapping=displayManualMapping?lower_case>
         <#if displayManualMapping=='yes'>
         <div class="container-fluid">
            <div class="row">
               <#if countOfPass!=0>
               <div class="col-sm-6" style="padding-left:0px;padding-right:0px;">
                  <div class="table-responsive">
                     <table class="table table-bordered">
                        <thead>
                           <tr style="background-color:#3c7aa9;color:white;">
                              <th class="columnHeader" colspan="6">Current Run Report</th>
                           </tr>
                           <tr style="background-color:#99cccc;color:#1e2c42">
                              <th class="columnHeader">Config</th>
                              <th class="columnHeader">Passed</th>
                              <th class="columnHeader">Failed</th>
                              <th class="columnHeader">Skipped</th>
                              <th class="columnHeader">Partially Skipped</th>
                              <th class="columnHeader">No Run</th>
                           </tr>
                        </thead>
                        <tbody>
                           <#assign passValue=0>
                           <#list currentRunDataSet as currentData>
                           <tr>
                              <#assign pass=currentData.passed?keep_after("(")>
                              <#assign pass=pass?keep_before("%")>
                              <#assign passValue= passValue+pass?number>
                              <td class="dataAlign bandwidth">${currentData.config}</td>
                              <td class="dataAlign bandwidth">${currentData.passed}</td>
                              <td class="dataAlign bandwidth">${currentData.failed}</td>
                              <td class="dataAlign bandwidth">${currentData.skipped}</td>
                              <td class="dataAlign bandwidth">${currentData.partiallySkipped}</td>
                              <td class="dataAlign bandwidth">${currentData.noRun}</td>
                           </tr>
                           </#list>
                        </tbody>
                     </table>
                  </div>
               </div>
               </#if>
               <#if countOfPassConsolidated!=0>
               <div class="col-sm-6" style="padding-left:0px;padding-right:0px;">
                  <div class="table-responsive">
                     <table class="table table-bordered">
                        <thead>
                           <tr style="background-color:#3c7aa9;color:white;">
                              <th class="columnHeader" colspan="5">Consolidated Run Report</th>
                           </tr>
                           <tr style="background-color:#99cccc;color:#1e2c42">
                              <th class="columnHeader">Passed</th>
                              <th class="columnHeader">Failed</th>
                              <th class="columnHeader">Skipped</th>
                              <th class="columnHeader">Partially Skipped</th>
                              <th class="columnHeader">No Run</th>
                           </tr>
                        </thead>
                        <tbody>
                           <#list consolidatedRunDataSet as consolidatedData>
                           <tr>
                              <td class="dataAlign bandwidth">${consolidatedData.passed}</td>
                              <td class="dataAlign bandwidth">${consolidatedData.failed}</td>
                              <td class="dataAlign bandwidth">${consolidatedData.skipped}</td>
                              <td class="dataAlign bandwidth">${consolidatedData.partiallySkipped}</td>
                              <td class="dataAlign bandwidth">${consolidatedData.noRun}</td>
                           </tr>
                           </#list>
                        </tbody>
                     </table>
                  </div>
               </div>
               </#if>
            </div>
         </div>
         </#if>
         <div>
            <button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
         </div>
         <div class="padding" style="padding: 0px 0px 50px 0px;">
         </div>
         <#if countOfPass!=0>
         <#assign passPercent=passValue/countOfPass>
         <#else>
         <#assign passPercent=0>
         </#if>
         <#if passPercent??>	
         <#if passPercent gte passPercentageThreshold >
         <#assign result='result_pass'>
         <#elseif passPercent lte failPercentageThreshold >
         <#assign result='result_fail'>
         <#else>
         <#assign result='result_amber'>
         </#if>
         </#if>
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
            <div class="col-sm-4 "></div>
            <div class="col-sm-4 ">
               <#assign overallPassRate=passPercent?number>
               <span style="float:right;font-size:22px;">OverAll Pass Rate :${overallPassRate?string["0.##"]}%</span>
            </div>
         </div>
         <#else>
         <h3 style="text-align:center;">No Information To Display &#x2639;</h3>
         </#if>
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
      </script>
      </#if>
   </body>
</html>