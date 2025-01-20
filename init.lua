-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Force an early load of the keymaps, else, they are not loaded when the buffer events are fired, causing them to not load for files that are directly opened via 'nvim file0 file1 ...'
require("config.keymaps")
