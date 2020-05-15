# only for cleaning

ifeq "${ARMHF_FBSD_HOME}" ""
    $(error error: please source armhf_env first!)
endif

ifeq "${ARMHF_FBSD_BIN_HOME}" ""
    $(error error: please source armhf_env first!)
endif

ifeq "${ARMHF_FBSD_SRC_HOME}" ""
    $(error error: please source armhf_env first!)
endif

.PHONY: all
all:
	@echo Cheers

.PHONY: clean
clean:
	rm -f *~
	rm -f etc/*~
	rm -f hdd_branding/*~

make_tarballs: clean
	tar czvf hdd_branding.tgz hdd_branding

distclean: clean
