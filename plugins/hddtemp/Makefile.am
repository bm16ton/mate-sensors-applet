# HDDTEMP plugin
plugindir = $(libdir)/mate-sensors-applet/plugins

AM_CPPFLAGS = -DMATELOCALEDIR=\""$(datadir)/locale/"\" \
	-DG_LOG_DOMAIN=\""Sensors Applet"\" \
	-DPIXMAPS_DIR=\""$(datadir)/pixmaps/$(PACKAGE)/"\" \
	-DDATADIR=\""$(datadir)"\" \
	-DLIBDIR=\""$(libdir)"\" \
        -DSYSCONFDIR=\""$(sysconfdir)"\" \
        -DPREFIX=\""$(prefix)"\" \
	-I$(top_srcdir) \
	$(GLIB_CFLAGS)

plugin_LTLIBRARIES = libhddtemp.la

libhddtemp_la_SOURCES = \
	hddtemp-plugin.h	\
	hddtemp-plugin.c

libhddtemp_la_LDFLAGS = $(PLUGIN_LIBTOOL_FLAGS) $(GLIB_LIBS)
libhddtemp_la_LIBADD = $(top_builddir)/lib/libmate-sensors-applet-plugin.la
