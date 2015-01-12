#
# Cookbook Name:: sensu_roles
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'sensu::default'

include_recipe 'sensu::rabbitmq'
include_recipe 'sensu::redis'

# TODO: add handlers

include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'
