% TODO
% 1. 行距
% 2. pdfbookmark 错乱
% 3. 参考文献


\ProvidesClass{thesis-cuit}

\LoadClass{ctexart}

\RequirePackage{ifxetex}
\RequirePackage{ifthen}
\RequireXeTeX

\setmainfont{Times New Roman}

\RequirePackage[
    left=3.17cm, right=3.17cm,
    top=2.54cm, bottom=2.54cm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage{lastpage}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{array}
\RequirePackage[titles, subfigure]{tocloft}
\RequirePackage{subfigure}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{layout}
\RequirePackage{setspace}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt]{caption}
\RequirePackage[hyperfootnotes=false,
bookmarksnumbered,
bookmarksdepth=4
]{hyperref}

\urlstyle{rm}
\raggedbottom

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{第 \thepage 页 \chinesespace 共 \pageref{LastPage} 页}
\setlength{\parindent}{2em} % 首行缩进

\hypersetup{
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    urlcolor=black
}

\ctexset{section={format={\bfseries\songti\zihao{-3}}, indent={0em}, aftername={\ }, afterskip={0.5ex}}}
\ctexset{subsection={format={\bfseries\songti\zihao{4}}, indent={1em}, aftername={\ }, afterskip={0.5ex}}}
\ctexset{subsubsection={format={\bfseries\songti\zihao{-4}}, indent={2em}, aftername={\ }, afterskip={0.5ex}}}


\newcommand{\chinesecolon}{\char"FF1A}
\newcommand{\chinesespace}{\char"3000}

\newcommand{\thetitle}{}
\newcommand{\theauthor}{}
\newcommand{\themajor}{}
\newcommand{\thedegree}{}
\newcommand{\theteacher}{}
\newcommand{\thedate}{}

\newcommand{\thecategorynumber}{}
\newcommand{\theudc}{}
\newcommand{\thestudentid}{}

\newcommand{\theinfo}{}
\newcommand{\thegender}{}
\newcommand{\thegroup}{}
\newcommand{\thebirthday}{}
\newcommand{\theemail}{}

\renewcommand{\title}[1]{\renewcommand{\thetitle}{#1}}
\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}
\renewcommand{\date}[1]{\renewcommand{\thedate}{#1}}
\newcommand{\major}[1]{\renewcommand{\themajor}{#1}}
\newcommand{\degree}[1]{\renewcommand{\thedegree}{#1}}
\newcommand{\teacher}[1]{\renewcommand{\theteacher}{#1}}

\newcommand{\categorynumber}[1]{\renewcommand{\thecategorynumber}{\texttt{#1}}}
\newcommand{\udc}[1]{\renewcommand{\theudc}{\texttt{#1}}}
\newcommand{\studentid}[1]{\renewcommand{\thestudentid}{\texttt{#1}}}

\newcommand{\info}[1]{\renewcommand{\theinfo}{#1}}
\newcommand{\gender}[1]{\renewcommand{\thegender}{#1}}
\newcommand{\group}[1]{\renewcommand{\thegroup}{#1}}
\newcommand{\birthday}[1]{\renewcommand{\thebirthday}{\texttt{#1}}}
\newcommand{\email}[1]{\renewcommand{\theemail}{\texttt{#1}}}

\newcommand{\makecover}{
    \thispagestyle{empty}
    \pdfbookmark{封面}{cover}

    {\noindent\bfseries\zihao{-4}\songti
        分类号\chinesecolon \thecategorynumber \hspace{2.7in} UDC\chinesecolon \theudc \\
        密\chinesespace 级\chinesecolon 公开 \hspace{3in} 编\chinesespace 号\chinesecolon \thestudentid
    } \\ [100bp]

    \begin{center}
        {\bfseries\zihao{2}\ziju{0.5}\heiti 成都信息工程大学 \\[0.5ex]
        学位论文} \\[88bp]
        {\bfseries\zihao{3}\songti \thetitle} \\[100bp]

        \begin{tabular}{>{\bfseries\zihao{-3}\kaishu}l
            >{\centering\arraybackslash\bfseries\zihao{-3}\kaishu}p{3.0in}}
            {\ziju{0.5}论文作者姓名：} & \theauthor \\ \cline{2-2}
            {\ziju{0.5}申请学位专业：} & \themajor \\ \cline{2-2}
            {\ziju{0.5}申请学位类别：} & \thedegree \\ \cline{2-2}
            指导教师姓名（职称）： & \theteacher \\ \cline{2-2}
            {\ziju{0.5}论文提交日期：} & \thedate \\ \cline{2-2}
        \end{tabular}
    \end{center}
}

\newenvironment{chineseabstract}{
    \thispagestyle{empty}
    \pdfbookmark{中文摘要}{chineseabstract}

    \begin{center}
        {\zihao{3}\bfseries \thetitle \\
        摘 \chinesespace 要}
    \end{center}
}{}
\newcommand{\chinesekeywords}[1]{
    {\bfseries 关键字 \chinesecolon} #1
}

\newenvironment{englishabstract}[1]{
    \thispagestyle{empty}
    \pdfbookmark{英文摘要}{englishabstract}
    
    \begin{center}
        {\bfseries\zihao{3} #1 \\
        Abstract}
    \end{center}
}{}
\newcommand{\englishkeywords}[1]{
    {\bfseries Key words:} #1
}

\renewcommand{\contentsname}{}
\cftsetindents{subsection}{1em}{2em}
\cftsetindents{subsubsection}{2em}{3em}
\renewcommand{\cftsecnumwidth}{1em}
\renewcommand{\cftsecfont}{\songti}
\renewcommand{\cftsubsecfont}{\songti}
\renewcommand{\cftsubsubsecfont}{\songti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\newcommand{\thesistableofcontents}{
    \thispagestyle{empty}
    \pdfbookmark{目录}{toc}

    \begin{center}
        {\bfseries\zihao{3}\songti 目 \chinesespace 录} \\
    \end{center}

    \begin{flushright}
        {\zihao{-4}\songti 论文总页数 \chinesecolon \pageref{LastPage} 页}
    \end{flushright}

    \tableofcontents

    \thispagestyle{empty}
    \setcounter{page}{0}
    \clearpage
}

\renewcommand{\thetable}{\arabic{section}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}

\captionsetup{format=hang}
\captionsetup[table]{belowskip=0pt}
\captionsetup[figure]{aboveskip=0pt,belowskip=0pt}

\makeatletter
\AtBeginEnvironment{figure}{
  \def\@floatboxreset{\centering\zihao{5}\songti}
}
\makeatother

\makeatletter
\AtBeginEnvironment{table}{
  \def\@floatboxreset{\centering\zihao{5}\songti}
}
\makeatother
\AtBeginEnvironment{tabular}{\zihao{-5}\songti}

\makeatletter
\renewcommand{\p@subfigure}{\arabic{section}-\arabic{figure}}
\makeatother

\graphicspath{{./pic/}}


\newcommand{\thesissummary}{
    \addtocontents{toc}{}
    \setcounter{section}{0}

    \begin{center}
        \section*{结 \hspace{1em} 语}
    \end{center}

    \addcontentsline{toc}{section}{结 \hspace{1em} 语}
    \hypersetup{bookmarksdepth=0} 
}

\newenvironment{thesisacknowlegement}[1]{
    \addtocontents{toc}{}
    
    \begin{center}
        \section*{致 \hspace{1em} 谢}
    \end{center}

    \addcontentsline{toc}{section}{致 \hspace{1em} 谢}
    \hypersetup{bookmarksdepth=0} 
}{
    \vspace{3cm}
    \noindent
    作者简介\chinesecolon \theinfo

    \noindent
    姓 \hspace{1.5em} 名\chinesecolon \theauthor \hfill 性别 \chinesecolon \thegender 

    \noindent
    出生年月\chinesecolon \thebirthday \hfill 民族 \chinesecolon \thegroup 

    \noindent
    E-mail: \theemail
}

\newenvironment{thesisstatement}{
    \addtocontents{toc}{}
    \renewcommand{\theenumi}{\arabic{enumi}}
    \renewcommand{\labelenumi}{（\theenumi）}

    \begin{center}
        \section*{声 \hspace{1em} 明}
    \end{center}

        本论文的工作是20  年  月至20  年  月在成都信息工程大学学院完成的。文中除了特别加以标注地方外，不包含他人已经发表或撰写过的研究成果，也不包含为获得成都信息工程大学或其他教学机构的学位或证书而使用过的材料。

        关于学位论文使用权和研究成果知识产权的说明：

        本人完全了解成都信息工程大学有关保管使用学位论文的规定，其中包括：

        \begin{enumerate}[itemindent=4em]
            \item 学校有权保管并向有关部门递交学位论文的原件与复印件。
            \item 学校可以采用影印、缩印或其他复制方式保存学位论文。
            \item 学校可以学术交流为目的复制、赠送和交换学位论文。
            \item 学校可允许学位论文被查阅或借阅。
            \item 学校可以公布学位论文的全部或部分内容（保密学位论文在解密后遵守此规定）。
        \end{enumerate}

        除非另有科研合同和其他法律文书的制约，本论文的科研成果属于成都信息工程大学。

        特此声明！

        \vspace{3cm}
        {\hfill 作者签名：\hspace{2cm}}

        {\hfill 2019 年 06 月 \chinesespace 日}

    \addcontentsline{toc}{section}{声 \hspace{1em} 明}
    \hypersetup{bookmarksdepth=0} 
}{}