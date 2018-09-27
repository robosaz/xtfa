local function reload_plugins( )
  plugins = {}
  load_plugins()
end

function run(msg, matches)
 if is_sudo(msg) then
 
  if msg.to.type == 'channel' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("sp:lang", "fa")
    file = http.request("http://xtbot.ir/langxt1.txt")
	tools = http.request("http://xtbot.ir/langxt2.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    tools = tools:trim()
    tools,b = tools:gsub('^!+','')
	end
      filea = io.open("./plugins/supergroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  sysa = io.open("./plugins/tools.lua", "w")
      sysa:write(tools)
      sysa:flush()
      sysa:close()
	  reload_plugins( )
	  return "<i>زبان سوپرگپ با موفقیت به فارسی با دستورات انگلیسی تغییر کرد</i>"
elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("sp:lang", "en")
    file = http.request("http://xtbot.ir/langxt3.txt")
	tools = http.request("http://xtbot.ir/langxt4.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    tools = tools:trim()
    tools,b = tools:gsub('^!+','')
	end
      fileb = io.open("./plugins/supergroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  sysb = io.open("./plugins/tools.lua", "w")
      sysb:write(tools)
      sysb:flush()
      sysb:close()
	  reload_plugins( )
	  return "<i>Supergroup language has been changed</i>"
elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("sp:lang", "فا")
    file = http.request("http://xtbot.ir/langxt5.txt")
	tools = http.request("http://xtbot.ir/langxt6.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    tools = tools:trim()
    tools,b = tools:gsub('^!+','')
	end
      filec = io.open("./plugins/supergroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  sysc = io.open("./plugins/tools.lua", "w")
      sysc:write(tools)
      sysc:flush()
      sysc:close()
	  reload_plugins( )
      return "<i>زبان سوپرگپ با موفقیت به فارسی با دستورات فارسی تغییر کرد</i>"
end
end

if msg.to.type == 'chat' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("gp:lang", "fa")
    file = http.request("http://xtbot.ir/langxt7.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filea = io.open("./plugins/ingroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  reload_plugins( )
	 return "<i>زبان گپ معمولی با موفقیت  به فارسی با دستورات انگلیسی تغییر کرد</i>"
 elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("gp:lang", "en")
    file = http.request("http://xtbot.ir/langxt8.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      fileb = io.open("./plugins/ingroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  reload_plugins( )
	 return "<i>Chat language has been changed</i>"
 elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("gp:lang", "فا")
    file = http.request("http://xtbot.ir/langxt9.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filec = io.open("./plugins/ingroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  reload_plugins( )
       return "<i>زبان گپ معمولی با موفقیت به فارسی با دستورات فارسی تغییر کرد</i>"
end
 end

 if matches[1] == "update" then
  txt = "Updated!"
  send_msg(get_receiver(msg), txt, ok_cb, false)
  return reload_plugins( )
 end
 if matches[1] == "lang" and matches[2] == "list" then
 	return [[
List of language:
 	
⚓️ !setlang en
Change language to English
 	
⚓️ !setlang fa
تغییر زبان به فارسی با دستورات انگلیسی
 	
⚓️ !setlang فا
تغییر زبان به فارسی با دستورات فارسی
]]
end
  elseif not is_sudo(msg) then
 return "You cant change language (just for sudo!)"
end
end
 return {
 advan = {
 "Created by: @janlou",
 "Powered by: @AdvanTm",
 "CopyRight all right reserved",
 },
 patterns = {
    "^[!#/](setlang) (fa)$",
	   "^[!#/](setlang) (en)$",
	   "^[!#/](setlang) (فا)$",
	   "^[!#/](lang) (list)$",
	   "^[!#/](update)$",
 },
 run = run
}
