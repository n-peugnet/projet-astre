include .env

NUSMV_PATH ?= NuSMV-2.6.0
NUSMV_FLAGS ?=
NUSMV ?= $(NUSMV_PATH)/bin/NuSMV

PDF ?= pdf
SRC ?= system

SRC_FILE = $(addsuffix .smv,$(SRC))

# Debug flags
ifdef DEBUG
NUSMV_FLAGS += -v 1
endif

############## PHONY targets ##############

all: pdf nusmv

nusmv: $(SRC_FILE)
	$(NUSMV) $(NUSMV_FLAGS) $<

pdf:
	$(MAKE) -C $(PDF) $@

clean:
	$(MAKE) -C $(PDF) $@

.PHONY: all nusmv pdf clean

############### File targets ##############

.env:
	touch $@
