# Versioning System
EVO_BASE_VERSION = 4.1.420
EVO_CODENAME := HopeFebruaryMarch

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

EVO_VERSION := $(EVO_CODENAME)-v$(EVO_BASE_VERSION)-$(TARGET_PRODUCT_SHORT)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)

CUSTOM_VERSION := EvolutionX_$(EVO_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10

CUSTOM_PROPERTIES := \
    org.evolution.version=$(EVO_VERSION) \
    org.evolution.version.prop=$(CUSTOM_PLATFORM_VERSION) \
    org.evolution.version.display=$(CUSTOM_VERSION) \
    org.evolution.build_version=$(EVO_BASE_VERSION) \
    org.evolution.build_date=$(CUSTOM_BUILD_DATE) \
    org.evolution.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.evolution.build_type=$(CUSTOM_BUILD_TYPE) \
    org.evolution.build_codename=$(EVO_CODENAME)
