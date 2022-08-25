-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\nickm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\nickm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\nickm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\nickm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\nickm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim.git"
  },
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip.git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp.git"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip.git"
  },
  ["ff-cmp"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ff-cmp",
    url = "https://github.com//Users/nick/Desktop/dev/work-projects/neovim_plugins/ff-cmp.git"
  },
  ["flutter-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim.git"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme.git"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim.git"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim.git"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim.git"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim.git"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim.git"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs.git"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp.git"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap.git"
  },
  ["nvim-dap-go"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go.git"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui.git"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text.git"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer.git"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig.git"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter.git"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor.git"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons.git"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim.git"
  },
  playground = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\playground",
    url = "https://github.com/nvim-treesitter/playground.git"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim.git"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim.git"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim.git"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim.git"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim.git"
  },
  ["tmux.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tmux.nvim",
    url = "https://github.com/aserowy/tmux.nvim.git"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim.git"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim.git"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive.git"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "C:\\Users\\nickm\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb.git"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
