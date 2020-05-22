SOFT_SOURCE := software/5_常用软件.md software/文件管理器.md software/网上邻居.md software/云服务.md software/AppStore使用说明.md software/Openthos浏览器.md software/终端.md software/输入法_使用手册.md software/键盘映射.md software/相机.md software/压缩软件.md

all:user_manual.docx

0_to_4.docx:README.md 0_SUMMARY.md 1_安装.md 2_首次配置.md 3_桌面.md 4_系统设置.md
	pandoc -f markdown -t docx -o $@ $^

5_soft.docx:$(SOFT_SOURCE)
	pandoc -f markdown -t docx -o $@ $(SOFT_SOURCE)

6_to_11.docx:6_外部设备.md 7_系统升级.md 8_高级.md 9_技巧.md 10_问答.md 11_备注.md
	pandoc -f markdown -t docx -o $@ $^

user_manual.docx:0_to_4.docx 5_soft.docx 6_to_11.docx 
	pandoc -f docx -t docx -o $@ $^

.PHOPHY: clean
clean:
	rm *.docx


