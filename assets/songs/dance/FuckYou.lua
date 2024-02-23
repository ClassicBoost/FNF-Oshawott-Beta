local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function
ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
	MB_OKCANCEL = 0x00000001L,
    MB_ABORTRETRYIGNORE = 0x00000002L,
    MB_YESNOCANCEL = 0x00000003L,
    MB_YESNO = 0x00000004L,
    MB_RETRYCANCEL = 0x00000005L,
    MB_CANCELTRYCONTINUE = 0x00000006L,
    MB_HELP = 0x00004000L,
    MB_ICONWARNING = 0x00000030L,
    MB_ICONINFORMATION = 0x00000040L,
    
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

function onUpdate() 
	if misses == 15 then
		user32.MessageBoxA(nil,"How did you get 15 misses on this song ? Whatever, I'll just crash your game", " ", ffi.C.MB_YESNO + ffi.C.MB_ICONWARNING)
		addHaxeLibrary('Sys')
		runHaxeCode([[
			Sys.exit(0);
		]])
	end
end


