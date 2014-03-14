<%@ page import="grails.modaldx.test.MyLocalDomain" %>



<div class="fieldcontain ${hasErrors(bean: myLocalDomainInstance, field: 'myUsers', 'error')} ">
	<label for="myUsers">
		<g:message code="myLocalDomain.myUsers.label" default="My Users" />
		
	</label>
	<g:textField name="myUsers" value="${myLocalDomainInstance?.myUsers}"/>
</div>

