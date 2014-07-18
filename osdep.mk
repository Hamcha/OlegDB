# OS X
ifneq ($(uname_S),Darwin)
    MATH_LINKER=-lm
endif

# Solaris / Illumos
ifeq ($(uname_S),Solaris)
    PREFIX?=/opt/local
endif

# Win32 (Cygwin)
ifeq ($(uname_S),Cygwin)
	EXTRAFLAGS=
	OUT_LIBRARY=liboleg.dll
endif