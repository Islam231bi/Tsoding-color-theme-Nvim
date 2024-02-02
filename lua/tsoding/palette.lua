local options = require("tsoding.config").options
local variants = {
	main = {
		_nc = "#181818",
		overlay = "#26233a",
		subtle = "#ff9b21",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#79bf46",
		rose = "#ebbcba",
		pine = "#31748f",
		foam = "#9ccfd8",
		iris = "#c4a7e7",
		
		base = "#181818", -- bg
		surface = "#424242", -- dark grey
        highlight_low = "#2c2525",
		highlight_med = "#2c2525",
		highlight_high = "#2c2525",
		muted = "#858484",
        orange = "#ff9b21", 
        white = "#ffffff", 
        green =  "#79bf46", 
        yellow = "#ffdd33", 
		none = "NONE",
	}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background ==  variants[options.dark_variant or "main"]
