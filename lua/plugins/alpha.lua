local status_ok, alpha = pcall(require, 'alpha')

local dashboard = require('alpha.themes.dashboard')

-- Footer
local function footer()
    local version = vim.version()
    local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
    local datetime = os.date('%Y/%m/%d %H:%M:%S')

    return print_version .. ' ' .. datetime
end

-- Banner
local default_banner = {
    "                                                    ",
    " ███╗   ██╗███████╗ ██████╗ ████████╗██╗███╗   ███╗ ",
    " ████╗  ██║██╔════╝██╔═══██╗╚══██╔══╝██║████╗ ████║ ",
    " ██╔██╗ ██║█████╗  ██║   ██║   ██║   ██║██╔████╔██║ ",
    " ██║╚██╗██║██╔══╝  ██║   ██║   ██║   ██║██║╚██╔╝██║ ",
    " ██║ ╚████║███████╗╚██████╔╝   ██║   ██║██║ ╚═╝ ██║ ",
    " ╚═╝  ╚═══╝╚══════╝ ╚═════╝    ╚═╝   ╚═╝╚═╝     ╚═╝ ",
    "                                                    ",
}

local custom_banner = {
    "                                                    ",
    " ███▄    █ ▓█████  ▒█████  ▄▄▄█████▓ ██▓ ███▄ ▄███▓",
    " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓  ██▒ ▓▒▓██▒▓██▒▀█▀ ██▒",
    "▓██  ▀█ ██▒▒███   ▒██░  ██▒▒ ▓██░ ▒░▒██▒▓██    ▓██░",
    "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░░ ▓██▓ ░ ░██░▒██    ▒██ ",
    "▒██░   ▓██░░▒████▒░ ████▓▒░  ▒██▒ ░ ░██░▒██▒   ░██▒",
    "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░   ▒ ░░   ░▓  ░ ▒░   ░  ░",
    "░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░     ░     ▒ ░░  ░      ░",
    "   ░   ░ ░    ░   ░ ░ ░ ▒    ░       ▒ ░░      ░   ",
    "         ░    ░  ░    ░ ░            ░         ░   ",
    "                                                   ",
}

dashboard.section.header.val = default_banner

-- Menu
dashboard.section.buttons.val = {
    dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
    dashboard.button('f', '  Find file', ':Telescope file_browser<CR>'),
    dashboard.button('u', '  Update plugins', ':PackerUpdate<CR>'),
    dashboard.button('q', '  Quit', ':qa<CR>'),
}

dashboard.section.footer.val = footer()

alpha.setup(dashboard.config)
