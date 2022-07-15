# (Optional) Build a simple integration test

# Create and activate a virtual environment
setup:
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate
	
# Install dependencies in requirements.txt
install:
	# This should be run from inside the virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
# Dockerfile should pass hadolint
# app.py should pass pylint
lint:
	# Linter for Dockerfiles
	hadolint Dockerfile
	# Linter for Python source code
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
