-include .env

# You can set this environment variable on your project.
# This will be useful for the `make help` command
PROJECT_NAME ?= Make Help

# If you need a version hash based only on certain project files (ignoring miscellaneous files like .env or .git) 
VERSION ?= $(shell git ls-files -s ./ | git hash-object --stdin)

MAKE_ENV += VERSION PROJECT_NAME

SHELL_EXPORT := $(foreach v,$(MAKE_ENV),$(v)='$($(v))')

ifneq ("$(wildcard .env)", "")
	export $(shell sed 's/=.*//' .env)
endif
