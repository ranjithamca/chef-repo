
default["opendj"]["user"] = "ubuntu"
default["opendj"]["group"] = "ubuntu"
default["opendj"]["mode"] = "0755"
default["opendj"]["checksum"] = "08da002l"

#directory paths
default["opendj"]["home"] = "/home/ubuntu"
default["opendj"]["dir-path"]["tmp"] = "/home/ubuntu/tmp"

#Source files
default["opendj"]["source"] = "https://s3-ap-southeast-1.amazonaws.com/megampub/#{node["megam_version"]}/war/opendj/opendj.zip"

#Arguement's values for the below command
default["opendj"]["arg-val"]["baseDN"] = "dc=example,dc=com"
default["opendj"]["arg-val"]["rootUserDN"] = "cn=Directory Manager"
default["opendj"]["arg-val"]["rootUserPassword"] = "secret12"
default["opendj"]["arg-val"]["ldapPort"] = "1389"
default["opendj"]["arg-val"]["hostname"] = "#{`hostname`}"


#shell commands
default["opendj"]["cmd"]["config"] = "./opendj/setup --cli --baseDN  #{node["opendj"]["arg-val"]["baseDN"]}  --rootUserDN  '#{node["opendj"]["arg-val"]["rootUserDN"]}' --rootUserPassword  #{node["opendj"]["arg-val"]["rootUserPassword"]} --ldapPort #{node["opendj"]["arg-val"]["ldapPort"]} --no-prompt"

#Remote file location
default["opendj"]["remote-location"]["opendj-zip"] = "/home/ubuntu/tmp/opendj.zip"


