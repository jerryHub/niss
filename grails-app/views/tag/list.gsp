
<%@ page import="mx.nissan.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tag" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="asignado" title="${message(code: 'tag.asignado.label', default: 'Asignado')}" />
					
						<g:sortableColumn property="numTag" title="${message(code: 'tag.numTag.label', default: 'Num Tag')}" />
					
						<th><g:message code="tag.tipoTransporte.label" default="Tipo Transporte" /></th>
					
						<th><g:message code="tag.transportista.label" default="Transportista" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tagInstanceList}" status="i" var="tagInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "asignado")}</g:link></td>
					
						<td>${fieldValue(bean: tagInstance, field: "numTag")}</td>
					
						<td>${fieldValue(bean: tagInstance, field: "tipoTransporte")}</td>
					
						<td>${fieldValue(bean: tagInstance, field: "transportista")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tagInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
