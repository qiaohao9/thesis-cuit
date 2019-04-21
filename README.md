# 一、什么是 Thesis-CUIT

``thesis-cuit`` 提供用于排版 ``成都信息工程大学`` 本科毕业论文的 LaTeX 模板类，旨在帮助成都信息工程大学的毕业生高效地完成毕业论的写作。模板提供了各种方便的命令，自动排版论文的各个部分，是毕业论文轻易地满足学校的格式要求。

模板基于 XeLaTeX & CTeX 宏集编写。

## 1.1 为什么要使用 LaTeX

**1. 没有 Windows 系统**

不想使用 Windows 系统，主力使用的系统都是类 Unix。

**2. 不想使用 Word**

众所周知，Word 是微软旗下的一款商业软件，如果正版使用，需要支付费用。

**3. 排版更加方便**

* 更加方便的公式输入，文献参考
* 一次编排，多次使用，排版更加简单
* 跨平台支持，直接导出 PDF

# 二、使用方法

## 2.1 基本环境

使用本模板需要系统安装任意一种 TeX 环境，如 TeXLive，MacTeX 或 MikTeX（均自带有 XeLaTeX 引擎）。

## 2.2 安装方式

**macOS**

```shell
brew cask install mactex-no-gui
```

**Windows**

请手动访问 [TeXLive 官网](https://tug.org/texlive/) 查看说明并下载。

**Arch Linux**

```shell
pacman -S texlive-most texlive-lang
```

> 更多信息可以查看 [Arch Linux - TexLive](https://wiki.archlinux.org/index.php/TeX_Live_(简体中文))

## 2.3 文档编译

编译文档请使用 XeLaTeX 引擎。本项目模板提供了 ``latexmkrc``，只需要切换到项目目录下，执行：

```shell
latexmk thesis-cuit.tex
```

编译之后，会产生许多中间文件，可以执行下面的命令删除：

```shell
latexmk -c thesis-cuit.tex
```

## 2.4 结构说明

``thesis-cuit.cls:`` 论文模板的样式定义文件。

``thesis-cuit.tex:`` 论文模板的总入口，课题，姓名，指导老师等也在此文件中定义。

``content:`` 论文主要的内容存放的位置。

``content/abstract:`` 摘要内容存放的位置。

``content/chapter:`` 各章节的内容存放的位置。

``content/misc:`` 致谢，说明章节的内容存放的位置。

``pic:`` 存放论文中出现的图片

# 三、如何学习 LaTeX

- [一份(不太)简短的 LATEX2ε 介绍](http://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)
- [LaTeX入门 - 刘海洋](https://book.douban.com/subject/24703731/)

# One More Thing

有任何问题，欢迎提交到 [Issues](https://github.com/vastpeng/thesis-cuit/issues/)，也欢迎感兴趣的同学提交 [Pull Requests](https://github.com/vastpeng/thesis-cuit/pulls)。

# TO-DO

- [ ] 公式，定理，脚注样式
- [ ] 硕士封面
- [ ] 附录等章节