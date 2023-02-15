local wezterm = require 'wezterm';

return {
  font = wezterm.font('Source Han Mono'),
  use_ime = true,
  font_size = 12.0,
  color_scheme = "iceberg-dark", -- 自分の好きなテーマ探す https://wezfurlong.org/wezterm/colorschemes/index.html
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,
  set_environment_variables = {
    LANG = 'ja_JP.UTF-8'
  },
}
