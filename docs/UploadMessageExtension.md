# SwisseldexAumImmo::UploadMessageExtension

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**previous_person** | [**UploadMessageExtensionPreviousPerson**](UploadMessageExtensionPreviousPerson.md) |  | [optional] 
**meterpoint_vse_national_id** | **String** | According to SDAT-CH standard of VSE (see https://www.strom.ch/de/service/branchendokumente) | [optional] 
**source_application_info** | **String** | Deprecated: Use sourceApplication property | [optional] 
**source_application** | [**UploadMessageExtensionSourceApplication**](UploadMessageExtensionSourceApplication.md) |  | [optional] 
**additional_person_data** | [**UploadMessageExtensionAdditionalPersonData**](UploadMessageExtensionAdditionalPersonData.md) |  | [optional] 
**additional_persons** | [**Array&lt;UploadMessageExtensionAdditionalPersons&gt;**](UploadMessageExtensionAdditionalPersons.md) | Additional persons as tenants | [optional] 
**person_type** | **String** | Legal or natural person. If ommited \&quot;NaturalPerson\&quot; is used. | [optional] 
**idx_object_info** | [**UploadMessageExtensionIdxObjectInfo**](UploadMessageExtensionIdxObjectInfo.md) |  | [optional] 
**source_system_references** | [**UploadMessageExtensionSourceSystemReferences**](UploadMessageExtensionSourceSystemReferences.md) |  | [optional] 
**owner** | **Object** | Object references to owner | [optional] 

