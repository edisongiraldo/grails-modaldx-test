
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox call RemoteForm Function wrap around your form + form action</h1>
		
		
		<!--  Default Modal button to load up modal page - notice the HREF  -->
		<!--  ModalDynamix matches actual modal form loaded up in modalcreate gsp -->
		<!--  the SPECIALFORM matches ID of g:modalForm -->
		<!--  The only thing different is the onClick -->
		<!--  which runs custom java script that does two things -->
		<!--  clones MyDiv1 (content) + shows MyDiv1 -->
		<!--  the show is required for when you open/close modal pages -->
		
		
		<!--  TEST REMOTE FORM ALREADY COMES WITH FORM TAGS  -->
		<!--  ALL YOU NEED ARE THE FIELDS i.e. _forms.gsp template of a given controller -->
		<!--  save being its submitAction (default action for _form.gsp) -->
		
		<button href="#ModalDynamixSPECIALFORM" class="btn btn-block btn-success" 
		role="button" data-toggle="modal"  onclick="runThisButtonCheck()" title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>
 		
 		
 		<g:javascript>
 	 	var myCloneMyDiv=''
 	 	function runThisButtonCheck() {
 	 		myCloneMyDiv=$('#MyDiv1').clone();   
 	 	 	$('#MyDiv1').show();
 	 	}
 	 	</g:javascript>
 		
 		<label>Field 1: showing nothing is changing</label>
 		<input type=text name="abc" value="Put something in here and add value"/>
 		
 		<div id="MyDiv1">
  			<g:modalForm
 				id="SPECIALFORM"
 				title="My Modal Title"
 			
 				submitController="MyLocalDomain" 
 				submitAction="save"
 				submitValue="Save Modal Form and update existing form no refreshing"
 			
 			
 				formType="modalRemoteForm"
 				divId="MyDiv"
 				returnController="testdynamix"
 				
 				
 				close="XX"
 				
 				
 				queryController="modaldynamix"
 				queryAction="getAjaxCall"
 			
 				modalTemplatePage="/myLocalDomain/form"
 				
 				modalTemplate='/modaldynamix/modalcreate'
 			
 				domain="grails.modaldx.test.MyLocalDomain"

 			
 			/>
 		</div>
 		
 
 
 		<!--  The buttons must be kept outside of actual form - otherwise you are conflicting two form tags -->
 		
 		
 		<!--  Main FORM on this page that will be doing core function -->
 		<g:form name="mynextForm" action="step2">
 		
 		 
 		<div id="MyDiv">
 			<!--  PLEASE NOTE THIS NOW MATCHES UP WITH divId+'DISPLAY' added within plugin -->
 			<!--  always ensure the render page and returnController above match actual URL in this MyDiv call  -->
 			<!--  this needs to render since the plugin will render the same page upon update -->
 			<g:render template='/testdynamix/MyDivDisplay' />
 		</div>
 		
 		</g:form>
 		
 		
 		