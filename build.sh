#!/bin/bash
case "$SHED_BUILDMODE" in
    toolchain)
        SHEDPKG_PREFIX='/tools'
        ;;
    *)
        SHEDPKG_PREFIX='/usr'
        ;;
esac
./configure --prefix=$SHEDPKG_PREFIX && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
