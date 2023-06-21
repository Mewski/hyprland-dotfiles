local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

require("bar").setup({
  dividers = "slant_right", -- or "slant_left", "arrows", "rounded", false
  indicator = {
    leader = {
      enabled = true,
      off = " ",
      on = " ",
    },
    mode = {
      enabled = true,
      names = {
        resize_mode = "RESIZE",
        copy_mode = "VISUAL",
        search_mode = "SEARCH",
      },
    },
  },
  tabs = {
    numerals = "arabic", -- or "roman"
    pane_count = "superscript", -- or "subscript", false
    brackets = {
      active = { "", ":" },
      inactive = { "", ":" },
    },
  },
  clock = { -- note that this overrides the whole set_right_status
    enabled = false,
    format = "%H:%M", -- use https://wezfurlong.org/wezterm/config/lua/wezterm.time/Time/format.html
  },
})

config.enable_wayland = true
config.font = wezterm.font "Fira Code Nerd Font"
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "NONE"

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10
}

config.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 0.6
}

config.tab_bar_at_bottom = true
config.tab_max_width = 22
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.5
config.hide_tab_bar_if_only_one_tab = false
config.enable_tab_bar = true
config.adjust_window_size_when_changing_font_size = false
config.use_resize_increments = false
config.audible_bell = "Disabled"
config.clean_exit_codes = { 130 }
config.enable_scroll_bar = false

return config
