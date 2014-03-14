
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox call RemoteForm Function wrap around your form + form action</h1>
		
		
		<!-- Basic Modal FORM -->
		<!--  Your own form - your own custom actions, it just loads up form in popup -->
		
		
		<button href="#ModalDynamixBASIC" class="btn btn-block btn-success" 
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
 				id="BASIC"
 				title="My Modal Title"
 			formType="modalBasic"
 				
 				modalTemplatePage="/myLocalDomain/formBasic"
 				
 				

 			
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
 		
 		
 		