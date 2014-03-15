 		
  			<g:modalForm
 				
 				id="ModalDynamixSELFPOST"
 				formId="MyForm"
 				
 				title="My Modal Title"
 				
 				
 				
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