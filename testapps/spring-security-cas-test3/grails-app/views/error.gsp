<html>
	<head>
		<title>Grails Runtime Exception</title>
		<g:if env="development"><asset:stylesheet src='errors'/></g:if>
	</head>
	<body>
		<g:if test="${Throwable.isInstance(exception)}">
		<g:renderException exception="${exception}" />
		</g:if>
		<g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
		<g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
		</g:elseif>
		<g:else>
		<ul class="errors">
			<li>An error has occurred</li>
			<li>Exception: ${exception}</li>
			<li>Message: ${message}</li>
			<li>Path: ${path}</li>
		</ul>
		</g:else>
	</body>
</html>
