\ProvidesClass{thesis-cuit}

\LoadClass[12pt, openany, oneside]{ctexbook}

\usepackage{ifplatform}
\ifmacosx
    \setCJKmainfont[AutoFakeBold=true]{Songti SC}
    \newfontfamily{\kai}{Kaiti SC}
    \newfontfamily{\hei}{Heiti SC}
    \newfontfamily{\song}{Songti SC}
\else
    \newfontfamily{\kai}{Kaiti SC}
    \newfontfamily{\hei}{Heiti SC}
    \newfontfamily{\song}{Songti SC}
\fi

\RequirePackage[
    left=3.17cm, right=3.17cm, 
    top=2.54cm, bottom=2.54cm]{geometry}

