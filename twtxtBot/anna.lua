local book = io.open("book.txt", "r")
book:seek("set", 843)
local line_number = 1
local meta_file = os.getenv("HOME") .. "/.anna"

function readLineNumber()
  local meta = io.open(meta_file, "r")
  if meta ~= nil then
    io.input(meta)
    line_number = io.read("*number") or 1
    meta:close()
  end
end

function readSent()
  local buffer = {}
  repeat
    local line = io.read("*line")
    if not line:match("^%s+$") then
      line = line:gsub("\r", "")
    end
    table.insert(buffer, line)
  until line:match("^%s+$")
  return table.concat(buffer, " ")
end

function readNonEmptySent()
  repeat
    sentence = readSent()
  until sentence:match("^%s+$") == nil

  sentence = sentence:gsub("%s+$", "")
  return sentence
end

function tick()
  io.input(book)
  local line = 0
  local sentence = ""
  repeat
    sentence = readNonEmptySent()
    line = line + 1
  until line == line_number

  line_number = line_number + 1
  return sentence
end

function write_meta()
  local meta = io.open(meta_file, "w")
  meta:write(tostring(line_number))
  meta:close()
end

readLineNumber()

local twtxt = io.open(os.getenv("HOME") .. "/public_html/anna.txt", "a")

local val = tick()

twtxt:write( os.date("%FT%T\t") .. val .. "\n")

write_meta()

book:close()
twtxt:close()

