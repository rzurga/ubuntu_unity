#
# Cookbook Name:: ubuntu-unity
# Recipe:: default
#
# Copyright 2014-2016, vagrant@zurga.com
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update" do
  user "root"
  command "apt-get update"
end

package "xinit" do
  action :upgrade
end

package "unity" do
  action :upgrade
end

package "gnome" do
  action :upgrade
end

#execute "apt-get update" do
#  user "root"
#  command "apt-get update"
#end

bash "install ubuntu-desktop" do
  user "root"
  code <<-EOH
    export DEBIAN_FRONTEND=noninteractive
    echo "debconf debconf/priority select critical" | debconf-set-selections
    echo "lightdm shared/default-x-display-manager select gdm" | debconf-set-selections
    echo "gdm shared/default-x-display-manager select gdm" | debconf-set-selections
    dpkg-reconfigure gdm
    echo "debconf debconf/priority select high" | debconf-set-selections    #sudo -E apt-get update
    apt-get install -y ubuntu-desktop
    EOH
  not_if 'dpkg --get-selections | grep -v deinstall | grep -P "^ubuntu-desktop\t"'
  action :run
end
