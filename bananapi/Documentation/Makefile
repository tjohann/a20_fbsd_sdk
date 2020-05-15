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

MODULES = $(shell ls -d */ | cut -f1 -d'/')
DOCS =

all::
	@echo Cheers

clean::
	rm -f *~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done

distclean: clean
