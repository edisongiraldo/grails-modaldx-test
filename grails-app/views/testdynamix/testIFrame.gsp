
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox call Grails Test IFRAME within modalbox </h1><br>
		
		<h3>Sends your Form url - URL that opens a basic entire form via http to the iframe !</h3><br><br>
		
		
		<b>Both Divs below have to load in templates, because upon refresh those very templates are called on</b><br><br>
		
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
		role="button" data-toggle="modal"  onclick="runThisIframeButtonCheck()" title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>

 		
 		<!--  now lets load up the top java script which just runs the above onclick  -->
 		<!--  and shows MyDiv1 -->
 		<g:showTopScript scriptName="runThisIframeButtonCheck" divId="MyIframeDiv1" />
 		
 		<!--  MyIframeDivForm could and should be your own naming convention and MUST be different per any set -->
 		<!--  its the secondary to actual DIV below called MyIframeDivForm -->
 		<!--  this is basically your modal FORM Page  -->
 		<!--  so Top div is always bottom with it ending with numeric1 -->
 		<!--  inside it it loads /path/to/ACTUAL DIV_NAME ENDING WITH Form -->
 		<!--  so divId1 has a template called actual divname and ends with Form -->
 		<!--  this is a template file in this path on your local project that you have named as above -->
 		<!--  inside it is your form - take a look at this examples one to better understand -->
 		<div id="MyIframeDiv1">
  			<g:render template='/testdynamix/MyIframeDivForm' />
 		</div>
 		
 
 		<!--  The buttons must be kept outside of actual form - otherwise you are conflicting two form tags -->
 		<br/><br>
 		<h1>ACTUAL FORM</h1>
 		
 		<!--  Main FORM : Actual PAGE FORM on this real page that will be doing core function -->
 		<g:form name="mynextForm" action="step2">
 		
 		<!-- Core Div related to above loader - notice the loader is outside of the form tags of this one -->
 		<!--  MyDiv could and should be your own naming convention and MUST be different per any set -->
 		 
 		<div id="MyIframeDiv">
 			<!--  PLEASE NOTE THIS NOW MATCHES UP WITH divId+'DISPLAY' added within plugin -->
 			<!--  always ensure the render page and returnController above match actual URL in this MyDiv call  -->
 			<!--  this needs to render since the plugin will render the same page upon update -->
 			<!--  like above the file is called the divname BUT ENDS with Display -->
 			<!--  This is the fields for your form in this case a very basic one field form -->
 			<g:render template='/testdynamix/MyIframeDivDisplay' />
 		</div>

 		
 		<!--  Demo field nothing to do with exercise -->
 		<label>Field 1: showing nothing is changing</label>
 		<input type=text name="abc" value="Put something in here and add value"/>
 		
 		</g:form>
 		
 		
 		
 		
 		