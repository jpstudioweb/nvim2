-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode quickly using 'jk'" })

-- clear search highlights
keymap.set(
  "n",
  "<leader>nh",
  ":nohl<CR>",
  { desc = "Clear all search highlights in the buffer, enhancing readability" }
)

-- execute python code
keymap.set(
  "n",
  "<leader>b",
  ":! python %<CR>",
  { desc = "Run the current Python script. Shortcut for quick testing and execution" }
)

-- increment/decrement numbers
keymap.set(
  "n",
  "<leader>+",
  "<C-a>",
  { desc = "Increment the number under the cursor. Useful for quick numerical edits" }
)
keymap.set(
  "n",
  "<leader>-",
  "<C-x>",
  { desc = "Decrement the number under the cursor. Complements the increment shortcut" }
)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split the window vertically for side-by-side editing" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split the window horizontally to view files top and bottom" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize the size of split windows for a balanced workspace" })
keymap.set(
  "n",
  "<leader>sx",
  "<cmd>close<CR>",
  { desc = "Close the current split window. Handy for cleaning up the workspace" }
)

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
