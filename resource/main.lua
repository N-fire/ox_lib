lib = setmetatable({}, {
	__newindex = function(self, name, fn)
		exports(name, fn)
		rawset(self, name, fn)
	end
})

if not LoadResourceFile('ox_lib', 'web/build/index.html') then
	error('Unable to load UI. Build ox_lib or download the latest release.\n	^3https://github.com/overextended/ox_lib/releases/latest/download/ox_lib.zip^0')
end
