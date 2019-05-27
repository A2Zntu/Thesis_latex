% Author: Keng-Chu Ku
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2017/06/10 NTU thesis template]
\LoadClass[a4paper,12pt,oneside]{book}

% Required packages
\RequirePackage[top=3cm,bottom=2cm,left=3cm,right=3cm]{geometry}
\RequirePackage[pages=some,color=black]{background}
\RequirePackage{xeCJK,setspace}

% Font settings
\setmainfont{Times New Roman}
\setCJKmainfont[AutoFakeBold]{標楷體}
\defaultfontfeatures{Mapping=tex-text}

% Declarations
\newcommand{\university}[2]{\gdef\@universityen{#1}\gdef\@universityzh{#2}}
\newcommand{\college}[2]{\gdef\@collegeen{#1}\gdef\@collegezh{#2}}
\newcommand{\institute}[2]{\gdef\@instituteen{#1}\gdef\@institutezh{#2}}
\newcommand{\thetype}[2]{\gdef\@thetypeen{#1}\gdef\@thetypezh{#2}}
\newcommand{\thetitle}[2]{\gdef\@thetitleen{#1}\gdef\@thetitlezh{#2}}
\newcommand{\theauthor}[2]{\gdef\@theauthoren{#1}\gdef\@theauthorzh{#2}}
\newcommand{\advisorA}[2]{\gdef\@advisorAen{#1}\gdef\@advisorAzh{#2}}
\newcommand{\advisorB}[2]{\gdef\@advisorBen{#1}\gdef\@advisorBzh{#2}}
\newcommand{\theyear}[2]{\gdef\@theyearen{#1}\gdef\@theyearzh{#2}}
\newcommand{\themonth}[2]{\gdef\@themonthen{#1}\gdef\@themonthzh{#2}}
\newcommand{\thedoi}[1]{\gdef\@thedoi{#1}}

\newcommand{\makecover}{{
    \newpage\thispagestyle{empty}
    \onehalfspacing\centering
    \fontsize{18}{27}\selectfont
    \@universityzh\@collegezh\@institutezh\\
    \@thetypezh\\
    \fontsize{14}{21}\selectfont
    \@instituteen\\
    \@collegeen\\
    \fontsize{16}{24}\selectfont
    \@universityen\\
    \@thetypeen\\
    \fontsize{18}{27}\selectfont
    \vfill
    \@thetitlezh\\
    \@thetitleen\\
    \vfill
    \@theauthorzh\\
    \@theauthoren\\
    \vfill
    指導教授：\@advisorAzh\\
    Advisors: \@advisorAen\\
    \vfill
    中華民國 \@theyearzh 年 \@themonthzh 月\\
    \@themonthen, \@theyearen\\
}}
\newcommand{\makeside}{{
    \newpage\thispagestyle{empty}
    \singlespacing\centering
    \fontsize{12}{12}\selectfont
    \parbox{12pt}{\@institutezh}
    \parbox{12pt}{\@universityzh}\\
    \vfill
    \parbox{12pt}{\@thetypezh}\\
    \vfill
    \fontsize{14}{14}\selectfont
    \parbox{14pt}{\@thetitlezh}\\
    \vfill
    \parbox{14pt}{\@theauthorzh　撰}\\
    \vfill
    \@theyearzh\\
    \@themonthzh\\
}}
\newcommand{\makecert}{{
    \newpage\thispagestyle{empty}
    \backgroundsetup{
        contents={\includegraphics{cert}},
        placement=top,
        scale=1.0,
        opacity=1.0,
    }
    \BgMaterial
}}
\DeclareOption{mark}{
    \AddEverypageHook{
        \backgroundsetup{
            contents={\includegraphics{mark}},
            placement=top,
            scale=0.5,
            opacity=0.5,
            hshift=12.4cm,
            vshift=-5.0cm,
        }
        \BgMaterial
    }
}
\DeclareOption{doi}{
    \AddEverypageHook{
        \backgroundsetup{
            contents={\@thedoi},
            placement=bottom,
            scale=1.0,
            opacity=1.0,
            hshift=7.0cm,
            vshift=1.0cm,
        }
        \BgMaterial
    }
}

\ProcessOptions\relax
\pagestyle{plain}
\input{ntuvars}