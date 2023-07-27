# HELP node_fstab_mount_status List and status of filesystem mountpoints (0 = not mounted, 1 = mounted)
# TYPE node_fstab_mount_status gauge
node_fstab_mount_status{mountpoint="/"} 1
node_fstab_mount_status{mountpoint="/local"} 1
node_fstab_mount_status{mountpoint="/tmp"} 1
node_fstab_mount_status{mountpoint="/var"} 1
node_fstab_mount_status{mountpoint="/dev/pts"} 1
node_fstab_mount_status{mountpoint="/proc"} 1
node_fstab_mount_status{mountpoint="/sys"} 1
node_fstab_mount_status{mountpoint="/dev/shm"} 1
node_fstab_mount_status{mountpoint="/data_lake"} 1
node_fstab_mount_status{mountpoint="/data"} 1

