#!/bin/sh
LDFLAGS="-L/goinfre/myang/php/mamp/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/goinfre/myang/php/mamp/common/include/ImageMagick -I/goinfre/myang/php/mamp/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/goinfre/myang/php/mamp/common/include $CXXFLAGS"
export CXXFLAGS
		    
PKG_CONFIG_PATH="/goinfre/myang/php/mamp/common/lib/pkgconfig"
export PKG_CONFIG_PATH
