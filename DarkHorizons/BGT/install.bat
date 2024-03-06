@ECHO OFF
copy chitin.key DarkHorizons\BGT\chitin.dh /Y 
copy setup-darkhorizons.exe _weidu.exe
md dhare

move override\CM0750HT.bmp dhare\M0750xHT.bmp
move override\CM0750LM.bmp dhare\M0750xLM.bmp
move override\CM0750SR.bmp dhare\M0750xSR.bmp
move override\CM0751HT.bmp dhare\M0751xHT.bmp
move override\CM0751LM.bmp dhare\M0751xLM.bmp
move override\CM0751SR.bmp dhare\M0751xSR.bmp
move override\CM0752HT.bmp dhare\M0752xHT.bmp
move override\CM0752LM.bmp dhare\M0752xLM.bmp
move override\CM0752SR.bmp dhare\M0752xSR.bmp
move override\CM0753HT.bmp dhare\M0753xHT.bmp
move override\CM0753LM.bmp dhare\M0753xLM.bmp
move override\CM0753SR.bmp dhare\M0753xSR.bmp
move override\CM2680HT.bmp dhare\M2680xHT.bmp
move override\CM2680LM.bmp dhare\M2680xLM.bmp
move override\CM2680SR.bmp dhare\M2680xSR.bmp
move override\CM2681HT.bmp dhare\M2681xHT.bmp
move override\CM2681LM.bmp dhare\M2681xLM.bmp
move override\CM2681SR.bmp dhare\M2681xSR.bmp
move override\CM3370HT.bmp dhare\M3370xHT.bmp
move override\CM3370LM.bmp dhare\M3370xLM.bmp
move override\CM3370SR.bmp dhare\M3370xSR.bmp
move override\CM3371HT.bmp dhare\M3371xHT.bmp
move override\CM3371LM.bmp dhare\M3371xLM.bmp
move override\CM3371SR.bmp dhare\M3371xSR.bmp
move override\CM3372HT.bmp dhare\M3372xHT.bmp
move override\CM3372LM.bmp dhare\M3372xLM.bmp
move override\CM3372SR.bmp dhare\M3372xSR.bmp
move override\CM3373HT.bmp dhare\M3373xHT.bmp
move override\CM3373LM.bmp dhare\M3373xLM.bmp
move override\CM3373SR.bmp dhare\M3373xSR.bmp
move override\CM3374HT.bmp dhare\M3374xHT.bmp
move override\CM3374LM.bmp dhare\M3374xLM.bmp
move override\CM3374SR.bmp dhare\M3374xSR.bmp
move override\CM3375HT.bmp dhare\M3375xHT.bmp
move override\CM3375LM.bmp dhare\M3375xLM.bmp
move override\CM3375SR.bmp dhare\M3375xSR.bmp
move override\CM3376HT.bmp dhare\M3376xHT.bmp
move override\CM3376LM.bmp dhare\M3376xLM.bmp
move override\CM3376SR.bmp dhare\M3376xSR.bmp
move override\CM0750.tis dhare\M0750x.tis
move override\CM0751.tis dhare\M0751x.tis
move override\CM0752.tis dhare\M0752x.tis
move override\CM0753.tis dhare\M0753x.tis
move override\CM2680.tis dhare\M2680x.tis
move override\CM2681.tis dhare\M2681x.tis
move override\CM3370.tis dhare\M3370x.tis
move override\CM3371.tis dhare\M3371x.tis
move override\CM3372.tis dhare\M3372x.tis
move override\CM3373.TIS dhare\M3373x.TIS
move override\CM3374.tis dhare\M3374x.tis
move override\CM3375.tis dhare\M3375x.tis
move override\CM3376.tis dhare\M3376x.tis
move override\CM0750.wed dhare\M0750x.wed
move override\CM0751.wed dhare\M0751x.wed
move override\CM0752.wed dhare\M0752x.wed
move override\CM0753.wed dhare\M0753x.wed
move override\CM2680.wed dhare\M2680x.wed
move override\CM2681.wed dhare\M2681x.wed
move override\CM3370.wed dhare\M3370x.wed
move override\CM3371.wed dhare\M3371x.wed
move override\CM3372.wed dhare\M3372x.wed
move override\CM3373.wed dhare\M3373x.wed
move override\CM3374.wed dhare\M3374x.wed
move override\CM3375.wed dhare\M3375x.wed
move override\CM3376.wed dhare\M3376x.wed



copy /Y DarkHorizons\BGT\tis2bg2.exe
tis2bg2.exe dhare\M0750x dhare\CM0750 -d -sw
tis2bg2.exe dhare\M0751x dhare\CM0751 -d -sw
tis2bg2.exe dhare\M0752x dhare\CM0752 -d -sw
tis2bg2.exe dhare\M0753x dhare\CM0753 -d -sw
tis2bg2.exe dhare\M2680x dhare\CM2680 -d -sw
tis2bg2.exe dhare\M2681x dhare\CM2681 -d -sw
tis2bg2.exe dhare\M3370x dhare\CM3370 -d -sw
tis2bg2.exe dhare\M3371x dhare\CM3371 -d -sw
tis2bg2.exe dhare\M3372x dhare\CM3372 -d -sw
tis2bg2.exe dhare\M3373x dhare\CM3373 -d -sw
tis2bg2.exe dhare\M3374x dhare\CM3374 -d -sw
tis2bg2.exe dhare\M3375x dhare\CM3375 -d -sw
tis2bg2.exe dhare\M3376x dhare\CM3376 -d -sw

move override\CM0750.mos dhare\CM0750.mos
move override\CM0751.mos dhare\CM0751.mos
move override\CM0752.mos dhare\CM0752.mos
move override\CM0753.mos dhare\CM0753.mos
move override\CM2680.mos dhare\CM2680.mos
move override\CM2681.mos dhare\CM2681.mos
move override\CM3370.mos dhare\CM3370.mos
move override\CM3371.mos dhare\CM3371.mos
move override\CM3372.mos dhare\CM3372.mos
move override\CM3373.mos dhare\CM3373.mos
move override\CM3374.mos dhare\CM3374.mos
move override\CM3375.mos dhare\CM3375.mos
move override\CM3376.mos dhare\CM3376.mos
move override\CM0750.ARE dhare\CM0750.ARE
move override\CM0751.ARE dhare\CM0751.ARE
move override\CM0752.ARE dhare\CM0752.ARE
move override\CM0753.are dhare\CM0753.are
move override\CM2680.are dhare\CM2680.are
move override\CM2681.are dhare\CM2681.are
move override\CM3370.are dhare\CM3370.are
move override\CM3371.are dhare\CM3371.are
move override\CM3372.are dhare\CM3372.are
move override\CM3373.ARE dhare\CM3373.ARE
move override\CM3374.are dhare\CM3374.ARE
move override\CM3375.are dhare\CM3375.ARE
move override\CM3376.are dhare\CM3376.ARE

del tis2bg2.exe
_weidu --make-biff dhare

del _weidu.exe
rd /s /q dhare