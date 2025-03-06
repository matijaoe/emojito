.PHONY: test build clean

PYTHON_CMD := $(shell command -v python3 2> /dev/null || command -v python 2> /dev/null || command -v py 2> /dev/null)

test:
	pipx run --spec ".[dev]" pytest

build:
	pipx run build
