# -*- Mode: Makefile -*-
# vim:syntax=make:
#------------------------------
# Platform config ( UNIX/WIN )
#------------------------------
#WARNING COMPONENT_PATH is MANDATORY for Make.algo.config and Make.rules
COMPONENT_PATH = ../#XXX no `/` at the end (win32 pb)

MMBOARD=x
MMSYSTEM=x
USE_OPT_COMPILER=true
include $(MM_MAKEFILES_DIR)/AudioAlgoConfig.mk
#--------------------------
# Local variable
#--------------------------

#----------------------------
#     Entry for Make.rules
#
#VPATH    : Search Path for prerequisites.(see default value in Make.rules)
#CFLAGS   : Extra flags to give to the C compiler. (see default value in Make.rules)
#CXXFLAGS : Extra flags to give to the C++ compiler. (see default value in Make.rules)
#CPPFLAGS : Extra flags to give to the C preprocessor.(see default value in Make.rules)
#LDPATH   : Search path for linked libs.(see default value in Make.rules)
#LDLIBS   : List of library name without lib prefix or any suffix
#SHLDLIBS : List of library name without lib prefix or any suffix.
#           Overides LDLIBS for shared libs if specified
#
#NOSTARTFILES : to be defined to generate .so with -nostartfiles
#
#DEPOBJ   : List of object files. (to generate dependencies).
#DEP_DEP  : Dependencies of dependency files.
#           (for example generated header file before generating *.d)
#TOBECLEAN: List of files you want to delete on realclean target.
#
#LIBNAME  : Name of the library without the prefix lib.
#LIBOBJ   : List of object file to put in the lib
#
#HPATH    : Search Path for header file to be linked. WARNING only one path is possible (see default value in Make.rules)
#HEADER   : List of link to be generated in lib/include
#                       (header files visible to everyone)
#
#EXENAME  : Name of executable
#EXEOBJ   : List of object file needed to build executable
#
#----------------------------
LIBNAME = imdct
LIBOBJ  =  imdct fast_imdct imdct_compress imdct_ramxy \
	   imdct_ramxy_2  imdct_compress_ramxy\
	   twiddle twiddle_ramxy twiddle_bt twiddle_ramxy_bt

INSTALL_LIB = libimdct.a
CPPFLAGS+=-DNDEBUG -DFAST_imdct -DAAC -DOPTIMIZE

ifeq ($(PLATFORM),x86-linux)	
CPPFLAGS+=-DNO_INTRINSIC
endif
#WARNING todo target is MANDATORY
todo: lib

ifeq ($(MMPROCESSOR),cortexA9)
ifeq ($(PPROFILER_CA9),true)
CFLAGS+=--gnu-instrument
endif
endif


#-------------------------------
# Generic Rules
#-------------------------------
include $(MM_MAKEFILES_DIR)/SharedRules.mk

#-------------------------------
# local Rules
#-------------------------------

