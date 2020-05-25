SOFT_SOURCE := 5_常用软件.md 5_1_文件管理器.md 5_2_网上邻居.md 5_3_云服务.md 5_4_AppStore使用说明.md 5_5_Openthos浏览器.md 5_6_终端.md 5_7_输入法_使用手册.md 5_8_键盘映射.md 5_9_相机.md 5_10_压缩软件.md 5_11_图片浏览器.md

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


