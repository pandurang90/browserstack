module Browserstack
  class Browser < ApiRequest

    def self.get_browsers(flat=nil)
      request  = new()
      request_url = flat.nil? ? "/browsers" : "/browsers?flat=#{flat}"
      request.make_request(request_url)
      request
    end
  end
end