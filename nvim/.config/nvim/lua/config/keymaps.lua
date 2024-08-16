vim.g.mapleader = " "

local keymap = vim.keymap 

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlighting
keymap.set("n", "x", '"_x') -- delete single character without copying into register

-- Move highlighting with shift J K
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center screen when scrolling up, down or finding next in search
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Create new term in splitscreen
keymap.set("n", "<leader>t", ":sp | terminal<CR>i")
-- Use escape to go to normal mode in terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>")
keymap.set("t", "<C-x>", "<C-d>")

-- Obsidian keybindings
keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
keymap.set("n", "<leader>ol", "viw:ObsidianLink<CR>")

-- Split window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
-- Move between windows
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Resize mode toggle
keymap.set("n", "<leader>r", ":lua ToggleResize()<CR>")

KeyResizeEnabled = false
function ToggleResize()
    if not KeyResizeEnabled then
        ResizeOn()
        KeyResizeEnabled = true
    else
        ResizeOff()
        KeyResizeEnabled = false
    end
end

function ResizeOff()
    keymap.set("n", "h", "<Left>")
    keymap.set("n", "j", "<Down>")
    keymap.set("n", "k", "<Up>")
    keymap.set("n", "l", "<Right>")
    print("Normal Keys")
end

function ResizeOn()
    keymap.set("n", "h", "<C-w>>")
    keymap.set("n", "j", ":res -5<CR>")
    keymap.set("n", "k", ":res +5<CR>")
    keymap.set("n", "l", "<C-w><")
    print("Resize Keys")
end
