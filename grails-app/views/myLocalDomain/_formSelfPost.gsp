



<g:form name="${attrs.formId }"   controller="MyLocalDomain" action="save">
<fieldset class="form">

<div class="fieldcontain ${hasErrors(bean: myLocalDomainInstance, field: 'myUsers', 'error')} ">
	<label for="myUsers">
		<g:message code="myLocalDomain.myUsers.label" default="My Users" />
		
	</label>
	<g:textField name="myUsers" value=""/>
</div>


	</fieldset>
	<fieldset class="buttons">
		<g:submitButton name="create"  class="save" value="save record" />
	</fieldset>
</g:form>
