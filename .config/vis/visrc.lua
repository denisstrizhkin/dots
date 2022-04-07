-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set theme base16-google-light')

	--Keybindings
	vis:command('map visual <Tab>y <vis-register>+y')
	vis:command('map normal <Tab>p <vis-register>+p')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set number')
	vis:command('set autoindent on')
	vis:command('set cursorline on')
	vis:command('set tabwidth 4')
	vis:command('set colorcolumn 80')
	vis:command('set show-spaces on')
	vis:command('set show-newlines on')
	vis:command('set layout v')
end)