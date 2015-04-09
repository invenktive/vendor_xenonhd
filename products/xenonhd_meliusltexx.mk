# Inherit device configuration
$(call inherit-product, device/samsung/meliusltexx/full_meliusltexx.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Telephony
$(call inherit-product, vendor/xenonhd/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Copy m8 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="meliusltexx-user 4.4.2 KOT49H I9205XXUDNE4 release-keys" BUILD_FINGERPRINT="samsung/meliusltexx/meliuslte:4.4.2/KOT49H/I9205XXUDNE4:user/release-keys"

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_meliusltexx
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := meliusltexx
PRODUCT_MODEL := GT-I9205
PRODUCT_MANUFACTURER := Samsung
