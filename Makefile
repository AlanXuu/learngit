paper.pdf:paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

.PHONY: clean
clean:
	rm *.pdf *.aux *.log *.png
	#git ls-files -o | xargs rm -f
