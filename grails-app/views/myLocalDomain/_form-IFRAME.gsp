



<g:form name="${params.formId }"   controller="${params.submitController }" action="${params.submitAction}">
<fieldset class="form">

<div class="fieldcontain ${hasErrors(bean: myLocalDomainInstance, field: 'myUsers', 'error')} ">
	<label for="myUsers">
		<g:message code="myLocalDomain.myUsers.label" default="My Users" />
		
	</label>
	<g:textField name="myUsers" value=""/>
</div>


	</fieldset>
	<fieldset class="buttons">
		<g:submitButton name="create"  class="save" value="${params.submitValue}" />
	</fieldset>
</g:form>
