		<meta name="layout" content="main"/>

		<h1>ModalBox call a BASIC FORM within typically a html page</h1>
		
		<!--  	
				Basic Modal FORM :
		  		Your own form - your own custom actions, it just loads up form in popup 
		  		if it is a form upon submission the results take over on main screen 
		 		thus modal form gets posted to main screen minimal config required 
		-->
		<button href="#ModalDynamixBASIC" class="btn btn-block btn-success" 
		role="button" data-toggle="modal"  title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>
 		

		<!--  
			 	Main DIV to display form for above button 
			 	it can be called anything
			 	The fields:
			 	
			 	-> ID				-	Must match above href
			 	 
			 	-> modalTemplate 	- 	This must be left as is or overriden - 
			 					   		this loads up basic modal wrapper for your form below:
			 					   
				-> modalTemplatePage -	This is the path to where your TEMPLATE file is containing:
									 	The entire form including <form methods and submit buttons>
				
		 -->

 		<div id="MyBasicDiv1">
 			<g:modalForm
 				id="ModalDynamixBASIC"
 				title="My Modal Title"
 				modalTemplate="/modaldynamix/modalbasic"
 				modalTemplatePage="/myLocalDomain/formBasic"
 		 			
 			/>
 		</div>

 		
 
 
 		<!--  
 			  IF ABOVE IS A FORM AND BELOW IS A FORM ?
 		      This makes no sense since in this scenario your:
 		      Form below will update to the results of modalbox form.
 		      You may wish to look at another one of the methods of this plugin!
 		      
 		 -->
 		 
 		 
 		SOME HTML PAGE............<br/>
 		........................<br/>
 		........................<br/>
 		........................<br/>
 		........................<br/>
 		Contains above button which kicks off a pop up form people fill it in, results takes over this page.
 		
 		