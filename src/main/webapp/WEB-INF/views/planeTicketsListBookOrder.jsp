<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script> 

<!-- bootstrap -->
 <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" />" rel="stylesheet">
 <script src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js" />"></script>
 <script src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap-datepicker.js" />"></script>
  
 <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
   
  <!-- Datepicker -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
  <!-- Clockpicker -->
  <link href="<c:url value="/resources/clockpicker/dist/bootstrap-clockpicker.min.css" />" rel="stylesheet" type="text/css">
  <script src="<c:url value="/resources/clockpicker/dist/bootstrap-clockpicker.min.js" />"></script>
  

</head>
<body>

<nav id="myNav" class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a href="#" class="pull-left"><img src=<c:url value="/resources/images/logo.png" />></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="http://localhost:8080/myapp/"><spring:message code="label.navbar.home" /></a></li>
        <li><a href="about.html"><spring:message code="label.navbar.about" /></a></li>
        <li><a href="contact.html"><spring:message code="label.navbar.contact" /></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> <spring:message code="label.navbar.login" /></a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
  			<ul class="nav nav-pills nav-stacked">
			  <li><a href="planeTickets.html"><span class="glyphicon glyphicon-chevron-right"></span> <spring:message code="label.sidenav.addplane" /></a></li>
			  <li><a href="trainTickets.html"><span class="glyphicon glyphicon-chevron-right"></span> <spring:message code="label.sidenav.addtrain" /></a></li>
			<li><a href="planeTicketsList.html"><span class="glyphicon glyphicon-chevron-right"></span> <spring:message code="label.sidenav.planeTicketsList" /></a></li>
			<li><a href="trainTicketsList.html"><span class="glyphicon glyphicon-chevron-right"></span> <spring:message code="label.sidenav.trainTicketsList" /></a></li>
			<li><a href="planeTicketsListBook.html"><span class="glyphicon glyphicon-chevron-right"></span> <spring:message code="label.sidenav.planeTicketsListBook" /></a></li>
			
			</ul>
    
    </div>
    <div class="col-sm-9 text-left"> 
      <h1>Book plane Tickets - order form</h1>
      
		 	<form:form method="post" class="form-horizontal" action="addPlaneTicketOrder.html" commandName="planeTicketOrder">
			   <fieldset>
			 	  <form:hidden path="id"/>
			 	  <form:hidden path="planeTicketId"/>
			 	  
			      <t:input path="firstname" label="label.ticket.plane.order.firstname" required="true" />
			      <t:input path="secondname" label="label.ticket.plane.order.secondname" required="false"/>
			      <t:input path="lastname" label="label.ticket.plane.order.lastname" required="true"/>
			      <t:input path="state" label="label.ticket.plane.order.state" required="true"/>
			      <t:input path="city" label="label.ticket.plane.order.city" required="true"/>
			      <t:input path="street" label="label.ticket.plane.order.street" required="true"/>
			      <t:input path="email" label="label.ticket.plane.order.email" required="true"/>
			      <t:input path="telephone" label="label.ticket.plane.order.telephone" required="true"/>



			    </fieldset>
			    <div class="myButton">
			      <input type="submit" class="btn btn-info btn-block" value="<spring:message code="label.button.submit"/> ">
			    </div>		    

			</form:form>  
		
		      <h4></h4>
		

    </div>
    <div class="col-sm-2 sidenav">

    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p><spring:message code="footer" /></p>
</footer>



<script>/*

/*menu handler*/
    $(document).ready(function () {
        var url = window.location;
    // Will only work if string in href matches with location
        $('ul.nav a[href="' + url + '"]').parent().addClass('active');

    // Will also work for relative and absolute hrefs
        $('ul.nav a').filter(function () {
            return this.href == url;
        }).parent().addClass('active').parent().parent().addClass('active');
    //walek
    	if(url == "http://localhost:8080/myapp/addPlaneTicket.html"){
    		$('ul.nav a[href="planeTickets.html"]').parent().addClass('active');
    	}
    });


    $(document).ready(function() {
    	
    	var d = new Date();//from today
    	
       $(".date")
            .datepicker({
                format: 'mm/dd/yyyy',
                startDate: d,
                endDate: '12/30/2020',
                autoclose: true
            })
            .on('changeDate', function(e) {
                $(".date").datepicker('hide');
            }); 


        
        
    });
  /*/
    var clocktype;
    if(locLang == "en"){
    	clocktype = true;
    } else clocktype = false;*/
    $('.clockpicker').clockpicker({
    	placement: 'top', // clock popover placement
    	align: 'right',       // popover arrow align
    	donetext: 'OK',     // done button text
    	autoclose: false,    // auto close when minute is selected
        twelvehour: false        // vibrate the device when dragging clock hand


    	});
    var url = window.location;
    // Will only work if string in href matches with location
        $('ul.nav a[href="' + url + '"]').parent().addClass('active');

    // Will also work for relative and absolute hrefs
        $('ul.nav a').filter(function () {
            return this.href == url;
        }).parent().addClass('active').parent().parent().addClass('active');
    

    
    
    
        $('form').submit(function (e) {
            var form = this;
            e.preventDefault();
            setTimeout(function () {
                form.submit();
            }, 3000); // in milliseconds
            $("<p>Thank you! Order completed! Please check your email.</p>").appendTo("h4");
        });
  
</script>


</body>
</html>
