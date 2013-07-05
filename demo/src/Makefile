ifdef REBAR_DEPS_DIR
	DEPS_DIR ?= $(REBAR_DEPS_DIR)
else
	DEPS_DIR ?= ../deps
endif

export PATH := ${PATH}:${DEPS_DIR}/piqi/priv/bin
export PATH := ${PATH}:${DEPS_DIR}/piqi_rpc/priv/bin
export ERL_LIBS := ${DEPS_DIR}

PERSON_DEFS = person_piqi.erl ../include/person_piqi.hrl
PERSON_RPC = person_rpc_piqi.erl person_rpc_piqi_rpc.erl \
			 ../include/person_rpc_piqi.hrl \
			 ../include/person_rpc_piqi_impl.hrl

PIQI_ALL = $(PERSON_DEFS) $(PERSON_RPC)

.PHONY: all clean

all: $(PIQI_ALL)

$(PERSON_DEFS): ../priv/person.piqi
	piqic-erlang -I ../priv $<
	mv person_piqi.hrl ../include

$(PERSON_RPC): ../priv/person-rpc.piqi
	piqic-erlang-rpc $(PIQI_INCL) $<
	#rm person_rpc_piqi_default_impl.erl
	mv person_rpc_piqi.hrl person_rpc_piqi_impl.hrl ../include
