\ProvidesClass{thesis-cuit}

\LoadClass[12pt, openany, oneside]{ctexbook}

\usepackage{ifplatform}
\ifmacosx
    \setmainfont{Times New Roman}
    \setCJKmainfont[AutoFakeBold=true]{Songti SC}
    \newfontfamily{\kai}{Kaiti SC}
    \newfontfamily{\hei}{Heiti SC}
    \newfontfamily{\song}{Songti SC}
\else
    \setmainfont{Times New Roman}
    \newfontfamily{\kai}{Kaiti SC}
    \newfontfamily{\hei}{Heiti SC}
    \newfontfamily{\song}{Songti SC}
\fi

\RequirePackage[
    left=3.17cm, right=3.17cm,
    top=2.54cm, bottom=2.54cm]{geometry}
\RequirePackage{indentfirst}             % 段首缩进

\linespread{2} % 行间距

\RequirePackage{array}

\RequirePackage[hyperfootnotes=false,
bookmarksnumbered,
bookmarksdepth=4
]{hyperref}

\hypersetup{
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    urlcolor=black
}

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
%    \textbf{
        \noindent
        \textbf{{\zihao{-4}\song
            分类号\chinesecolon \thecategorynumber \hspace{2.7in} UDC\chinesecolon \theudc \\
            密\chinesespace 级\chinesecolon 公开 \hspace{3in} 编\chinesespace 号\chinesecolon \thestudentid
        }} \\ [100bp]

        \begin{center}

            \textbf{{\zihao{2}\ziju{0.5}\hei 成都信息工程大学 \\
            学位论文} \\[64bp]
            {\zihao{3}\song \thetitle}} \\[100bp]

            \textbf{
            \begin{tabular}{>{\zihao{-3}\kai}l
                >{\centering\arraybackslash\zihao{-3}\kai}p{3.0in}}
                {\ziju{0.5}论文作者姓名：} & \theauthor \\ \cline{2-2}
                {\ziju{0.5}申请学位专业：} & \themajor \\ \cline{2-2}
                {\ziju{0.5}申请学位类别：} & \thedegree \\ \cline{2-2}
                指导教师姓名（职称）： & \theteacher \\ \cline{2-2}
                {\ziju{0.5}论文提交日期：} & \thedate \\ \cline{2-2}
            \end{tabular}}

        \end{center}
%    }
}

