SYS_SOFT := soft/文件管理器.docx soft/网上邻居.docx soft/云服务.docx soft/AppStore使用说明.docx soft/Openthos浏览器.docx
OFFICE_SOFT := oldFiles/微软Office.docx oldFiles/Excel.docx oldFiles/Word点此查看.docx oldFiles/PPT点此查看.docx oldFiles/WPSOffice.docx soft/微信.docx soft/QQ.docx

TOOL_SOFT := soft/终端.docx oldFiles/OtoTernminal使用手册.docx soft/输入法_使用手册.docx soft/键盘映射.docx soft/相机.docx soft/VLC_使用手册.docx soft/云视听悦厅TV.docx  oldFiles/网易云音乐_使用手册.docx soft/压缩软件.docx

oldFiles_SOFT := oldFiles/网易云音乐_使用手册.md oldFiles/微软Office.md oldFiles/PPT点此查看.md oldFiles/WPS邮箱.md oldFiles/Word点此查看.md oldFiles/WPSOffice.md oldFiles/Excel.md oldFiles/计算器、日历、时钟_使用方式.md oldFiles/OtoTernminal使用手册.md

soft_SOFT := soft/AppStore使用说明.md soft/Openthos浏览器.md soft/QQ.md soft/VLC_使用手册.md soft/云服务.md soft/云视听悦厅TV.md soft/压缩软件.md soft/微信.md soft/文件管理器.md soft/相机.md soft/终端.md soft/网上邻居.md soft/输入法_使用手册.md soft/键盘映射.md

all:user_manual.docx

1_install.docx:一.安装.md
	pandoc -f markdown -t docx -o $@ $^

2_to_7.docx:二.首次配置.md 三.桌面.md 四.开始菜单.md 五.任务栏.md 六.通知栏.md 七.系统设置.md
	pandoc -f markdown -t docx -o $@ $^

8_soft.docx:八.常用软件.md $(oldFiles_SOFT) $(soft_SOFT)
	cd oldFiles;\
	pandoc -f markdown -t docx -o 微软Office.docx 微软Office.md;\
	pandoc -f markdown -t docx -o Excel.docx Excel.md;\
	pandoc -f markdown -t docx -o OtoTernminal使用手册.docx OtoTernminal使用手册.md;\
	pandoc -f markdown -t docx -o PPT点此查看.docx PPT点此查看.md;\
	pandoc -f markdown -t docx -o Word点此查看.docx Word点此查看.md;\
	pandoc -f markdown -t docx -o WPSOffice.docx WPSOffice.md;\
	pandoc -f markdown -t docx -o WPS邮箱.docx WPS邮箱.md;\
	pandoc -f markdown -t docx -o 网易云音乐_使用手册.docx 网易云音乐_使用手册.md;\
	pandoc -f markdown -t docx -o 计算器、日历、时钟_使用方式.docx 计算器、日历、时钟_使用方式.md
	cd soft;\
	pandoc -f markdown -t docx -o AppStore使用说明.docx AppStore使用说明.md;\
	pandoc -f markdown -t docx -o Openthos浏览器.docx Openthos浏览器.md;\
	pandoc -f markdown -t docx -o QQ.docx  QQ.md;\
	pandoc -f markdown -t docx -o VLC_使用手册.docx VLC_使用手册.md;\
	pandoc -f markdown -t docx -o 云服务.docx 云服务.md;\
	pandoc -f markdown -t docx -o 云视听悦厅TV.docx 云视听悦厅TV.md;\
	pandoc -f markdown -t docx -o 压缩软件.docx 压缩软件.md;\
	pandoc -f markdown -t docx -o 微信.docx 微信.md;\
	pandoc -f markdown -t docx -o 文件管理器.docx 文件管理器.md;\
	pandoc -f markdown -t docx -o 相机.docx 相机.md;\
	pandoc -f markdown -t docx -o 终端.docx 终端.md;\
	pandoc -f markdown -t docx -o 网上邻居.docx 网上邻居.md;\
	pandoc -f markdown -t docx -o 输入法_使用手册.docx 输入法_使用手册.md;\
	pandoc -f markdown -t docx -o 键盘映射.docx 键盘映射.md
	pandoc -f markdown -t docx -o 八.常用软件.docx 八.常用软件.md
	pandoc -f docx -t docx -o $@ 八.常用软件.docx $(SYS_SOFT) $(OFFICE_SOFT) $(TOOL_SOFT)

9_to_15.docx:九.外部设备.md 十.系统升级.md 十一.高级.md 十二.技巧.md 十三.相关应用初始配置汇总.md 十四.问答.md 十五.备注.md
	pandoc -f markdown -t docx -o $@ $^

user_manual.docx:1_install.docx 2_to_7.docx 8_soft.docx 9_to_15.docx 
	pandoc -f docx -t docx -o $@ $^

.PHOPHY: clean
clean:
	rm *.docx oldFiles/*.docx soft/*.docx


