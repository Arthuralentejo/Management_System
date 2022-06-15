.PHONY: install format lint test sec

install: 
	@echo "Installing..."
	@poetry install
format:
	@echo "Formatting..."
	@isort . 
	@blue . 

lint:
	@echo "Linting..."
	@poetry shell
	@isort . --check
	@blue . --check
	@prospector --with-tool pydocstyle --doc-warning
	@exit
test:
	@echo "Testing..."
	@pytest -v 
sec:
	@pip-audit