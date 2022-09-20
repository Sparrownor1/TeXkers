\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[Homework]
\LoadClass[titlepage]{article}

% Spacing
\RequirePackage[onehalfspacing]{setspace}
\newcommand{\hmargin}{1.5cm}
\newcommand{\vmargin}{3cm}
\setlength{\parindent}{0in}
\setlength{\parskip}{10pt}

% Setup: Page
\usepackage[hmargin=\hmargin, vmargin=\vmargin]{geometry}

% Parameters
\RequirePackage{xkeyval}

\def\myname{Sachit Lumba}
\def\andrewid{slumba}
\def\thisassignment{Homework}
\def\thisclass{Class}

\define@key{homework.cls}{myname}[Sachit Lumba]{
    \def\myname{#1}
}
\define@key{homework.cls}{myandrewid}[slumba]{
    \def\andrewid{#1}
}
\define@key{homework.cls}{thisassignment}[Homework]{
    \def\thisassignment{#1}
}
\define@key{homework.cls}{thisclass}[Class]{
    \def\thisclass{#1}
}

\ExecuteOptionsX{myname, myandrewid, thisassignment, thisclass}
\ProcessOptionsX

% Header
\RequirePackage{fancyhdr}
\AtBeginDocument{
    \pagestyle{fancy}
    \fancyhf{}
    \rhead{\thisassignment}
    \lhead{\thisclass}
    \rfoot{Page \thepage}

    \begin{titlepage}
        \title{\textbf{\thisassignment}}
        \date{\today}
        \author{\myname}
    \end{titlepage}
}

% 
% Other Packages
% 
\RequirePackage{amsmath}
\RequirePackage{enumerate}

%
% Commands
% 

% Questions and Answers
\newcommand{\question}[1]{\section*{Question #1}}
\newcommand{\proof}[1]{\subsection*{Proof}}
\newcommand{\claim}[1]{\textbf{Claim:} #1}

% Sets
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\I}{\mathbb{I}}
\newcommand{\U}{\mathcal{U}}

% Math expressions
\newcommand{\floor}[1]{\lfloor #1 \rfloor}
\newcommand{\ceil}[1]{\ceil #1 \ceil}

% Probability
\newcommand{\E}[1]{\mathbb{E} \left[ #1 \right] }
\renewcommand{\P}[1]{\mathbf{P} \, \left\{ #1 \right\} }
\newcommand{\Var}[1]{\mathsf{Var} \left( #1 \right)}

% Phrases
\newcommand{\Wlogt}{Without loss of generality}
\newcommand{\wlogt}{without loss of generality}
\newcommand{\St}{Such that}
\newcommand{\st}{such that }
\newcommand{\Afsoc}{Assume for the sake of contradiction}

% Code
\newcommand{\code}[1]{\texttt{#1}}

% Algorithms
\RequirePackage{algpseudocode}