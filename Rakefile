require 'uri'
require 'net/http'
require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

api_endpoins = {
  "prod" => "https://api.mobile.azure.com",
  "dev" => "https://bifrost-int.trafficmanager.net"
}

swagger_path = "/preview/swagger.json"
swagger_dest = "./swagger/swagger.before.json"
swagger_fixed_dest = "./swagger/swagger.json"
generated_dest = "./lib"

environment = "dev"

namespace :swagger do
  desc "Download swagger api specifications"
  task :download do
    puts "Downloading swagger from #{api_endpoins[environment]}"
    url = URI.parse("#{api_endpoins[environment]}#{swagger_path}")
    req = Net::HTTP.new(url.host, url.port)
    req.use_ssl = true
    res = req.get(url.path)
    open(swagger_dest, "w") { |file| file.write(res.body) }
    puts "Swagger saved to #{swagger_dest}"
  end

  desc "Install autorest and dependencies"
  task :install_autorest do
    sh "npm install"
  end

  desc "Fix swagger file"
  task :fix do
    sh "node ./scripts/fix-swagger #{swagger_dest} #{swagger_fixed_dest}"
  end

  desc "Generate code"
  task generate: [:clean] do
    sh "./node_modules/.bin/autorest -Modeler Swagger -Input #{swagger_fixed_dest} -AddCredentials true -ClientName MobileCenterClient -CodeGenerator Ruby -Namespace MobileCenterClient -PackageName mobile_center_client -OutputDirectory #{generated_dest} -ft 3"
  end

  desc "Clean generated"
  task :clean do
    puts FileUtils.rm_rf("#{generated_dest}/generated")
  end
end

task swagger: ['swagger:install_autorest', 'swagger:download', 'swagger:fix', 'swagger:generate']

task default: [:spec, :rubocop]
