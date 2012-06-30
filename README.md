# Suspend

Suspend helps you to create PDF, HTML, ODT (Libreoffice) & DOCX (Microsoft Word) versions of your resume kept in [Markdown](http://daringfireball.net/projects/markdown/) format. It is based on Phil Hollenback's [resume](https://github.com/tels7ar/resume). 

A copy of this file can be found at: http://github.com/ranjhith/suspend

Note: The content of `suspend.*` is for demo purposes only. In case, you are interested to look at my resume, visit [my website](http://www.ranjhith.com).

## Modifications

I made a few modifications on top of Phil's version to suit my taste. Things that I did:  
*	Added generation date & page number footer to the PDF output.
*	Changed the fonts from Microsoft ones to [Liberation family](http://en.wikipedia.org/wiki/Liberation_fonts).
*	Made the margins to be equal at all sides.
*	Added more space between paragraphs for HTML output.
*	Added spellcheck with [Aspell](http://aspell.net/), along with a ignore list for spell errors.
*	Removed uploaders from `Makefile`.
*	Added ODT & DOCX output generation.

## Requirements

*	Pandoc
*	Latex (texlive-full). ~500MB :(
*	Aspell (aspell-en)
*	Sort
*	Uniq
*	Liberation fonts (fonts-liberation)
*	Python

Tested on Debian Sid with Bash.

## Usage

Prepare the content of your resume in Markdown & keep it as `suspend.md`. Keep the words whose spell check has to ignored in `ignore-spellcheck.txt`. Tweak `pdf-template.tex` & `html-template.css` to your liking. Then just `make`.

If there are spell errors `errors-spellcheck.txt` will be generated. `suspend.pdf`, `suspend.html`, `suspend.odt` & `suspend.docx` are your output files.

If you want to redo `make clean` & `make`.

## TODO

*	Embed CSS within the HTML output.
*	Add generation date to HTML output.
*	Markdown comments dont get excluded in ODT output. Fix this.

## FAQ

Q: Why is it called "Suspend"?   
A: To prevent your employer from getting suspicious with the presence of resume.pdf on your work computer. 

Q: After downloading the files, I typed `suspend` & the computer went to sleep. How to fix this?   
A: Try typing `resume` & wait for a while. Btw, even though this is called `suspend`, you need to execute `make`. No more questions please.

## License

Copylefted. Send me a note, if Suspend helped your Resume.

## References

*	Mike White's [resume](https://github.com/mwhite/resume).
*	SysAdvent [Article](http://sysadvent.blogspot.in/2011/12/day-14-write-your-resume-in-markdown.html).
*	[Pandoc Demos](http://johnmacfarlane.net/pandoc/demos.html).
