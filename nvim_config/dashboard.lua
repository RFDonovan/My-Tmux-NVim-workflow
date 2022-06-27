
  local home = os.getenv('HOME')
  local db = require('dashboard')
--  db.preview_command = 'cat | lolcat -F 0.3'
--  db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  db.preview_file_height = 12
  db.preview_file_width = 80
  db.custom_header = {
'',
'',
'▓█████▄  ▒█████   ███▄    █  ▒█████   ██▒   █▓ ▄▄▄       ███▄    █ ',
'▒██▀ ██▌▒██▒  ██▒ ██ ▀█   █ ▒██▒  ██▒▓██░   █▒▒████▄     ██ ▀█   █ ',
'░██   █▌▒██░  ██▒▓██  ▀█ ██▒▒██░  ██▒ ▓██  █▒░▒██  ▀█▄  ▓██  ▀█ ██▒',
'░▓█▄   ▌▒██   ██░▓██▒  ▐▌██▒▒██   ██░  ▒██ █░░░██▄▄▄▄██ ▓██▒  ▐▌██▒',
'░▒████▓ ░ ████▓▒░▒██░   ▓██░░ ████▓▒░   ▒▀█░   ▓█   ▓██▒▒██░   ▓██░',
' ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░ ▒░▒░▒░    ░ ▐░   ▒▒   ▓▒█░░ ▒░   ▒ ▒ ',
' ░ ▒  ▒   ░ ▒ ▒░ ░ ░░   ░ ▒░  ░ ▒ ▒░    ░ ░░    ▒   ▒▒ ░░ ░░   ░ ▒░',
' ░ ░  ░ ░ ░ ░ ▒     ░   ░ ░ ░ ░ ░ ▒       ░░    ░   ▒      ░   ░ ░ ',
'   ░        ░ ░           ░     ░ ░        ░        ░  ░         ░ ',
' ░                                        ░                        ',
'',
'',
  }

  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = '',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'browse oldfiles',
      shortcut = ''},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = ''},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = ''},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = ''},
      {icon = '  ',
      desc = 'Quit Neovim                              ',
      action = 'qa',
      shortcut = ''},
    }
  db.custom_footer = {'--------------------------------------------'}
--let g:dashboard_custom_shortcut_icon['last_session'] = ' '
--let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
--let g:dashboard_custom_shortcut_icon['find_file'] = ' '
--let g:dashboard_custom_shortcut_icon['new_file'] = ' '
--let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
--let g:dashboard_custom_shortcut_icon['find_word'] = ' '
--let g:dashboard_custom_shortcut_icon['book_marks'] = ' '

