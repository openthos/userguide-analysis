# 桌面说明书

## 预览效果图：
- ![](https://github.com/openthos/desktop-analysis/blob/master/image/tmp_3263-Screenshot_2016-12-29-09-58-31-1261403727.png)

## Desktop 功能点

- 鼠标基本操作 
     - 001 支持 鼠标左键点选 选中文件，反白；
     - 002 支持 鼠标左键点空白位置，已选中的文件背景变透明；
     - 003 支持 鼠标右键 弹出选项菜单；
     - 004 支持 鼠标左键快速双击 打开指定的文件；
     - 005 支持鼠标点击后拖拽文件到空白位置，个人喜好排序；
     - 006 支持 快捷键"ctrl" + 鼠标左键点选 多个文件；
     
- 快捷键操作
 	 - 001 支持 快捷键"ctrl" + "a" 选择全部文件；
 	 - 002 支持 快捷键"ctrl" + "c" 复制文件；
 	 - 003 支持 快捷键"ctrl" + "v" 粘贴文件；
  	 - 004 支持 快捷键"ctrl" + "x" 剪切文件；
  	 - 005 支持 快捷键"F2" 快速重命名功能；
  	 - 006 支持 快捷键"F5“ 刷新桌面功能；
  	 - 007 支持 快捷键“delete" 删除选中的文件到回收站功能；
  	 - 008 支持 快捷键“shift" + "delete" 永久删除选中的文件；	
     - 009 支持 快捷键"Enter" 快速进入选中的条目；
	 
- 右键菜单
   	 - 001 支持 右键菜单 打开文件；
   	 - 002 支持 右键菜单 选择特定的应用来打开该文件（打开方式）；
   	 - 003 支持 右键菜单 支持快速压缩选中的文件；
   	 - 004 支持 右键菜单 支持快速解压缩选中的压缩包；
   	 - 005 支持 右键菜单 支持复制选中的文件；
   	 - 006 支持 右键菜单 支持剪贴选中的文件；
   	 - 007 支持 右键菜单 支持删除选中的文件；
   	 - 008 支持 右键菜单 支持重命名选中的文件；
   	 - 009 支持 右键菜单 支持粘贴之前复制剪贴的文件；
   	 - 010 支持 右键菜单 支持排序功能；
   	 - 011 支持 右键菜单 支持查看选中文件的详情功能；
   	 - 012 支持 右键菜单 支持新建文件夹；
   	 - 013 支持 右键菜单 支持新建文件；
	 
- 界面操作
   	 - 001 支持双击，右键打开，"Enter"进入文件；
   	 - 002 支持根据不同的后缀显示不同的图标，表示不同的文件类型；
	 
- 信息显示
   	 - 001 支持文件复制信息弹窗显示；
   	 - 002 支持文件剪贴信息弹窗显示；
   	 - 003 支持文件删除信息弹窗显示；
   	 - 004 支持文件压缩信息弹窗显示；
   	 - 005 支持文件解压缩信息弹窗显示；
   	 - 006 支持 文件详情显示 文件位置，文件大小，占用空间，创建时间，修改时间，访问时间，用户权限，群组权限，其他权限；	
 
## [Desktop Input 同 FileManager Input](https://github.com/openthos/desktop-analysis/blob/master/instructions/FileManagerInput.md)

## 基本组成：
- 桌面背景:
    - [更换壁纸](https://github.com/openthos/desktop-analysis/blob/master/instructions/change_wallpaper_info.md)
- 桌面图标
    - 图标是是具有可操作性的图形标识符号，根据不同的的项目，分为不同的类型，Openthos中主要分为五类，每一类都有独自的选项菜单（右键触发）
        - [我的电脑](https://github.com/openthos/desktop-analysis/blob/master/instructions/computer_info.md)   通过我的电脑可以快速访问文件管理系统，是一个特殊的图标
        - [回收站](https://github.com/openthos/desktop-analysis/blob/master/instructions/recycle_info.md)    用于存放用户删除的文件或文件夹（不包括U盘），当用户删除文件或文件夹，默认不会物理删除，而是转存到回收站统一管理。
        - [文件/文件夹](https://github.com/openthos/desktop-analysis/blob/master/instructions/file_info.md)   个人的文件或文件夹，快捷方便。
        - [空白区域](https://github.com/openthos/desktop-analysis/blob/master/instructions/blank_info.md)    没有任何图标的区域
    - 图标的基本操作
        - 移动: 长按可以进行移动，托放至其他空白区域
        - 打开: 打开对应的内容，可以双击打开，右键打开
        - 更名: 给个人文件/文件夹重命名，可以右键选择重命名，也可以选中后按F2进行重命名
        - 删除: 删除个人文件/文件夹，可以右键选择删除，也可以选中后按delete删除到回收站，或者直接按Shift + Delete键可以快速呼出直接删除
        - 排列: 将桌面乱序的图标进行排序，恢复默认的顺序。可以邮件空白位置选择排序，也可以直接按F5来进行排序
- 任务栏和开始菜单:
    - [任务栏说明书](https://github.com/openthos/systemui-analysis/blob/master/Systemui_use_instructions/TaskBar%20%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E.md)
    - [开始菜单说明书](https://github.com/openthos/systemui-analysis/blob/master/Systemui_use_instructions/StartupMenu_user_instructions.md)
    
    
## 快速回到桌面
- 001在任何界面，点击右下角可快速回到桌面；  
- 002在任何界面，可以Alt + Tab快速切换到桌面；
- 003在任何界面，可以Win + D快速切换得到桌面；

## 常用快捷键（目前由于多窗口特性，可能快捷键不生效，解决办法是利用 快速回到桌面，在点击桌面，就可以生效，快速回到桌面的方法见上）

- 001选中某文件后， 按Delete键可以快速呼出删除到回收站弹窗；
- 002选中某文件后， 按Shift + Delete键可以快速呼出直接删除的弹窗；
- 003按Alt + Tab 可以快速切换打开的应用， 类似其他图形操作系统；
- 004选中某文件后， 按Ctrl + C键可以快速复制 ；
- 005选中某文件后， 按Ctrl + X键可以快速剪贴 ；
- 006选中某文件后， 按F2键可以快速重命；
- 007按F5键可以快速刷新桌面；
- 008按Ctrl + V键可以快速进行粘贴；  
- 009桌面的图标长按后拖拽可以进行位置的变换 （暂不支持直接点击拖拽）；
  
