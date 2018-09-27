local function run(msg, matches)
local text = io.popen("sh ./infoXT/text/HelpXt.sh"):read('*all')
if is_sudo(msg) then
  return text
end
  end
return {
  patterns = {
    '^[!/#]serverinfo$'
  },
  run = run,
  moderated = true
}
