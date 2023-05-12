.PHONY: ALWAYS

all:
	# nothing

generate: generate_generics

template_generics := $(wildcard src/160_genericity_text/template/*.ad?)
generate_generics: $(template_generics)
	for f in $^; do \
		adacut -m question $$f > src/160_genericity_text/src/$$(basename $$f); \
		adacut -m answer $$f > src/160_genericity_text/answers/$$(basename $$f); \
	done

