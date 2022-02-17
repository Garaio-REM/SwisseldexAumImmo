# SwisseldexAumImmo::UploadMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_type_code** | **Integer** | 1 &#x3D; MoveIn (Einzug), 2 &#x3D; MoveOut (Auszug), 3 &#x3D; Update, 4 &#x3D; Cancellation (Stornierung), 5 &#x3D; PreInfoMoveIn (Vorinfo Einzug),  6 &#x3D; PreInfoMoveOut (Vorinfo Auszug) | 
**message_type_info** | **String** | Any additional text informing about content or purpose of the message | [optional] 
**message_trigger_type** | **String** | Reason why message has been transmitted. If ommited then default \&quot;Scheduled\&quot; is used. | [optional] 
**contractor** | [**UploadMessageContractor**](UploadMessageContractor.md) |  | 
**person** | [**UploadMessagePerson**](UploadMessagePerson.md) |  | 
**contract** | [**UploadMessageContract**](UploadMessageContract.md) |  | 
**building** | [**UploadMessageBuilding**](UploadMessageBuilding.md) |  | 
**dwelling** | [**UploadMessageDwelling**](UploadMessageDwelling.md) |  | [optional] 
**goes_to** | [**UploadMessageGoesTo**](UploadMessageGoesTo.md) |  | [optional] 
**extension** | [**UploadMessageExtension**](UploadMessageExtension.md) |  | [optional] 

