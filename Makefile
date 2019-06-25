.PHONY: all clean

all:
	dune build

clean:
	dune clean

push:
	docker build . -t ocaml/ci-opam
	docker push ocaml/ci-opam
