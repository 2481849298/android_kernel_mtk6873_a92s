ifeq ($(ARCH), arm)
ccflags-y += -DCONFIG_MET_ARM_32BIT
endif	# ifeq ($(ARCH), arm)

obj-y += met_api.o

ifeq ($(PATCHLEVEL),)
$(error VERSION is not defined)
endif

ifeq ($(PATCHLEVEL),)
$(error PATCHLEVEL is not defined)
endif

CONFIG_KERVER_VERSION := $(VERSION).$(PATCHLEVEL)



