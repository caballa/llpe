#------------------------------------------------------------------#
# Usage: make install INSTALL_DIR=XXX
#------------------------------------------------------------------#

LIB_INSTALL_PREFIX=${INSTALL_DIR}

all:
	make -C main all
	make -C utils all
	make -C driver all

install:
ifeq ($(LIB_INSTALL_PREFIX),)
	$(error LIB_INSTALL_PREFIX is undefined)
else
	mkdir -p ${LIB_INSTALL_PREFIX}
endif

	make -C main install INSTALL_DIR=${LIB_INSTALL_PREFIX}
	make -C utils install  INSTALL_DIR=${LIB_INSTALL_PREFIX}
	make -C driver install INSTALL_DIR=${LIB_INSTALL_PREFIX}

clean:
	make -C driver clean
	make -C main clean
	make -C utils clean

