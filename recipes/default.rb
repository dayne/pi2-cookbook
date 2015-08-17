#
# Cookbook Name:: pi2-cookbook
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

# us keyboard
replace_or_add 'us keyboard' do
  path '/etc/default/keyboard'
  pattern 'XKBLAYOUT'
  line 'XKBLAYOUT="US"'
end

replace_or_add 'xkboptions = nocaps' do
  path '/etc/default/keyboard'
  pattern 'XKBOPTIONS'
  line 'XKBOPTIONS=ctrl:nocaps'
end

node.default['packages'].merge!( {
  'dnsutils'  => 'install',
  'mpg123'    => 'install',
  'mplayer'   => 'install',
  'omxplayer'   => 'install',
  'ruby-dev'  => 'install'
})

%w{ colored }.each do |gem|
  gem_package gem
end
