io.input('test1.txt')
commands = io.read("a")
data = {}
for d in string.gmatch(commands, "%d+") do
  data[#data+1] = tonumber(d)
end

pc = 1
opcode = data[pc]

while opcode ~= 99 do
  print('New loop - pc: ',pc,' opcode: ',opcode)
  if opcode == 1 then
    -- Addition instruction
    --  + 1: Need to account for Lua's 1-indexing of tables
    data[data[pc+3] + 1] = data[data[pc+1] + 1] + data[data[pc+2] + 1]
    pc = pc + 4
    opcode = data[pc]
  elseif opcode == 2 then
    -- Multiplication instruction
    --  + 1: Need to account for Lua's 1-indexing of tables
    data[data[pc+3] + 1] = data[data[pc+1] + 1] * data[data[pc+2] + 1]
    pc = pc + 4
    opcode = data[pc]
  else
    print('Opcode error: ',opcode)
    opcode = 99
  end
end

print('Done!')

-- Debug
for i,d in ipairs(data) do
  print('data[',i,']: ',d)
end
