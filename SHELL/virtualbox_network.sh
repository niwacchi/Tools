VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guestssh/Protocol" TCP
VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guestssh/GuestPort" 22
VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guestssh/HostPort" 50022
VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guesthttp/Protocol" TCP
VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guesthttp/GuestPort" 80
VBoxManage setextradata "CentOS" "VBoxInternal/Devices/e1000/0/LUN#0/Config/guesthttp/HostPort" 50080

