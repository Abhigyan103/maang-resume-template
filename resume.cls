%--------------------------------------------------
% Resume Class File
% Author: Abhigyan Prakash Singh
% License: MIT
%--------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2025/08/15 Custom Resume Class]

%-----------------------------
% Base class and page geometry
%-----------------------------
\LoadClass[10pt,a4paper]{article}
\RequirePackage[top=0.5in, bottom=0.5in, left=0.5in, right=0.5in]{geometry}

%-----------------------------
% Required packages
%-----------------------------
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{helvet}
\RequirePackage{titlesec}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\RequirePackage{tabularx}
\RequirePackage[T1]{fontenc}
\RequirePackage{ifthen}

%-----------------------------
% Page style
%-----------------------------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\familydefault}{\rmdefault}

\urlstyle{same}
\raggedright
\raggedbottom
\setlength{\tabcolsep}{0in}

%-----------------------------
% Highlight Color
%-----------------------------
\definecolor{highlightColor}{named}{NavyBlue}
%-----------------------------
% Section formatting
%-----------------------------
\titleformat{\section}
  {\color{highlightColor}\scshape\raggedright\large}
  {}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

%-----------------------------
% Display Name command
%-----------------------------
\newcommand{\displayName}[1]{\textbf{\color{highlightColor}\scshape\LARGE#1}}

%-----------------------------
% Resume item commands
%-----------------------------

\newcommand{\itemDesc}[1]{%
  \item\small{#1 \vspace{-3pt}}%
}


\newcommand{\itemSub}[2]{%
  \itemDesc{\textbf{#1:} #2}\vspace{-4pt}%
}

%-----------------------------
% Resume subheading
%-----------------------------

\newcommand{\entry}[4]{%
  \item
  \begin{tabularx}{\textwidth}{X r}
    	\textbf{#1} & \textit{#2} \\
    	\textit{\small #3} & \textit{\small #4} \\
  \end{tabularx}\vspace{-5pt}%
}

%-----------------------------
% List environments
%-----------------------------

\newcommand{\entryListStart}{\begin{itemize}[leftmargin=0pt,label={}]}
\newcommand{\entryListEnd}{\end{itemize}}

\newcommand{\bulletListStart}{\begin{itemize}[leftmargin=*]}
\newcommand{\bulletListEnd}{\end{itemize}}

\newcommand{\itemListStart}{\begin{itemize}}
\newcommand{\itemListEnd}{\end{itemize}\vspace{-4pt}}

%-----------------------------
% Skills table
%-----------------------------

\newcommand{\skillsStart}{\begin{tabular}{p{2in} p{4.5in}}}
\newcommand{\skillsEnd}{\end{tabular}\vspace{-4pt}}

\newcommand{\skillItem}[2]{%
  	\textbf{#1} & \small #2 \\%
}

%-----------------------------
% Custom headers
%-----------------------------

% Generic header item command
\newcommand{\headerItem}[4]{%
  \href{#1}{\color{highlightColor}%
    \ifthenelse{\equal{#4}{link}}{\underline{#2 #3}}{#2 #3}%
  }%
}

% Prints multiple header items, separated by | only if they are links
\newcommand{\printHeaderItems}[2]{%
  \def\temp{}%
  \renewcommand{\do}[3]{%
    \ifx\temp\empty
      \headerItem{##1}{##2}{##3}{#2}%
    \else
      \ifthenelse{\equal{#2}{link}}
        {\,{\textbar}\ \,\headerItem{##1}{##2}{##3}{#2}}
        {\quad\headerItem{##1}{##2}{##3}{#2}}%
    \fi
    \gdef\temp{notempty}%
  }%
  #1%
}

% Backwards compatibility
\newcommand{\headerLink}[3]{\headerItem{#1}{#2}{#3}{link}}
\newcommand{\printHeaderLinks}[1]{\printHeaderItems{#1}{link}}
\newcommand{\headerData}[3]{\headerItem{#1}{#2}{#3}{plain}}
\newcommand{\printHeaderDatas}[1]{\printHeaderItems{#1}{plain}}

%-----------------------------
% Symbols
%-----------------------------
\renewcommand{\labelitemii}{$\circ$}
