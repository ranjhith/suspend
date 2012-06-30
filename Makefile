all:	error-spellcheck.txt suspend.html suspend.pdf suspend.odt suspend.docx

error-spellcheck.txt:	suspend.md
	touch ignore-spellcheck.txt
	aspell list < $< | sort -u | uniq -u > spellerror.tmp
	python checkword.py spellerror.tmp ignore-spellcheck.txt > error-spellcheck.txt
	@echo "================================================================================"
	@echo "error-spellcheck.txt has the list of words whose spelling is incorrect"
	@echo "Correct the spelling of these words in suspend.md"
	@echo "In case these are false alarms, add the words to ignore in ignore-spellcheck.txt"
	@echo "================================================================================"

%.html:	%.md
	cp html-template.css suspend.css
	pandoc -t html -o $@ $< -c suspend.css
	@echo Created $@

%.pdf:	%.md
	pandoc --template=pdf-template.tex -f markdown $< -o $@
	@echo Created $@

%.odt:	%.md
	pandoc -s -S -f markdown $< -o $@
	@echo Created $@

%.docx:	%.md
	pandoc -s -S -f markdown $< -o $@
	@echo Created $@
clean:
	rm -f *~ *.html *.log *.pdf *.docx *.odt *.tmp error-spellcheck.txt
