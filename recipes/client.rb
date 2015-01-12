#
# Cookbook Name:: sensu_roles
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'sensu::default'

sensu_client node.name do
  address node.ipaddress
  subscriptions node.roles + ['all']
  keepalive(
    threasholds: {
      warning: 10,
      critical: 180
    },
    handlers: node.sensu.handlers.default,
    refresh: 180
  )
  additional(
    customer_name: 'test'
  )
end

# TODO: add plugins, mutators
include_recipe 'sensu_roles::check_plugins'

include_recipe 'sensu::client_service'
