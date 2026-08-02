# SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
#
# SPDX-License-Identifier: GPL-3.0-or-later

.POSIX:
.SUFFIXES:

ANNOTATE_FILES = Makefile generate.lua palette.lua .github/workflows/*.yml colors/* lua/granite/*

all: lint

lint: FORCE
	uvx --from='reuse[charset-normalizer]' reuse lint
	selene .
	stylua . --check

build: FORCE
	lua generate.lua

annotate: FORCE
	uvx --from='reuse[charset-normalizer]' reuse annotate \
		-c "Antti Kivi <antti@anttikivi.com>" \
		-l GPL-3.0-or-later \
		-y 2026 \
		--copyright-prefix spdx-symbol $(ANNOTATE_FILES)

FORCE: ;
