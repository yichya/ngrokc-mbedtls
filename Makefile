#
# Copyright (C) 2017 ngrokc
# Copyright (C) 2017 yushi studio <ywb94@qq.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/uclibc++.mk

PKG_NAME:=ngrokc_mbedtls
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/ngrokc_mbedtls
	SECTION:=Custom
	CATEGORY:=Extra packages
	TITLE:=ngrokc_mbedtls
	DEPENDS:=$(CXX_DEPENDS) +libmbedtls
	PKGARCH:=all
endef

define Package/ngrokc_mbedtls/description
	Just test
endef

define Package/ngrokc_mbedtls/Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ngrokc
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/ngrokc_mbedtls/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ngrokc $(1)/usr/bin/ngrokc
	$(CP) -R ./usr $(1)
	$(CP) -R ./etc $(1)
endef


$(eval $(call BuildPackage,ngrokc_mbedtls))
