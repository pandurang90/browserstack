module Browserstack
  class ApiStatus < ApiRequest
      def self.get_status
        api_status = ApiStatus.new
        api_status.make_request("/status")
        api_status
      end
  end
end