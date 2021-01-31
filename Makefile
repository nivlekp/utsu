.PHONY: docs build gh-pages

black-check:
	black --check --diff --target-version=py38 .

black-reformat:
	black --target-version=py38 .

build:
	python setup.py sdist

clean:
	find . -name '*.pyc' | xargs rm
	rm -Rif *.egg-info/
	rm -Rif .cache
	rm -Rif .tox
	rm -Rif __pycache__
	#rm -Rif build
	rm -Rif dist
	rm -Rif htmlcov
	rm -Rif prof

docs:
	make -C docs/ html

flake_ignore = --ignore=E203,E266,E501,W503
flake_options = --isolated --max-line-length=88

flake8:
	flake8 ${flake_ignore} ${flake_options}

isort-check:
	isort \
	--case-sensitive \
	--check-only \
	--diff \
	--line-width=88 \
	--multi-line=3 \
	--project=abjad \
	--project=abjadext \
	--project=pang \
	--thirdparty=ply \
	--thirdparty=roman \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

isort-reformat:
	isort \
	--case-sensitive \
	--line-width=88 \
	--multi-line=3 \
	--project=abjad \
	--project=abjadext \
	--project=pang \
	--thirdparty=ply \
	--thirdparty=roman \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

jupyter-test:
	jupyter nbconvert --to=html --ExecutePreprocessor.enabled=True tests/test.ipynb

mypy:
	mypy .
	# fix mypy errors and then run mypy over tests/ directory
	# mypy tests

project = utsu

pytest:
	pytest .

pytest-coverage:
	rm -Rf htmlcov/
	pytest \
	--cov-config=.coveragerc \
	--cov-report=html \
	--cov=${project} \
	.

pytest-x:
	pytest -x .

reformat:
	make black-reformat
	make isort-reformat

release:
	make -C docs/ clean html
	make clean
	make build
	pip install -U twine
	twine upload dist/*.tar.gz
	make gh-pages

check:
	make black-check
	make flake8
	make isort-check
	#make mypy

test:
	make black-check
	make flake8
	make isort-check
	#make mypy
	make pytest

segments:
	cd utsu; \
	python tools/SegmentIllustrator.py a b c; \
	python tools/SegmentRenderer.py a b c; \
	cd builds/score; \
	lilypond score.ly; \
	open score.pdf
