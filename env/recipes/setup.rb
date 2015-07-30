node[:deploy].each do |application, deploy|
  include_recipe "opsworks_nodejs::create_env_file"
end
