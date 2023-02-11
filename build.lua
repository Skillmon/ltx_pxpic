-- Build script for pxpic
module     = "pxpic"
pkgversion = "1.4"
pkgdate    = "2023-02-11"

-- update package date and version
tagfiles = {"pxpic.dtx", "README.md", "CTAN.md"}
function update_tag(file, content, tagname, tagdate)
  if tagname == nil then
    tagname = pkgversion
    tagdate = pkgdate
  end
  -- update copyright notices
  _, _, tagyear = string.find(tagdate, "(%d%d%d%d)")
  content = string.gsub(content,
    "(Copyright%s*%(C%)%s*%d%d%d%d%-)%d%d%d%d",
    "%1" .. tagyear)
  return string.gsub(content,
    "%d%d%d%d%-%d%d%-%d%d v%d%.%d%w?",
    tagdate .. " v" .. tagname)
end

-- test with pdfTeX and the LaTeX format
checkengines = {"pdftex","luatex"}
checkformat  = "latex"

-- from which files to build
sourcefiles = {"pxpic.dtx"}
unpackfiles = sourcefiles

-- which files to put in the tds
installfiles = {"pxpic.sty"}
textfiles    = {"README.md", "CTAN.md"}
docfiles     = {"pxpic.pdf", "pxpic-parrot.csv"}

-- how the documentation is build
typesetfiles = {"pxpic.dtx"}
typesetsuppfiles = {}
typesetruns  = 4

packtdszip   = false

-- CTAN upload
ctanreadme    = "CTAN.md"
uploadconfig  = {
  pkg         = module,
  author      = "Jonathan P. Spratte",
  version     = pkgversion .. " " .. pkgdate,
  license     = "lppl1.3c",
  summary     = "Draw pixel pictures",
  topic       = "graphics-in-tex",
  ctanPath    = "/graphics/pxpic",
  repository  = "https://github.com/Skillmon/ltx_pxpic",
  bugtracker  = "https://github.com/Skillmon/ltx_pxpic/issues",
  update      = true,
  description = [[
With `pxpic` you draw pictures pixel by pixel. It was inspired by a [lovely post
by Paulo Cereda](https://tex.stackexchange.com/a/63759/117050), among other
things (most notably a beautiful duck) showcasing the use of characters from the
Mario video games by Nintendo in LaTeX.
  ]]
}
