		<meta name="layout" content="main"/>

		<h1>ModalBox call a BASIC FORM within typically a html page</h1>
		
		<!--  g:genModalButton loads up a button that triggers modalbox
		  		ID -> must match the ID of the id set further within the DIVS templates
		  		divId -> This is the divId put above your main form that contains the modalbox itself and the form within it
		  		title -> hover title of your new button
		  		value -> display text in the button	
		 --> 
		
		<g:genModalButton 
		id="ModalDynamixSPECIALFORM"
		divId="MyBasicDiv1"
		title="Create New MyUser"
		value="Generate New MyUser Remote Form Example?"
		/>
		
 		

		<!--  
			 	Main DIV to display form for above button 
			 	it can be called anything
			 	The fields:
			 	
			 	-> ID
			 	Must match above href
			 	 
			 	-> modalTemplate 		
			 	This must be left as is or overriden - 
			 	this loads up basic modal wrapper for your form below:
			 					   
				-> modalTemplatePage 
				This is the path to where your TEMPLATE file is containing:
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
 		
 		