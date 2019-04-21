% TODO
% 1. 行距
% 2. pdfbookmark 错乱


\ProvidesClass{thesis-cuit}

\LoadClass{ctexart}

\RequirePackage{ifxetex}
\RequireXeTeX

\setmainfont{Times New Roman}

\RequirePackage[
    left=3.17cm, right=3.17cm,
    top=2.54cm, bottom=2.54cm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage{lastpage}
\RequirePackage{tocloft}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{array}
\RequirePackage{layout}
\RequirePackage[hyperfootnotes=false,
bookmarksnumbered,
bookmarksdepth=4
]{hyperref}

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

\renewcommand{\title}[1]{\renewcommand{\thetitle}{#1}}
\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}
\renewcommand{\date}[1]{\renewcommand{\thedate}{#1}}
\newcommand{\major}[1]{\renewcommand{\themajor}{#1}}
\newcommand{\degree}[1]{\renewcommand{\thedegree}{#1}}
\newcommand{\teacher}[1]{\renewcommand{\theteacher}{#1}}
\newcommand{\categorynumber}[1]{\renewcommand{\thecategorynumber}{\texttt{#1}}}
\newcommand{\udc}[1]{\renewcommand{\theudc}{\texttt{#1}}}
\newcommand{\studentid}[1]{\renewcommand{\thestudentid}{\texttt{#1}}}

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