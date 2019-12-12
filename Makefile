.PHONY:
doc: doc/Flowchart-diagram.jpg

doc/Flowchart-diagram.jpg: %.jpg: doc/Flowchart-diagram.svg
	inkscape -D -e "$*.png" "$<"
	convert "$*.png" -flatten "$@"
	rm -f "$*.png"
