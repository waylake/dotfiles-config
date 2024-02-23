vim.g.skip_ts_context_commentstring_module = true
require('waylake.base')
require('waylake.highlights')
require('waylake.maps')
require('waylake.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('waylake.macos')
end
if is_linux == 1 then
  require('waylake.linux')
end
if is_win == 1 then
  require('waylake.windows')
end
if is_wsl == 1 then
  require('waylake.wsl')
end
