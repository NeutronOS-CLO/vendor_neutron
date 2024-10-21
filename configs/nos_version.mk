DATE_YEAR := $(shell date -u +%Y)
DATE_MONTH := $(shell date -u +%m)
DATE_DAY := $(shell date -u +%d)
DATE_HOUR := $(shell date -u +%H)
DATE_MINUTE := $(shell date -u +%M)
BUILD_DATE_UTC := $(shell date -d '$(DATE_YEAR)-$(DATE_MONTH)-$(DATE_DAY) $(DATE_HOUR):$(DATE_MINUTE) UTC' +%s)
BUILD_DATE := $(DATE_YEAR)$(DATE_MONTH)$(DATE_DAY)-$(DATE_HOUR)$(DATE_MINUTE)
DEVICE := $(shell echo "$(TARGET_PRODUCT)" | awk -F'_' '{print $$2}')

NEUTRONOS_VERSION := NeutronOS_$(DEVICE)-15.0-$(BUILD_DATE)
