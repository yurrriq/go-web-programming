cpif ?= | cpif

main.pdf: main.tex
	@ latexmk -gg -pdf -Werror $<

main.go: main.nw
	@ notangle -R$(notdir $@) $< ${cpif} $@

.INTERMEDIATE: main.tex
main.tex: main.nw main.go
	@ noweave -delay -filter btdefn -n -index $< ${cpif} $@

