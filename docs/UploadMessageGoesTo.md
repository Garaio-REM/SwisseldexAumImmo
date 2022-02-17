# SwisseldexAumImmo::UploadMessageGoesTo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_line1** | **String** |  | [optional] 
**address_line2** | **String** |  | [optional] 
**street** | **String** |  | 
**house_number** | **String** |  | [optional] 
**dwelling_number** | **String** |  | [optional] 
**post_office_box_number** | **Integer** |  | [optional] 
**post_office_box_text** | **String** |  | [optional] 
**locality** | **String** |  | [optional] 
**town** | **String** |  | 
**swiss_zip_code** | **Integer** | Either this property or &#x27;foreignZipCode&#x27; must be provided | [optional] 
**foreign_zip_code** | **String** | Either this property or &#x27;swissZipCode&#x27; must be provided | [optional] 
**country** | **String** | ISO 2 format. Must be conforming to availability of &#x27;swissZipCode&#x27; and &#x27;foreignZipCode&#x27; | 

