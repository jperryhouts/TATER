.PHONY:
doc: doc/Flowchart-diagram.png

doc/Flowchart-diagram.png: %.png: doc/Flowchart-diagram.svg
	inkscape -D -e "$*.png" "$<"
	#convert "$*.png" -flatten "$@"
	#rm -f "$*.png"
