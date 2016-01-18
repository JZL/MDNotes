# Markdown Notes

The purpose of this is to make a streamlined note-taking system using [tufte latex]( https://tufte-latex.github.io/tufte-latex/ ) as a sort of Cornell notes system (with the side notes as the questions/definitions).

It uses a customized version of the handout.tex pandoc template from [wcaleb](https://github.com/wcaleb/pandoc-templates/blob/master/handout.tex). I would add the bash function in the `NEEDED_FOR_BASHALIAS` file which allows me to run `initnotes FILENAME` and it will generate a custom Makefile, custom starting point for the markdown file, run pandoc and `evince` open the output.pdf file.

## The Makefile##

For headings, I prefer to use `::` for main headings and `;;` for subheadings (because they are on the home row and allow for even faster typing). And, I don't like manually capitalizing headings so this file takes care of that. 

The makefile is meant to be run as `:make` in vim which, conveniently, automatically rewrites the buffer in vim

## Vim customization ##
I also do not like typing `* ` for each list item and having to manage indenting the items manually so I use [vim markdown](https://github.com/gabrielelana/vim-markdown) in order to have the next list item automatically inserted on new line and tab/shift tab manage the indentation
