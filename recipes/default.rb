#
# Cookbook Name:: pi2-cookbook
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

include_recipe 'd-base::default'

packages = [ 'fswebcam', 'qiv' ]

packages.each do |p|
  package p
end
