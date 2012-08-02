
PLUGIN_NAME=advanced-reminder
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app				\
	config				\
	init.rb				\
	README.rdoc

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
