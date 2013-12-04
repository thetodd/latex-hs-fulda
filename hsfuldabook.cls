%
% Vorlage für Bachelor-Thesis an der Hochschule Fulda
% Created: 2013-12-04
%

\def\fileversion{1.0}
\def\filedate{2013/12/04}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hsfuldabook}
 [\filedate\space\fileversion\space 
   Florian Schleich HS-Fulda-Design package]
   
\LoadClassWithOptions{scrbook}

\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{eso-pic}   
\RequirePackage[nouppercase,headsepline]{scrpage2}

\RequirePackage{hsfulda_colors}
\RequirePackage{hsfulda_fonts}

\def\logo{images/HSFuldaLogo.pdf}
\def\watermark{images/HSFuldaLeaf.pdf}

\newcommand{\setlogo}[1] {
    \def\logo{#1}
}

\newcommand{\setwatermark}[1] {
    \def\watermark{#1}
}

\pagestyle{scrheadings}
\clearscrheadfoot
\automark[section]{chapter}
\ohead{\headmark}
\ihead{\@subject}
\ofoot[\pagemark]{\pagemark}

\newcommand\BackgroundImLeaf{
    \put(90,100){
    \parbox[b][\paperheight]{\paperwidth}{%
    \vfill
    \centering
    \includegraphics[width=10cm,keepaspectratio]{\watermark}%
    \vfill
}}}

\renewcommand{\maketitle}{
    \begin{titlepage}
    \begin{tikzpicture}[remember picture,overlay]
        \node[yshift=-2cm, xshift=2cm] at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \fill[fill=fulda_green] (0,0) rectangle (\paperwidth-4cm,3mm);
                \fill[fill=black] (0,-2mm) rectangle (\paperwidth-4cm,-2.4mm);
            \end{tikzpicture}
        };
    \end{tikzpicture}
    \noindent
    \parbox{\textwidth}{
        %\hspace{-0.6cm}
        \fontsize{24.88pt}{35pt}\selectfont
        \color{fulda_title}
        \@title
    }
    \parbox{\textwidth}{
        \vspace{1cm}
        \hspace{0.3cm}
        \fontsize{20.74pt}{10pt}\selectfont
        \color{fulda_subtitle}
        \@subtitle
    }
    
    \AddToShipoutPicture*{\BackgroundImLeaf}
    
    \parbox{\textwidth}{
        \vspace{2.5cm}
        \hspace{0.4cm}
        \fontsize{14pt}{16pt}\selectfont
        
        \@author\\
        \\
        \textbf{\@date}
    }
    
    \begin{tikzpicture}[remember picture,overlay]
        \node[yshift=-15cm, xshift=2cm] at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \fill[fill=fulda_lightgreen] (0,0) rectangle (\paperwidth-4cm,-12cm);
            \end{tikzpicture}
        };
    \end{tikzpicture}
    
    \parbox{\textwidth}{
        \vspace{6cm}
        \raggedleft
        \includegraphics[width=10cm,height=3cm,keepaspectratio]{\logo}
    }
    \clearpage
    \@uppertitleback
    \end{titlepage}
}
