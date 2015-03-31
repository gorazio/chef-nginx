nginx_site "test" do
  host "test.ru"
  root "/var/www/test.ru"
  index "index.html index.php"
  line_params ["try_files $uri $uri/ /index.php?$query_string;"]
  location ({"~* /(application|modules|system)" => ["access_log off; log_not_found off; deny all;"]})
  action [:create, :enable]
  template_source "site_adv.erb"
  notifies :restart, "service[nginx]"
end