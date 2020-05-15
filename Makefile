#
# my simple makefile act as something like a user interface
#

ifeq "${ARMHF_FBSD_HOME}" ""
    $(error error: please source armhf_env first!)
endif

ifeq "${ARMHF_FBSD_BIN_HOME}" ""
    $(error error: please source armhf_env first!)
endif

ifeq "${ARMHF_FBSD_SRC_HOME}" ""
    $(error error: please source armhf_env first!)
endif

MODULES = bananapi
#MODULES = bananapi bananapi-m3 baalue
#MODULES += include man pics configs scripts
#MODULES += a20_fbsd_sdk a20_fbsd_sdk_src

all::
	@echo "+-----------------------------------------------------------+"
	@echo "|                                                           |"
	@echo "|                  Nothing to build                         |"
	@echo "|                                                           |"
	@echo "+-----------------------------------------------------------+"
	@echo "| Example:                                                  |"
	@echo "| make ...           -> ....                                |"
	@echo "+-----------------------------------------------------------+"

clean::
	rm -f *~ .*~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done

distclean: clean
