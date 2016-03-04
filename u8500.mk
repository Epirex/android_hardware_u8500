# Audio
PRODUCT_PACKAGES += \
   libasound
$(call inherit-product, hardware/u8500/audio/libasound/alsa-lib-products.mk)

# STE Display 
PRODUCT_PACKAGES += \
   lights.montblanc \
   gralloc.montblanc \
   hwcomposer.montblanc \
   copybit.montblanc \
   libblt_hw

# STE Media
PRODUCT_PACKAGES += \
   libomxil-bellagio \
   libstelpcutils

# WLAN
PRODUCT_PACKAGES += \
   iw


# STE Compat Symbols
PRODUCT_PACKAGES += \
    libcamera_symbols \
    libicuuc_51

# STE RIL Compat Symbols
PRODUCT_PACKAGES += \
    libste_ril

# STE gps Compat Symbols
PRODUCT_PACKAGES += \
    libshim_gps


# External
PRODUCT_PACKAGES += \
   memtrack.montblanc

BOARD_HAL_STATIC_LIBRARIES := libhealthd.montblanc
