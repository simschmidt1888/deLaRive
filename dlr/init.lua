--[[
deLaRive init Script
TODO: better init.lua header 
]]--


dofile("config.lua")

function startFromSdCard(sdCardMountPoint)
	dofile("/" .. sdCardMountPoint .. "/init.lua")
end

function startFromFlash()
	dofile("deLaRive.lua")
end

function mountSdCard(sdCardMountPoint, sdCardSPIPin, tries)
	tryCount = 0
	mounted = false
	while ((tryCount <= tries) and (not mounted)) do
		mounted = file.mount(sdCardMountPoint, sdCardSPIPin)
	end
	return mounted
end

spi.setup(1, spi.MASTER, spi.CPOL_LOW, spi.CPHA_LOW, 8, 8)

sdMounted = mountSdCard("SD0", SPI_Pin_CS, 3)
if (not sdMounted) then
    print("ERROR ->mount failed")
    startFromFlash()
end

startFromSdCard("SD0");

