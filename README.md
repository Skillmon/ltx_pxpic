-------------------------------------------------------------------------------
# pxpic -- draw pixel pictures

Version 2021-01-13 v1.1

Released under the LaTeX Project Public License v1.3c or later
See http://www.latex-project.org/lppl.txt

Hosted at https://github.com/Skillmon/ltx_pxpic

-------------------------------------------------------------------------------

Copyright (C) 2021 Jonathan P. Spratte

This  work may be  distributed and/or  modified under  the conditions  of the
LaTeX Project Public License (LPPL),  either version 1.3c  of this license or
(at your option) any later version.  The latest version of this license is in
the file:

  http://www.latex-project.org/lppl.txt

This work is "maintained" (as per LPPL maintenance status) by
  Jonathan P. Spratte.

-------------------------------------------------------------------------------

With `pxpic` you draw pictures pixel by pixel. It was inspired by a [lovely post
by Paulo Cereda](https://tex.stackexchange.com/a/63759/117050), among other
things (most notably a beautiful duck) showcasing the use of characters from the
Mario video games by Nintendo in LaTeX.

# Building pxpic

The only place where version numbers and dates are guaranteed to be correct in
the repository is in the `l3build` configuration file `build.lua`. If it is
important to you that the files created have the correct version and date, you
should run `l3build tag` before any other build-related task.

`pxpic` utilizes the `l3build` system. You can run `l3build unpack` to extract
the code file `pxpic.sty` into the directory `build/unpacked/`.  If you want to
build the documentation run `l3build doc`, the resulting PDF will be in the main
directory. Running `l3build install` will put `pxpic.sty` in your `TEXMFHOME`,
`l3build uninstall` will remove it. `l3build` should be contained in any recent
LaTeX installation.

Of course you can also build everything manually. `pdftex pxpic.dtx` will
generate the code file, `pdflatex pxpic.dtx` will create the documentation, but
you'll have to run that at least twice, and if you want an index you'll also
have to run `makeindex -s gind.ist -o pxpic.ind pxpic.idx` and then rerun
`pdflatex`. Building the files manually will create quite a few auxiliary files
in the main directory.
