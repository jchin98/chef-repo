# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jchin98"
client_key               "#{current_dir}/jchin98.pem"
validation_client_name   "prvdev-validator"
validation_key           "#{current_dir}/prvdev-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/prvdev"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
