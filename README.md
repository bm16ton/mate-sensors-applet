Fork of mate-sensors-applet
2 extra temp/alarms/commands added for controling fans etc.
Im currently using with my argonfan driver (found in my raspberrypi kernel repo https://github.com/bm16ton/raspberrypi-kernel/blob/master/drivers/hwmon/argonfan.c)
the argonfan hat is a percentage based fan so I changed the applets fan wording to "Per" to change back edit;
sensors-applet/sensors-applet.h
line;
#define UNITS_RPM _("Per")
to
#define UNITS_RPM _("RPM")
before compiling.

The commands need to be actual apps/scripts it seems to fuck up parsing anything even remotely complex for shell commands.
Examples of the scripts I use can be found in the argonfan-scripts folder.





MATE Sensors Applet <https://github.com/mate-desktop/mate-sensors-applet>

Authors: Alex Murray <murray.alex@gmail.com>,
         Stefano Karapetsas <stefano@karapetsas.com>

MATE Sensors Applet is an applet for the MATE Panel to display
readings from hardware sensors, including CPU temperature, fan speeds
and voltage readings under Linux.

Supported interfaces:

    * ACPI thermal zones, via the Linux kernel ACPI modules
    * Linux kernel i2c[1] modules (for kernel 2.6).
    * lm_sensors[1] and i2c[1] packages (for kernel 2.4)
    * libsensors[1] (provided by lm_sensors package)
    * Linux kernel i8k[2] module (for Dell Inspiron Laptops).
    * Linux kernel ibm-acpi[3] module
    * Linux kernel PowerPC modules therm_adt746x and therm_windtunnel.
    * Linux kernel iMac G5 Windfarm module.
    * hddtemp[4] daemon for reading temperatures from S.M.A.R.T. equipped disks.
    * Linux kernel Omnibook[5] module.
    * NVIDIA graphics cards via libNVCtrl (supplied with nvidia-settings[6])
    * Linux kernel sonypi[7] module (for Sony Vaio laptops)

Includes a simple, yet highly customizable display and intuitive
user-interface.

Alarms can be set for each sensor to notify the user once a certain
high or low value has been reached, and can be configured to execute a
given command at given repeated intervals.

MATE HIG v2.0 compliant

libnotify[8] support for alarm conditions

The icons bundled as part of MATE Sensors Applet were created by
epicbard[9], and are released under the Creative Commons Attribution
Share-Alike license 3.0[10].

----------------------------------------------------------------------------

Requirements

    * MATE desktop environment, with GTK >=2.4.0 and libmatepanelapplet
    * For ACPI support:
          o Linux kernel 2.6 with ACPI modules loaded (CONFIG_ACPI &
            CONFIG_ACPI_THERMAL)
    * For i2c support:
          o Linux kernel 2.6 with appropriate i2c modules loaded OR
          o Linux kernel 2.4 with lm_sensors and i2c packages installed
          o libsensors support is available for either of the above (will
    	    utilise settings in /etc/sensors.conf
    * For i8k support:
          o Linux kernel 2.6 with i8k module enabled ("Support for
          Dell laptops" (CONFIG_I8K))
    * For ibm-acpi support:
          o Linux kernel >=2.6.10 with ibm-acpi module enabled
          (CONFIG_IBM_ACPI)
    * For PowerPC support:
          o Linux kernel 2.6 with the therm_adt746x ("Support for
          thermal management on laptops with ADT 746x chipset"
          (THERM_ADT746X)) or therm_windtunnel ("Support for thermal
          management on Windtunnel G4s" (THERM_WINDTUNNEL)) module
          enabled
    * For iMac G5 and other G5s support:
          o Linux kernel 2.6 with the Windfarm ("Support for thermal
          management on iMac G5" (WINDFARM_PM81)) module enabled
    * For hddtemp support:
          o hddtemp running in daemon mode
    * For Omnibook support:
          o Linux kernel 2.6 with the Omnibook module
    * For NVIDIA graphics cards support:
          o NVIDIA binary driver with libNVCtrl installed (provided
          with the nvidia-settings utility) (to enable support MATE
          Sensors Applet needs to be configured with the --with-nvidia
          flag)
    * For sonypi support:
      	  o Linux kernel 2.6 with sonypi module enabled ("Sony Vaio 
	  Programmable I/O Control Device support" (CONFIG_SONYPI))

----------------------------------------------------------------------------

Debian, Fedora, Ubuntu  and most standard distro users will need to do a 

./autogen.sh --prefix=/usr

to ensure proper installation within the correct path.


To enable support for NVIDIA GPUs MATE Sensors Applet requires the
standard X11 headers as well as libNVCtrl (supplied by nvidia-settings), 
and needs to be compiled with support for NVIDIA GPUs as:

./autogen.sh --with-nvidia

If your X11 headers are in a non-standard location, these can also be
specified as:

./autogen.sh --with-nvidia --with-x11=PATH_TO_X11_LIBRARIES

where PATH_TO_X11_LIBRARIES is the path to your X11 libraries
(such as /usr/include/X11), although in most cases this should not
be needed.


[1] http://www.lm-sensors.org/
[2] http://people.debian.org/~dz/i8k/00-README
[3] http://ibm-acpi.sourceforge.net/
[4] http://www.guzu.net/linux/hddtemp.php
[5] http://sourceforge.net/projects/omke
[6] ftp://download.nvidia.com/XFree86/nvidia-settings/
[7] http://www.linux.it/~malattia/wiki/index.php/Sony_drivers
[8] http://www.galago-project.org/
[9] http://www.uoguelph.ca/~fanguelo/
[10] http://creativecommons.org/licenses/by-sa/3.0/