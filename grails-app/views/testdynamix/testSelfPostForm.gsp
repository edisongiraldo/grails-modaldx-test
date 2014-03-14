
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox call RemoteForm Function wrap around your form + form action</h1>
		
		
		<!--  Default Modal button to load up modal page - notice the HREF  -->
		<!--  ModalDynamix matches actual modal form loaded up in modalcreate gsp -->
		<!--  the SPECIALFORM matches ID of g:modalForm -->
		<!--  The only thing different is the onClick -->
		<!--  which runs custom java script that does two things -->
		<!--  clones MySelfPostDiv1 (content) + shows MySelfPostDiv1 -->
		<!--  the show is required for when you open/close modal pages -->
		
		
		<!--  TEST SELF POST FORM REQUIRES FORM TAGS  -->
		<!--  YOU NEED ENTIRE FORM PAGE AND ACTIONS  -->
		
		
		<!-- /myLocalDomain/formSelfPost = modalTemplatePage holds entire form -->
		<!--  the form config is coming from this taglib below, but if you wanted you could remove the complexity  -->
		<!--  from the taglib i.e. not define it and just declare as per default gsp -->
		
		<button href="#ModalDynamixSELFPOST" class="btn btn-block btn-success" 
		role="button" data-toggle="modal"  onclick="runSelfFormButtonCheck()" title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>
 		
 		
 		<g:javascript>
 	 	var myCloneMySelfPostDiv=''
 	 	function runSelfFormButtonCheck() {
 	 		myCloneMySelfPostDiv=$('#MySelfPostDiv1').clone();   
 	 	 	$('#MySelfPostDiv1').show();
 	 	}
 	 	</g:javascript>
 		
 
 		
 		<div id="MySelfPostDiv1">
  			<g:modalForm
 				
 				id="SELFPOST"
 				
 				title="My Modal Title"
 				
 				
 				formType='modalSelfPostForm'
 				submitController="MyLocalDomain" 
 				submitAction="save"
 				submitValue="Save Modal Form and update existing form no refreshing"
 			
 			
 			
 				divId="MySelfPostDiv"
 				returnController="testdynamix"
 			
 			
 				queryController="modaldynamix"
 				queryAction="getAjaxCall"
 			
 				modalTemplatePage="/myLocalDomain/formSelfPost"
 				modalTemplate='/modaldynamix/modalSelfPostForm'
 			
 				domain="grails.modaldx.test.MyLocalDomain"
	 
 			
 			/>
 		</div>
 		
 
 
 		<!--  The buttons must be kept outside of actual form - otherwise you are conflicting two form tags -->
 		
 		
 		<!--  Main FORM on this page that will be doing core function -->
 		<g:form name="mynextForm" action="step2">
 		
 		 
 		<div id="MySelfPostDiv">
 			<!--  PLEASE NOTE THIS NOW MATCHES UP WITH divId+'DISPLAY' added within plugin -->
 			<!--  always ensure the render page and returnController above match actual URL in this MySelfPostDiv call  -->
 			<!--  this needs to render since the plugin will render the same page upon update -->
 			<g:render template='/testdynamix/MySelfPostDivDisplay' />
 		</div>
 		
 		</g:form>
 		
 		
 		