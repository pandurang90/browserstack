module Browserstack
  class Worker < ApiRequest
    attr_accessor :os,:os_version,:url,:timeout,:browser,:browser_version
    def initialize(attributes={})
      attributes.each do |name, value|
        begin
          send("#{name}=", value)
        rescue
          puts "invalid attribute #{name} in worker"
        end
      end
    end

    def valid?
       os && os_version && url
    end

    def self.create_worker(params={})
      worker = Worker.new(params)
      if worker.valid?
        worker.make_request("/worker","post",params)
      else
      # raise some error
        raise "Not Valid should contain os,os_version,url parameter"
      end
      worker
    end

    def self.terminate_worker(worker_id)
      worker = Worker.new
      worker.make_request("/worker/#{worker_id}","delete")
      worker
    end

    def self.get_worker_status(worker_id)
      worker = Worker.new
      worker.make_request("/worker/#{worker_id}")
      worker
    end

    def self.get_all_worker_status
      worker = Worker.new
      worker.make_request("/workers")
      worker
    end

    def self.take_screenshot(worker_id,format)
      worker = Worker.new
      worker.make_request("/worker/#{worker_id}/screenshot.#{format}")
      worker
    end

  end
end