<h1 align="center">SSH Ramdisk Script</h1>

<p align="center">
  <a href="https://github.com/verygenericname/SSHRD_Script/graphs/contributors" target="_blank">
    <img src="https://img.shields.io/github/contributors/verygenericname/SSHRD_Script.svg" alt="Contributors">
  </a>
  <a href="https://github.com/verygenericname/SSHRD_Script/commits/main" target="_blank">
    <img src="https://img.shields.io/github/commit-activity/w/verygenericname/SSHRD_Script.svg" alt="Commits">
  </a>
</p>

<p align="center">
在 checkm8 设备上创建和启动 SSH ramdisk
</p>

---

# 先决条件

1. 运行 MacOS/linux 的计算机
2. 一台 checkm8 设备 (A7-A11)

# 用法

1. 克隆并 cd 到这个存储库`git clone https://github.com/verygenericname/SSHRD_Script --recursive && cd SSHRD_Script`
    - 如果您之前已经克隆了它，请运行 `cd SSHRD_Script && git pull` to pull 以获取新的更改
2. 运行 `./sshrd.sh <iOS 版本 for ramdisk>`, 没有 `<>`
3. 将您的设备进入 DFU 模式
    - A11 用户，先去恢复模式，然后是DFU模式
4. 运行 `./sshrd.sh boot` 启动 ramdisk
5. 运行 `./sshrd.sh ssh` 连接到您设备上的 SSH
6. 最后，要挂载文件系统，运行 `mount_filesystems`
    - /var 在 ssh 会话中挂载到 /mnt2
    - /private/preboot 挂载到 /mnt6
7. 玩得开心！

# Linux 笔记
- 您可能必须运行 `sudo systemctl stop usbmuxd`
- 然后运行 `sudo usbmuxd -p -f`
- 然后 ssh 将工作

# 其他命令

- 抹除您的设备：`./sshrd.sh reset`
- 转储板载 Blob：`./sshrd.sh dump-blobs`
- 删除旧的 SSH ramdisk：`./sshrd.sh clean`

# 其他的东西

- [Reddit 帖子](https://www.reddit.com/r/jailbreak/comments/wgiye1/free_release_ssh_ramdisk_creator_for_iphones_ipad/)

# 致谢
- [tihmstar](https://github.com/tihmstar) 用于 pzb/original iBoot64Patcher/img4tool
- [xerub](https://github.com/xerub) 用于 ramdisk 中的 img4lib 和 restore_external
- [Cryptic](https://github.com/Cryptiiiic) 用于 iBoot64Patcher fork
- [opa334](https://github.com/opa334) 对于 TrollStore
- [Nebula](https://github.com/itsnebulalol) 对于这个脚本的一堆 QOL 修复
