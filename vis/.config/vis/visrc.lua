require('vis')
require('plugins/vis-modelines')
require('plugins/vis-commentary')
require('plugins/vis-filetype-settings')
require('plugins/vis-go/vis-go')

settings={
	java = {'set autoindent', 'set expandtab', 'set tabwidth 4'},	
	yalm = {'set autoindent', 'set expandtab', 'set tabwidth 2'},
	go = {'set autoindent', 'set expandtab', 'set tabwidth 4'}
}


vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme gruvbox')
end)


