local function run(msg, matches)
  if matches[1] == "موزیک" then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, "./up/"..file..".mp3", ok_cb, false)
      else 
        return nil
    end
  end
end

return {
  patterns = {
  "^(موزیک) (.*)$"
  },
  run = run
}
