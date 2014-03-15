<g:modalForm
 				id="ModalDynamixSPECIALFORM"
 				formId="MyRemoteForma"
 				title="My Modal Title"
 			
 				submitController="MyLocalDomain" 
 				submitAction="save"
 				submitValue="Save Modal Form and update existing form no refreshing"
 			
 			
 				
 				divId="MyDiv"
 				returnController="testdynamix"
 				
 				
 				close="XX"
 				
 				
 				queryController="modaldynamix"
 				queryAction="getAjaxCall"
 			
 				modalRemoteTemplate="/modaldynamix/modaliframe"
 				
 				modalTemplatePage="/myLocalDomain/form"
 				
 				modalTemplate='/modaldynamix/modalcreate'
 			
 				domain="grails.modaldx.test.MyLocalDomain"

 			
 			/>