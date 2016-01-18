all:
	cat "TITLEHERE.md"| sed -r "s/;;(.*)/\n##\1##\n/g"|sed -r "s/::(.*)/\n#\1#\n/g"|sponge "TITLEHERE.md"; \
	sed -i -E 's/(#.*)/\U\1/g' "TITLEHERE.md"; \
	pandoc --template=/home/jonah/Dropbox/code/latex/tufte/tuftePandoc/handout.tex "TITLEHERE.md" -o output.pdf;
