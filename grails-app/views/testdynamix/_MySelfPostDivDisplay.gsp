
 		<% def myvar=returnResult ?: grails.modaldx.test.MyLocalDomain.list() %>
 		
		<g:each in="${myvar}" var="attach"> 
			<g:if test="${myvar.size() > 0 }">
				<g:if test="${myvar.getClass().isArray()}">
					<g:if test="${myvar.contains(attach.id.toString())}">
						<div class="tbutton"><g:checkBox name="attachments" value="${attach.id}" checked="true" /> ${attach.myUsers} </div>
			  		</g:if>
  					<g:else>
  						<div class="tbutton"><g:checkBox name="attachments" value="${attach.id}" checked="false" /> ${attach.myUsers} </div>
  					</g:else>	
  				</g:if>
  				<g:else>
  					<g:if test="${params.attachments}">
  						<g:if test="${ myvar.equals(attach.id.toString())}">
  							<div class="tbutton"><g:checkBox name="attachments" value="${attach.id}" checked="true" /> ${attach.myUsers} </div>
			  			</g:if>
  						<g:else>
  							<div class="tbutton"><g:checkBox name="attachments" value="${attach.id}" checked="false" /> ${attach.myUsers} </div>
			  			</g:else>
			 		</g:if>
			 	<g:else>
					<div class="tbutton"><g:checkBox name="attachments" value="${attach.id}" checked="false" /> ${attach.myUsers} </div>
			 	</g:else> 
  			</g:else>		
  		</g:if>
</g:each>