=begin
#AUM Immo

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.3.2-alpha

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.33
=end

module SwisseldexAumImmo
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload
    # Post a new change of contract message for automatic processing to VNB.
    # @param [Hash] opts the optional parameters
    # @option opts [UploadMessage] :body Structure and property-names are adapted from eCH-0112 (https://www.ech.ch/de/standards/52687).
    # @option opts [BOOLEAN] :test_delivery Processes message but does not forward it to recognized VNB (for testing)
    # @option opts [String] :carbon_copy_email If VNB is consuming the message via Email, this address is taken as CC (mainly intended for testing). Adress is only considered if the mail-server supports TLS (you can check this with e.g. https://www.checktls.com/TestReceiver). Value of this parameter is not validated and it won&#x27;t cause a negative impact on the processing of the message.
    # @return [UploadResponse]
    def upload(opts = {})
      data, _status_code, _headers = upload_with_http_info(opts)
      data
    end

    # Upload
    # Post a new change of contract message for automatic processing to VNB.
    # @param [Hash] opts the optional parameters
    # @option opts [UploadMessage] :body Structure and property-names are adapted from eCH-0112 (https://www.ech.ch/de/standards/52687).
    # @option opts [BOOLEAN] :test_delivery Processes message but does not forward it to recognized VNB (for testing)
    # @option opts [String] :carbon_copy_email If VNB is consuming the message via Email, this address is taken as CC (mainly intended for testing). Adress is only considered if the mail-server supports TLS (you can check this with e.g. https://www.checktls.com/TestReceiver). Value of this parameter is not validated and it won&#x27;t cause a negative impact on the processing of the message.
    # @return [Array<(UploadResponse, Integer, Hash)>] UploadResponse data, response status code and response headers
    def upload_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.upload ...'
      end
      # resource path
      local_var_path = '/messages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'testDelivery'] = opts[:'test_delivery'] if !opts[:'test_delivery'].nil?
      query_params[:'carbonCopyEmail'] = opts[:'carbon_copy_email'] if !opts[:'carbon_copy_email'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'UploadResponse' 

      auth_names = opts[:auth_names] || ['apiKeyHeader', 'apiKeyQuery']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
