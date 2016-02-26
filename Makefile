all:
	ocamlbuild -j 0 -r -use-ocamlfind src/driver.native

clean:
	ocamlbuild -clean
