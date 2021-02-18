include .env

NUSMV_PATH ?= NuSMV-2.6.0
NUSMV_FLAGS ?=
NUSMV ?= $(NUSMV_PATH)/bin/NuSMV

PDF ?= pdf
SRC ?= tp_ex2

SRC_FILE = $(addsuffix .smv,$(SRC))

# Debug flags
ifdef DEBUG
NUSMV_FLAGS += -v 1
endif

############## PHONY targets ##############

all: $(SRC_FILE) pdf
	$(NUSMV) $(NUSMV_FLAGS) $<

pdf:
	$(MAKE) -C $(PDF) $@

clean:
	$(MAKE) -C $(PDF) $@

.PHONY: all pdf clean

############### File targets ##############

.env:
	touch $@
