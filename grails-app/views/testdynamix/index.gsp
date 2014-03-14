
		<meta name="layout" content="main"/>
		
		
<button href="#ModalDynamixSPECIALFORM" class="btn btn-block btn-success" role="button" data-toggle="modal"  onclick="runSendersCheck()" title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>
 		<g:javascript>
 	 	var myCloneMyDiv=''
 	 	function runSendersCheck() {
 	 		myCloneMyDiv=$('#MyDiv1').clone();   
 	 	 	$('#MyDiv1').show();
 	 	}
 	 	
 	 </g:javascript>
 		
 		<div id="MyDiv1">
 		
 		<g:modalForm
 			id="SPECIALFORM"
 			
 			submitController="MyLocalDomain" 
 			submitAction="save"
 			submitValue="Save Modal Form and update existing form no refreshing"
 			
 			
 			formType="modalRemoteForm"
 			divId="MyDiv"
 			
 			
 			
 			queryController="modaldynamix"
 			queryAction="getAjaxCall"
 			
 			modalTemplatePage="/myLocalDomain/form"
 			
 			
 			domain="grails.modaldx.test.MyLocalDomain"
 			searchField="myUsers"	 
 			
 			
 		
 		/>
 		</div>
 		
 		
 		<g:form name="mynextForm" action="step2">
 		
 		 
 		<div id="MyDiv">
 		
 		<g:render template='MyDivDisplay' />
 		</div>
 		
 		</g:form>
 		
 		
 		