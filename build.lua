-- Build script for expkv
module     = "pxpic"
pkgversion = "1.0"
pkgdate    = "2020-01-10"

-- update package date and version
tagfiles = {"pxpic.dtx", "README.md", "CTAN.md"}
function update_tag(file, content, tagname, tagdate)
  if tagname == nil then
    tagname = pkgversion
    tagdate = pkgdate
  end
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
docfiles     = {"pxpic.pdf"}

-- how the documentation is build
typesetfiles = {"pxpic.dtx"}
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
  topic       = "Graphics in TeX",
  ctanPath    = "/graphics/pxpic",
  repository  = "https://github.com/Skillmon/ltx_pxpic",
  bugtracker  = "https://github.com/Skillmon/ltx_pxpic/issues",
  update      = true,
  description = [[
`pxpic` lets you draw pixel pictures.
  ]]
}