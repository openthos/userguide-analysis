## 安装OPENTHOS和Win10双系统
### OPENTHOS和Win10安装在一个硬盘
#### 步骤
   - 开机，进入win10启动盘，进入windows安装程序，设置语言等项目，点击下一步，之后点击现在安装
   - 激活windows，或者选择“我没有产品密钥”
   - 选择安装的操作系统，勾选“我接受许可条款”
   - 选择 “自定义：仅安装windows（高级）”
   - 删掉要安装的驱动器的所有分区
   - 选择要安装的分区，点击“新建”按钮，大小随意，但要给OPENTHOS预留至少50G的空间，新建完成后，点击下一步
   - 等待windows安装完成并重启。     
   - 完成windows初始配置后，关闭电脑
   - 插入OPENTHOS启动盘，开机，按F10键显示Boot Menu（Boot Menu的快捷键因电脑而异，可能是F10、F12或其它，请查阅当前电脑的产品手册）
   - 选择Openthos的启动盘
   - 进入选择系统界面，选中OpenThos后按F2键
   - 选择OpenThos Installation
   - 选择Manul Install
   - 选择Create/Modify partitions
   - 选择要安装的硬盘
   - 选中Free space，下方的光标移动到[new]，开始新建分区
      - First sector直接输入回车（设置为默认）
      - Size in sectors输入+4G（分出4G的分区）
      - 剩下的几个选项也直接按回车
   - 同样的方式再分一个40G的分区
   - 下方光标选择[Write]，输入yes按回车，之后下方光标选中[Quit]离开
   - 回到刚才的手动安装界面，开始安装OpenThos的EFI分区。请选择刚才windows装的EFI分区，比如我们在sdc盘安装就是sdc2分区（应该是vfat格式）
   - **系统会提示是否格式化分区，一定要选“no”！！！**
   - 之后开始安装OpenThos系统，选择刚才新建的4G的分区，系统会让你选择文件系统的格式，选择ext4
   - 系统提示是否格式化分区选yes
   - 之后开始安装OPENTHOS DATA，选择刚才新建的40G的分区，系统会让你选择文件系统的格式，选择ext4
   - 系统提示是否格式化分区选yes
   - 等待系统安装完重启
   - 下载EasyUEFI软件，解压后进入bin目录，打开EasyUEFI.exe
   - 进入Manage EFI Boot Option
   - 左边选择windows boot manager，点击Creat new entry按钮（如图）
   - Typt选”Linux or other OS“，target partition选中EFI分区，点击下方的Browse按钮
   - 
   
### OPENTHOS和Win10分别安装在两个硬盘
#### 步骤
