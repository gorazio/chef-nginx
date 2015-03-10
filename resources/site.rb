#
# Cookbook Name:: nginx
# Resource:: site
#

actions :create, :delete, :enable, :disable

default_action :create

attribute :name, kind_of: String, name_attribute: true
attribute :listen, kind_of: String, default: "80"
attribute :default, :kind_of => [ TrueClass, FalseClass ], :default => false
attribute :host, kind_of: String, default: ""
attribute :root, kind_of: String, default: "/var/www"
attribute :index, kind_of: String, default: "index.html index.htm"
attribute :location, kind_of: Hash, default: {}
attribute :phpfpm, kind_of: [TrueClass, FalseClass], default: false
attribute :access_log, kind_of: [TrueClass, FalseClass], default: true
attribute :template_cookbook, kind_of: String, default: "nginx"
attribute :template_source, kind_of: String, default: "site.erb"
attribute :line_params, kind_of: Array, default: []


attr_accessor :exists
