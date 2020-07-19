project_name := notes
ts := $(shell /bin/date "+%Y-%m-%d---%H-%M-%S")

file_structure:
	mkdir code
	mkdir figures
	mkdir comments
	mkdir snapshots

snapshot:
	@echo Timestamp is $(ts)
	cp ./my-notes/$(project_name).pdf ./snapshots/$(project_name)_$(ts).pdf

comment: 
	@echo Timestamp is $(ts)
	cp ./my-notes/$(project_name).pdf ./comments/$(project_name)_$(ts)_rad_comments.pdf

clean:
	rm *.aux *.log *.out *.bbl *.blg *.dvi *.aux *.fff *.lof *.out *fdb_latexmk *synctex.gz *.tdo *.fls *.toc *.bcf *.run.xml 

# tex:
# 	latex ./my-notes/$(project_name).tex 	