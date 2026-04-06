# SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
#
# SPDX-License-Identifier: GPL-3.0-or-later

.POSIX:
.SUFFIXES:

ANNOTATE_FILES = Makefile palette.lua lua/granite/*.lua

all: lint

lint: FORCE
	uvx reuse lint

annotate: FORCE
	uvx reuse annotate -c "Antti Kivi <antti@anttikivi.com>" -l GPL-3.0-or-later -y 2026 --copyright-prefix spdx-symbol $(ANNOTATE_FILES)

FORCE: ;
