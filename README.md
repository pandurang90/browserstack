# Browserstack

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'browserstack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install browserstack

## Usage

	require "browserstack"
	Browserstack.configure do |config|
	  config.api_version="3"
	  config.user_name = "user_name"
	  config.password = "pwd"
	end
	
	browsers = Browserstack::Browser.get_browsers
	worker = Browserstack::Worker.create_worker({:os=>"Windows",:os_version=>'7',:url=>"https://github.com/404",:browser=>"ie",:browser_version=>"8.0"})

	worker_id = worker.parse_response["id"]

	delete_worker = Browserstack::Worker.terminate_worker(worker_id)
	worker_status = Browserstack::Worker.get_worker_status(worker_id)
	worker_statuses = Browserstack::Worker.get_all_worker_status
	api_status = Browserstack::ApiStatus.get_status
	scrnshot = Browserstack::Worker.take_screenshot(worker_id,"png")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/browserstack/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
