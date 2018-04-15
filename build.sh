#!/bin/bash
case "$SHED_BUILD_MODE" in
    toolchain)
        SHEDPKG_PREFIX='/tools'
        ;;
    *)
        SHEDPKG_PREFIX='/usr'
        ;;
esac
./configure --prefix=$SHEDPKG_PREFIX && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install
