local H = {}
local starter = require("mini.starter")

starter.setup({

  items = {
    starter.sections.recent_files(5, false, false),
    {
      { name = "Quit Neovim",   action = "qall",             section = "Builtin actions"},
    },
  },

  header = function()
    local banner = [[

      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████

  ]]
    local msg = H.greeting()
    local n = math.floor((70 - msg:len()) / 2)
    return banner .. H.pad(msg, n)
  end,
  footer = "",
})

H.pad = function(str, n)
  return string.rep(" ", n) .. str
end

H.greeting = function()
  local hour = tonumber(vim.fn.strftime("%H"))
  local part_id = math.floor((hour + 4) / 8) + 1
  local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
  local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

  return ("Good %s, %s"):format(day_part, username)
end

H.fortune = function()
  local f = assert(io.popen("fortune -s", "r"))
  local s = assert(f:read("*a"))
  f:close()
  return s
end

