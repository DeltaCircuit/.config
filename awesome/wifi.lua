local mod = {};
local awful = require("awful");
local wibox = require('wibox');

local wifiWidget = awful.widget.watch("iwgetid -r", 5, function(widget, stdout)
  local wifi_map = {
    ["GNXS-2.4G"] = " Guruvayur HQ (KV) ",
    ["KVFTTH5"] = " Guruvayur HQ (KV) ",
    ["FTTH1"] = " Guruvayur HQ (BSNL) ",
    ["ERSMOB"] = " ERS Main Operating Base ",
    ["ERSFOB"] = " ERS Forward Operating Base "
  }
  local text = wifi_map[stdout:gsub("%s+", "")] or "Unidentified Network " .. stdout
  widget:set_text(text)
end
)


local textWidget = wibox.widget {
  markup = 'Welcome',
  widget = wibox.widget.textbox
}

mod.text = textWidget;
mod.wifi = wifiWidget
return mod;
