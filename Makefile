TEX1=hehe

all:
	make $(TEX1).pdf
	make clean

$(TEX1).pdf: $(TEX1).tex
	pdflatex $(TEX1).tex
	pdflatex $(TEX1).tex


watch1:
	@while [ 1 ]; do inotifywait $(TEX1).tex; sleep 0.1; make all; done

clean:
	rm -rf *~ *.log *.out *.aux *.toc *.snm *.nav	
