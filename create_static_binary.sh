#!/bin/bash

ln -sf slibs.$(uname -m) slibs
COMMON_OBJ_FILES=$(ls -1 slibs/*)
LINK_LIBS="-Wall -lev -ludns  -lsodium -lpcre -lm -lpcre -lpthread"

gcc -o fw_ss_client src/ss_local*.o $COMMON_OBJ_FILES $LINK_LIBS -static 
gcc -o fw_ss_tunnel src/ss_tunnel*.o $COMMON_OBJ_FILES $LINK_LIBS -static 
gcc -o fw_ss_redir src/ss_redir*.o $COMMON_OBJ_FILES $LINK_LIBS -static 
gcc -o fw_ss_server src/ss_server*.o $COMMON_OBJ_FILES $LINK_LIBS -static 
