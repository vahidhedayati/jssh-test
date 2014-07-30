

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'environments.label', default: 'Environments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<g:javascript library="jquery"/>
		 <asset:stylesheet href="jssh.css" />
   	 	<asset:stylesheet href="bootstrap.min.css" />
	</head>
	<body>
	
<jssh:socketconnect 
hostname="localhost" 
userComand="tail -f /tmp/test1.log"
divId="logs1"
/>


<div id="logs1">
</div>




<jssh:socketconnect 
hostname="localhost" 
userComand="tail -f /tmp/test.log"
divId="logs2"
/>


<div id="logs2">
</div>

</body>
</html>
