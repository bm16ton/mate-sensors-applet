# UDisks2 plugin
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



plugin_LTLIBRARIES = libudisks2.la

libudisks2_la_SOURCES = \
	udisks2-plugin.h	\
	udisks2-plugin.c

libudisks2_la_LDFLAGS = $(PLUGIN_LIBTOOL_FLAGS) $(GLIB_LIBS)

libudisks2_la_LIBADD = $(top_builddir)/lib/libmate-sensors-applet-plugin.la
