" tab stuffs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" search stuffs
set showmatch
set hlsearch

" line numbers
"set number
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾

" plugins
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'andweeb/presence.nvim'
call plug#end()

lua << EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'thing',
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("presence").setup({
    -- General options
    auto_update         = true,                       
    neovim_image_text   = "yeah i'm a based neovim user", 
    main_image          = "neovim",                   
    client_id           = "793271441293967371",       
    log_level           = nil,                        
    debounce_timeout    = 10,                         
    enable_line_number  = false,                      
    blacklist           = {},                        
    buttons             = true,                       
    file_assets         = {},                         
    show_time           = true,

    -- Rich Presence text options
    editing_text        = "editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "looking %s",               -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "comitting changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})
EOF

" syntax highlighting
syntax on
