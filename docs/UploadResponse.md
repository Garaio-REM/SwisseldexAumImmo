# SwisseldexAumImmo::UploadResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_id** | **String** |  | [optional] 
**transfer_timestamp** | **DateTime** |  | [optional] 
**transfer_status_code** | **Integer** | 0 &#x3D; Undefined, 1 &#x3D; Forwarded, 2 &#x3D; VNB not supported, 3 &#x3D; VNB not recognized, 4 &#x3D; Invalid data, 5 &#x3D; Message type not active for VNB | 
**transfer_status_info** | **String** |  | [optional] 
**provider_details** | [**UploadResponseProviderDetails**](UploadResponseProviderDetails.md) |  | [optional] 
**data_corrections** | [**UploadResponseDataCorrections**](UploadResponseDataCorrections.md) |  | [optional] 

