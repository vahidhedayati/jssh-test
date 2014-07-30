

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'environments.label', default: 'Environments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<g:javascript library="jquery"/>
    	 <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jssh.css')}" type="text/css">
	</head>
	<body>
	<div class="container">
<jssh:socketconnect 
hostname="localhost" 
userCommand="tail -f /tmp/test1.log"
divId="logs1"
/>


<jssh:socketconnect 
hostname="localhost" 
userCommand="tail -f /tmp/test.log"
divId="logs2"
/>

</div>

</body>
</html>