local function run(msg, matches)
  if matches[1] == "help-en" then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, "./infoXT/text/HelpXt.sh", ok_cb, false)
      else
      return "شما مجاز به استفاده از این پلاگین نیستید"
    end
  end
end

return {
  patterns = {
  "^(help-en) (.*)$"
  },
  run = run
}
