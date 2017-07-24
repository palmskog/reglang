COQ_MAKEFILE = coq_makefile

# sets COQVERSION
include Makefile.detect-coq-version

ifeq ($(COQVERSION),$(filter $(COQVERSION),8.6 8.7 trunk))
  COQ_MAKEFILE := $(COQ_MAKEFILE) -arg -w -arg -notation-overridden
endif

COQPROJECT_EXISTS=$(wildcard _CoqProject)

ifeq "$(COQPROJECT_EXISTS)" ""
$(error "Run ./configure before running make")
endif

default: Makefile.coq
	$(MAKE) -f Makefile.coq

Makefile.coq: _CoqProject
	$(COQ_MAKEFILE) -f _CoqProject -o Makefile.coq

clean:
	if [ -f Makefile.coq ]; then \
	  $(MAKE) -f Makefile.coq cleanall; fi
	rm -f Makefile.coq

distclean: clean
	rm -f _CoqProject

.PHONY: default clean distclean
