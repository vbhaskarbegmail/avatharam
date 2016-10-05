require 'aws-sdk'

ec2 = Aws::EC2::Resource.new(region: 'us-west-1')
      
# To only get the first 10 instances:
# ec2.instances.limit(10).each do |i|
#puts ec2.methods
puts "\nSecurity groups"
puts  ec2.security_groups.map(&:group_name)

puts "\nVPCs"
puts  ec2.vpcs.map(&:id)

puts "\nSubnets"
puts  ec2.subnets.map(&:id)

puts "\nPlacement groups"
puts  ec2.placement_groups.map(&:group_name)

puts "\nKey pairs"
puts  ec2.key_pairs.map(&:name)

puts "\n"

ec2.instances.each do |i|
#  puts i.methods
  puts "ID:    #{i.id}"
  puts "State: #{i.state.name}"
  puts "VPC ID: #{i.vpc.id}"
  puts "Subnect ID: #{i.subnet.id}"
  puts "Keyname: #{i.key_pair.name}"
  puts "Tags: #{i.tags}"
  puts "Placement group: #{i.placement_group.name}"
  puts "Placement availability zone: #{i.placement.availability_zone}"
  puts "Virtualization type: #{i.virtualization_type}"
  #puts i.vpc.instances.to_a
#=begin
  i.vpc.security_groups.each do |sg|
    #puts sg.methods
    puts "Security group id: #{sg.id}"
    puts "Security group owner id: #{sg.owner_id}"
    puts "Security group name: #{sg.group_name}"
    puts "Security group ip permissions: #{sg.ip_permissions}"
    puts "Security group ip permissions egress: #{sg.ip_permissions_egress}"
  end
#=end
  puts i.vpc.subnets.inspect
  puts "VPC state: #{i.vpc.state}"
  puts "VPC CIDR Block: #{i.vpc.cidr_block}"
  puts i.vpc.internet_gateways.inspect
  puts i.vpc.network_acls.inspect
  puts i.vpc.network_interfaces.inspect
  puts i.vpc.dhcp_options.inspect

#=begin
  puts "Volume details: "
  i.volumes.each do |volume|
    puts "Volume Id: #{volume.id}"
    puts "Volume Size: #{volume.size}"
    puts "Volume Availability Zone: #{volume.availability_zone}"
    puts "Volume State: #{volume.state}"
    puts "Volume Type: #{volume.volume_type}"
    puts "Volume Iops: #{volume.iops}"
    puts "Volume Encrypted: #{volume.encrypted}"
    puts "Volume create time: #{volume.create_time}"
    puts "Volume Tags: #{volume.tags}"
  end
#=end
  puts "Image ID: #{i.image.id}"
  puts "Image name: #{i.image.name}"
  puts "Private DNS name: #{i.private_dns_name}"
  puts "Public DNS name: #{i.public_dns_name}"
  puts "Private IP Address: #{i.private_ip_address}"
  puts "Public IP Address: #{i.public_ip_address}"
  puts "Instance type: #{i.instance_type}"
  puts "======================================================"
end

=begin
id
attach_classic_link_vpc
attach_volume
console_output
describe_attribute
report_status
classic_address
image
key_pair
network_interfaces
placement_group
subnet
vpc
volumes
vpc_addresses
instance_id
image_id
state
private_dns_name
public_dns_name
state_transition_reason
key_name
ami_launch_index
product_codes
instance_type
launch_time
placement
kernel_id
ramdisk_id
platform
monitoring
subnet_id
vpc_id
private_ip_address
public_ip_address
state_reason
architecture
root_device_type
root_device_name
block_device_mappings
virtualization_type
instance_lifecycle
spot_instance_request_id
client_token
tags
security_groups
source_dest_check
hypervisor
iam_instance_profile
ebs_optimized
sriov_net_support
ena_support
decrypt_windows_password
client
identifiers
wait_until
data
data_loaded?
exists?
load
reload
inspect
to_json
nil?
=end

