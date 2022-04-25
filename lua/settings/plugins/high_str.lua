local high_str = require("high-str")

high_str.setup({
	verbosity = 0,
	saving_path = "/tmp/highstr/",
	highlight_colors = {
		-- color_id = {"bg_hex_code",<"fg_hex_code"/"smart">}
		color_0 = {"smart", "#0c0d0e"},	-- Cosmic charcoal
		color_1 = {"smart", "#e5c07b"},	-- Pastel yellow
		color_2 = {"smart", "#7FFFD4"},	-- Aqua menthe
		color_3 = {"smart", "#8A2BE2"},	-- Proton purple
		color_4 = {"smart", "#FF4500"},	-- Orange red
		color_5 = {"smart", "#008000"},	-- Office green
		color_6 = {"smart", "#0000FF"},	-- Just blue
		color_7 = {"smart", "#FFC0CB"},	-- Blush pink
		color_8 = {"smart", "#FFF9E3"},	-- Cosmic latte
		color_9 = {"smart", "#7d5c34"},	-- Fallow brown
	}
})


local map = require('settings.utils').map
map(
    "v",
    "g1",
    ":<c-u>HSHighlight 1<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g2",
    ":<c-u>HSHighlight 2<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g3",
    ":<c-u>HSHighlight 3<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g4",
    ":<c-u>HSHighlight 4<CR>",
    {
        noremap = true,
        silent = true
    }
)
map(
    "v",
    "g5",
    ":<c-u>HSHighlight 5<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g6",
    ":<c-u>HSHighlight 6<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g7",
    ":<c-u>HSHighlight 7<CR>",
    {
        noremap = true,
        silent = true
    }
)


map(
    "v",
    "g8",
    ":<c-u>HSHighlight 8<CR>",
    {
        noremap = true,
        silent = true
    }
)


map(
    "v",
    "g9",
    ":<c-u>HSHighlight 9<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "g0",
    ":<c-u>HSHighlight 0<CR>",
    {
        noremap = true,
        silent = true
    }
)

map(
    "v",
    "<F4>",
    ":<c-u>HSRmHighlight<CR>",
    {
        noremap = true,
        silent = true
    }
)
