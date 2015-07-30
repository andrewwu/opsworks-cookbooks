node[:deploy].each do |application, deploy|
  include_recipe "opsworks_nodejs::create_env_file"

  execute "source environment variables" do
    command "source #{deploy[:deploy_to]}/shared/app.env"
  end
end
