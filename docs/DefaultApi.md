# SwisseldexAumImmo::DefaultApi

All URIs are relative to *https://sdx-aum-apim-t.azure-api.net/immo*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](DefaultApi.md#upload) | **POST** /messages | Upload


# **upload**
> UploadResponse upload(opts)

Upload

Post a new change of contract message for automatic processing to VNB.

### Example
```ruby
# load the gem
require 'SwisseldexAumImmo'
# setup authorization
SwisseldexAumImmo.configure do |config|
  # Configure API key authorization: apiKeyQuery
  config.api_key['subscription-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['subscription-key'] = 'Bearer'

  # Configure API key authorization: apiKeyHeader
  config.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
end

api_instance = SwisseldexAumImmo::DefaultApi.new

opts = { 
  test_delivery: true, # BOOLEAN | Processes message but does not forward it to recognized VNB (for testing)
  carbon_copy_email: "carbon_copy_email_example", # String | If VNB is consuming the message via Email, this address is taken as CC (mainly intended for testing). Adress is only considered if the mail-server supports TLS (you can check this with e.g. https://www.checktls.com/TestReceiver). Value of this parameter is not validated and it won't cause a negative impact on the processing of the message.
  upload_message: SwisseldexAumImmo::UploadMessage.new # UploadMessage | Structure and property-names are adapted from eCH-0112 (https://www.ech.ch/de/standards/52687).
}

begin
  #Upload
  result = api_instance.upload(opts)
  p result
rescue SwisseldexAumImmo::ApiError => e
  puts "Exception when calling DefaultApi->upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_delivery** | **BOOLEAN**| Processes message but does not forward it to recognized VNB (for testing) | [optional] 
 **carbon_copy_email** | **String**| If VNB is consuming the message via Email, this address is taken as CC (mainly intended for testing). Adress is only considered if the mail-server supports TLS (you can check this with e.g. https://www.checktls.com/TestReceiver). Value of this parameter is not validated and it won&#39;t cause a negative impact on the processing of the message. | [optional] 
 **upload_message** | [**UploadMessage**](UploadMessage.md)| Structure and property-names are adapted from eCH-0112 (https://www.ech.ch/de/standards/52687). | [optional] 

### Return type

[**UploadResponse**](UploadResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



