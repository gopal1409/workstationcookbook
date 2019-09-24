package 'tree' do
	action :install
end
package 'ntp'

file '/etc/motd' do
	content "this is the property of capgemini"
	action :create
	owner 'root'
	group 'root'
end

service 'ntp' do
	action [ :enable, :start]
end
