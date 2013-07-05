REBAR ?= $(shell which rebar || echo ./rebar)
REBAR_URL ?= https://github.com/alavrik/piqi-erlang/wiki/rebar

.PHONY: clean compile test all

all: compile

compile: $(REBAR)
	$(REBAR) get-deps compile

clean:
	$(REBAR) clean

./rebar:
	erl -noshell -s inets -s ssl -eval \
		'httpc:request(get, {"$(REBAR_URL)", []}, [], [{stream, "./rebar"}])' \
        -s inets stop -s init stop
	chmod +x ./rebar
