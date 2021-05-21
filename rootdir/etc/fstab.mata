# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#TODO: Add 'check' as fs_mgr_flags with data partition.
# Currently we dont have e2fsck compiled. So fs check would failed.

# A/B fstab.qcom variant
#<src>                                   <mnt_point>             <type> <mnt_flags and options>                          <fs_mgr_flags>
/dev/block/platform/soc/1da4000.ufshc/by-name/system     /                       ext4   ro,barrier=1,discard                             wait,slotselect,verify
/dev/block/platform/soc/1da4000.ufshc/by-name/userdata   /data                   ext4   noatime,nosuid,nodev,barrier=1,noauto_da_alloc,discard wait,check,forceencrypt=footer,quota,reservedsize=128M
/dev/block/platform/soc/1da4000.ufshc/by-name/misc       /misc                   emmc   defaults                                         defaults
/dev/block/platform/soc/1da4000.ufshc/by-name/modem      /vendor/firmware_mnt    vfat   ro,shortname=lower,uid=1000,gid=1000,dmask=227,fmask=337,context=u:object_r:firmware_file:s0 wait,slotselect
/dev/block/platform/soc/1da4000.ufshc/by-name/bluetooth  /vendor/bt_firmware     vfat   ro,shortname=lower,uid=1002,gid=3002,dmask=227,fmask=337,context=u:object_r:bt_firmware_file:s0 wait,slotselect
/dev/block/platform/soc/1da4000.ufshc/by-name/dsp        /vendor/dsp             ext4   ro,nosuid,nodev,barrier=1                        wait,slotselect
/dev/block/platform/soc/1da4000.ufshc/by-name/persist    /mnt/vendor/persist     ext4   noatime,nosuid,nodev,barrier=1                   wait
