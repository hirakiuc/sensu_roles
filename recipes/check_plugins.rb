
%w(system).each do |dirname|
  directory '/etc/sensu/plugins/' + dirname do
    owner 'root'
    group 'sensu'
    mode 0755
    action :create
    recursive true
  end
end

default = node['sensu']['checks']['default']
%w(check_load check_ram).each do |check_name|
  value = default.merge(node['sensu']['checks'][check_name])

  cookbook_file '/etc/sensu/plugins/' + value[:file] do
    source 'plugins/' + value[:file]
    mode 0755
  end

  sensu_check check_name do
    command '/etc/sensu/plugins/' + value[:file] + value[:args]
    handlers value[:handlers]
    subscribers value[:subscribers]
    interval value[:interval]
    additional value[:additional]
  end
end
