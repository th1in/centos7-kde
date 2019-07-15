# Config
auth --enableshadow --passalgo=sha512
cdrom
graphical
firstboot --enable
ignoredisk --only-use=sda
keyboard --vckeymap=us --xlayouts='us'
lang en_US.UTF-8
eula --agreed
selinux --disabled
firewall --disabled
timezone America/New_York --isUtc
bootloader --location=mbr --boot-drive=sda
clearpart --none --initlabel
part / --size 10120 --fstype ext4
reboot

%include centos-kde-repo.ks

%packages

@base
@core
@dial-up
@fonts
@kde-desktop
@guest-agents
@guest-desktop-agents
@multimedia
@network-file-system-client
@print-client
@x11

@kde-apps
@kde-media
kde-l10n-*

-libvirt
-gnome-boxes
-firefox



#Live install tools
anaconda
system-config-keyboard
system-config-language
patch

# For UEFI/Secureboot support
grub2-efi-x64-cdboot
efibootmgr
shim-x64

#RPM Repository
rpmfusion-free-release-7
rpmfusion-nonfree-release-7

#installing libreoffice
libreoffice6.2-*
libobasis6.2-*

audacious
audacious-libs
audacious-plugins
audacious-plugins-freeworld-mp3
simplescreenrecorder
vlc
chromium
chromium-libs-media-freeworld
p7zip
p7zip-plugins
unar
kernel


#codecs
gstreamer1-plugins-good
gstreamer1-plugins-ugly
gstreamer1-plugins-bad-freeworld
gstreamer1-libav
gstreamer
gstreamer-plugins-base
gstreamer-plugins-good
gstreamer-plugins-bad-free
gstreamer-plugins-ugly
gstreamer-plugins-bad
gstreamer-ffmpeg
x264
x265
ffmpeg
ffmpeg-libs


%end



%include centos-kde-live.ks





