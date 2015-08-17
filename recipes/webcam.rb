#
# Cookbook Name:: pi2-cookbook
# Recipe:: webcam
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'motion'

replace_or_add "start_motion_daemon=yes" do
  path "/etc/default/motion"
  pattern "start_motion_daemon*"
  line "start_motion_daemon=yes"
end
