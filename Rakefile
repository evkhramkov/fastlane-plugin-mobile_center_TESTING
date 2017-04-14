require 'uri'
require 'net/http'
require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

api_endpoins = {
  "prod" => "https://api.mobile.azure.com/preview/swagger.json"
}

namespace :dev do
  desc "Download swagger api specifications"
  task :download_swagger do
    url = URI.parse(api_endpoins["prod"])
    req = Net::HTTP.new(url.host, url.port)
    req.use_ssl = true
    res = req.get(url.path)
    open("swagger/swagger.json", "w") { |file| file.write(res.body) }
  end
end

task default: [:spec, :rubocop]
