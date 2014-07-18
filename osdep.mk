# OS X
ifneq ($(uname_S),Darwin)
    MATH_LINKER=-lm
endif

# SunOS / Solaris / Illumos
ifeq ($(uname_S),SunOS)
    PREFIX?=/opt/local
endif

# Win32 (Cygwin)
ifeq ($(uname_S),Cygwin)
	EXTRAFLAGS=
	OUT_LIBRARY=liboleg.dll
endif