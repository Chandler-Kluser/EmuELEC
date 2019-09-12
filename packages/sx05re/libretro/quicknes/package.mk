################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="quicknes"
PKG_VERSION="b1d24c0e4ae6f9986fcd69926d5297f54e642ef6"
PKG_SHA256="236353c656c4409294a7ed101b75df3b74b1fda8e1d0eb9fb815d405cac3056f"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPLv2.1+"
PKG_SITE="https://github.com/libretro/QuickNES_Core"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="The QuickNES core library, originally by Shay Green, heavily modified"
PKG_LONGDESC="The QuickNES core library, originally by Shay Green, heavily modified"

PKG_IS_ADDON="no"
PKG_TOOLCHAIN="make"
PKG_AUTORECONF="no"

make_target() {
  make platform=armv8-neon-hardfloat-cortex-a53 
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp quicknes_libretro.so $INSTALL/usr/lib/libretro/
}
