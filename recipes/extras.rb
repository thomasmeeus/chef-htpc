%w{
    iftop
    htop
    powertop
    python-software-properties
    software-properties-common
    lm-sensors
    iw
    vim
    unzip
    avahi-daemon
    libshairport1
    libshairport-dev
    libvdpau1
    sysfsutils
    acpi-support
    gconf2
    pm-utils
    policykit-1
    upower
    laptop-mode-tools
}.each do |pkg|
    package pkg do
        action :upgrade
    end
end
