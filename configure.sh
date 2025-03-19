## Copy the rock-5t dtb to the device-tree folder as rk3588-rock-5t.dtb
cp ./rk3588-rock-5t-hdmi-fixed.dtb /lib/firmware/6.1.0-1025-rockchip/device-tree/rockchip/rk3588-rock-5t.dtb
## Take backup of /boot/extlinux.conf and then replace fdtdir (which makes u-boot chose the dtb to load itself) with the rock-5t dtb.
sed -i.bak '0,/^\(.*\)fdtdir \(.*\)/s//\1fdt \2rockchip\/rk3588-rock-5t.dtb/' /boot/extlinux/extlinux.conf

