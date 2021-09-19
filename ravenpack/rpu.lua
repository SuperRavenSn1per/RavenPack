function getChars(str)
  chars = {}
  
  for i = 1,string.len(str) do
    currentChar = string.sub(str, i, i)
    table.insert(chars, currentChar)
  end
  return chars
end

function centerWrite(text, color, highlight, yOffset)
  local w,h = term.getSize()
  
  local currentTxt = term.getTextColor()
  local currentBg = term.getBackgroundColor()
  
  if color == nil then color = currentTxt end
  if highlight == nil then highlight = currentBg end
  if yOffset == nil then yOffset = 0 end
  
  term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2) - yOffset)
  term.setTextColor(color)
  term.setBackgroundColor(highlight)
  write(text)
  term.setTextColor(currentTxt)
  term.setBackgroundColor(currentBg)
end

function centerWriteTop(text, color, highlight)
  local w,h = term.getSize()
  
  local currentTxt = term.getTextColor()
  local currentBg = term.getBackgroundColor()
  
  if color == nil then color = currentTxt end
  if highlight == nil then highlight = currentBg end
  
  term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), 1)
  term.setTextColor(color)
  term.setBackgroundColor(highlight)
  write(text)
  term.setTextColor(currentTxt)
  term.setBackgroundColor(currentBg)
end
