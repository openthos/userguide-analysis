## 在虚拟机中安装OPENTHOS

### vmware 虚拟机安装

#### 方法一、网盘直接下载，解压使用
1. 百度网盘下载压缩包
```  
链接: https://pan.baidu.com/s/1o9g4KaQ 
密码: 4mjw
```  
2. 解压使用  
注：用vmware workstation或者vmware player(windows) 以及 vmware fusion(mac平台）12.0以上版本直接打开运行

#### 方法二、自己创建虚拟机
1. 下载img镜像
2. 转换镜像格式
   ```qemu-img  convert  -f raw -O vmdk  ./（镜像名字）.img  ./（镜像名字）.img.vmdk```
3. 创建一个虚拟机，向导界面的部分选择如下：
   - 配置类型：典型   
   - 安装来源：稍后安装操作系统   
   - 客户机操作系统：其他   
   - 版本：其他64位   
4. 创建完成后，打开“编辑虚拟机设置”，修改内存大小为2048MB，处理器数量为2。  
![](../pic/anzhuang/vmware.png)

5. Display选项，勾选“Accelerate 3D graphic”  
(若vmware出现“No 3D graphic ...” 错误，可编辑虚拟机文件vmx，加入一行： mks.gl.allowBlacklistedDrivers = "TRUE")  
![](../pic/anzhuang/vmware3d.png)

6. VMware机器设置中，选择“Options“ --> "Advanced"， 勾选"Boot with EFI instead of BIOS";  
（如没有该选项，可编辑虚拟机文件vmx，加入一行：firmware = "efi" ）  
![](../pic/anzhuang/vmwareboot.png)

7. 点击设置界面的“添加”按钮，添加一个硬盘挂载vmdk  
硬件类型选择“磁盘”  
![](../pic/anzhuang/hardware.png)  
虚拟磁盘类型选择“IDE”，磁盘选择“使用现有虚拟磁盘”  
![](../pic/anzhuang/disk.png)  
磁盘文件选择之前转换的vmdk文件，点击完成   
![](../pic/anzhuang/selectdisk.png)  
如果弹出是否保留现有格式的选项，选择“保留现有格式”  
![](../pic/anzhuang/keepfmt.png)

8. 启动后在boto界面（如下图）按F2键  
![](../pic/anzhuang/boto1.png)  
选择“Openthos installation”  
![](../pic/anzhuang/botoF2.png)  
选择 自动安装  
![](../pic/anzhuang/vmAutoInstall.png)  
选择 是  
![](../pic/anzhuang/vmAutoInstall1.png)  
选择一开始创建的那个硬盘  
![](../pic/anzhuang/vmAutoInstall2.png)

等待，虚拟机重启pan再次进入boto界面，选择左边的Openthos图标进入系统（右边的相当于U盘启动），之后进入[OPENTHOS启动界面](../一.安装.md#启动界面)。  
9. 调整分辨率，默认为1280x720，如果要调到1920x1080修改如下：  
按Alt+F1进入终端，输入```vi /system/build.prop```  
添加```debug.drm.mode.force=1920x1080@60```  
保存后重启虚拟机

### qemu 虚拟机安装
#### iso镜像
1. 下载iso镜像
2. 创建虚拟磁盘：  
`qemu-img create a.raw +20G`
3. 手动格式化磁盘：  
`parted a.raw`  
```
mklabel msdos
mkpart p ext4 1 20G
quit
```
4. 启动虚拟机，默认从cdrom启动：  
`qemu-system-x86_64 -hda a.raw -enable-kvm -m 4096 -cdrom you-download.iso -boot once=d`   
启动后选择安装…… 选择第一个安装grub，第二个安装grub2选择skip，其它随意
5. 安装后直接虚拟硬盘启动：  
`qemu-system-x86_64 -hda a.raw -enable-kvm -m 4096 -vga cirrus`

#### img镜像
1. 下载img镜像
2. 创建虚拟磁盘：`qemu-img create a.raw +20G`
3. 手动格式化磁盘：`parted a.raw`  
```
mklabel msdos
mkpart p ext4 1 20G
quit
```
4. 下载：https://www.kraxel.org/repos/jenkins/edk2/edk2.git-ovmf-x64-0-20180807.281.gc526dcd40f.noarch.rpm  
将解压后的usr/share/edk2.git/ovmf-x64目录下的/OVMF-pure-efi.fd复制到a.raw所在的目录

5. 启动虚拟机，默认从cdrom启动：  
`qemu-system-x86_64 -bios OVMF-pure-efi.fd -hda a.raw -enable-kvm -m 4096 -hdb openthos-2.0.0.181008.img -boot once=d`  
启动在下图的界面按f2进入选项菜单
![](../pic/anzhuang/qemu1.png)
选择安装OPENTHOS
![](../pic/anzhuang/qemu2.png)
选择自动安装
![](../pic/anzhuang/qemu3.png)
正在安装
![](../pic/anzhuang/qemu4.png)
安装完成后会自动重启

6. 以后可以直接虚拟硬盘启动：
![](../pic/anzhuang/qemu4.png)
`qemu-system-x86_64 -bios OVMF-pure-efi.fd -hda a.raw -enable-kvm -m 2048 -vga cirrus`
