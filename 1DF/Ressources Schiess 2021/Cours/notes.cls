\ProvidesClass{notes}[2019/05/26 My custom notes]
\LoadClass[12pt, a4paper, twoside]{report}

\usepackage[left=0.75in,top=0.75in,right=0.5in,bottom=0.5in]{geometry}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage[utf8x]{inputenc}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{latexsym}
\usepackage{epsfig}
\usepackage{bm}
\usepackage{xspace}
\usepackage{csquotes}
\usepackage{times}
\usepackage{listings}
\usepackage[table,xcdraw]{xcolor}

\usepackage{caption}
\usepackage{titlesec}
\usepackage{hyperref}
\usepackage{tocloft}

\usepackage{multicol}

\usepackage{enumitem}

%\usepackage{linegoal}%A “dimen” that returns the space left on the line

% pour les exemples (pourrait aussi être utilisé pour tous les environnement avec des boîtes)
\usepackage{mdframed}

\usepackage{tikz}

% pour utiliser wrap figure avec des legendes
\usepackage{float}
\usepackage{wrapfig}
\restylefloat{figure}
 

\setlength{\parindent}{0em}
\setlength{\parskip}{2ex}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}

\newcommand{\itemb}[1]{\item \textbf{#1}}

\newcommand{\clearemptydoublepage}{%
	\newpage{\pagestyle{empty}\cleardoublepage}}

\newcommand{\listequationsname}{List of Equations}
\newlistof{myequations}{equ}{\listequationsname}
\newcommand{\myequations}[1]{%
\addcontentsline{equ}{myequations}{\protect\numberline{\theequation}#1}\par}
\setlength{\cftmyequationsnumwidth}{2.5em}

\newcommand{\mainsection}[3]{
    \noindent
    \begin{center}
      \framebox{
        \vbox{
          \advance\textwidth by -0.22in
          \hbox to \textwidth {{\Large \hfill Cours #1: {#2} \hfill}}
          \vspace{2mm}
          \hbox to \textwidth {\hfill Date: #3 \hfill}
          \vspace{2mm}
          \hbox to \textwidth {{\it Enseignant: Mathieu  Schiess \hfill Collège Sismondi}}
          }
        }
    \end{center}
    \vspace*{4mm}
    \addtocounter{chapter}{1}
    \setcounter{section}{0}
    \setcounter{subsection}{0}
    \setcounter{subsubsection}{0}
    \setcounter{figure}{0}
    \setcounter{equation}{0}
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#2}
    \addcontentsline{lof}{chapter}{\protect\numberline{\thechapter}#2}
    \addcontentsline{equ}{chapter}{\protect\numberline{\thechapter}#2}
    
    % mes compteurs
    \setcounter{compteurmonalgorithme}{1}
    \setcounter{compteurex}{1}
    \setcounter{compteurdef}{1}
    \setcounter{compteurmonprogramme}{1}
}

\newcommand{\putfigure}[6]{
    \begin{minipage}{#1\textwidth}
    \centering
        \includegraphics[width=#2\textwidth,height=#3\textheight]{#4}
        \captionof{figure}{#5}
        \label{#6}
    \end{minipage}
}

%----------------------------------------------
\newcounter{compteurmonalgorithme}
\setcounter{compteurmonalgorithme}{1}
\newenvironment{monalgorithme}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=black, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.98\linewidth}
				{\bf Algorithme \thechapter.\thecompteurmonalgorithme\;:}
				
				\vspace{2mm}\hspace{7.5mm}
				\begin{minipage}{0.93\linewidth}
				}
				{                		
				\end{minipage}
				\stepcounter{compteurmonalgorithme}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}

%------------------------------------------------
%---- Exemple : en encadré sur fond blanc ----
%------------------------------------------------
\newcounter{compteurex}
\setcounter{compteurex}{1}
\newenvironment{myexample}{
	\begin{center}
	\vspace{-3mm}
	\begin{minipage}{1\linewidth}
		\vspace{2mm}
		{\textsl {\underline {Exemple \thechapter.\thecompteurex}}}
		
		\vspace{2mm}\hspace{2.5mm}
		\begin{minipage}{1\linewidth}
			\begin{mdframed}[topline=false,rightline=false,bottomline=false]
}
{
			\end{mdframed}
		\end{minipage}
		\stepcounter{compteurex}
	\end{minipage}
	\end{center}
}
\newenvironment{myexamples}{
	\begin{center}
		\vspace{-3mm}
		\begin{minipage}{1\linewidth}
			\vspace{2mm}
			{\textsl {\underline {Exemples \thechapter.\thecompteurex}}}
			
			\vspace{2mm}\hspace{2.5mm}
			\begin{minipage}{1\linewidth}%\slshape
				\begin{mdframed}[topline=false,rightline=false,bottomline=false]
					\begin{enumerate}[leftmargin=*]	\setlength{\itemsep}{1mm}
				}
				{
					\end{enumerate}
				\end{mdframed}
			\end{minipage}
			\stepcounter{compteurex}
		\end{minipage}
	\end{center}
}

%------------------------------------------------
%---- Rappel : en encadré sur fond blanc ----
%------------------------------------------------
\newenvironment{myrappel}{
	\begin{center}
		\vspace{-3mm}
		\begin{minipage}{1\linewidth}
			\vspace{2mm}
			{\textsl {\textbf{Rappel}}}
			
			\vspace{2mm}\hspace{2.5mm}
			\begin{minipage}{1\linewidth}
				\begin{mdframed}[topline=false,rightline=false,bottomline=false]
				}
				{
				\end{mdframed}
			\end{minipage}
		\end{minipage}
	\end{center}
}

%------------------------------------------------
%---- Remarque : en encadré sur fond blanc ----
%------------------------------------------------
\newcounter{compteurrem}
\setcounter{compteurrem}{1}
\newenvironment{myremarque}{
	\begin{center}
		\vspace{-3mm}
		\begin{minipage}{1\linewidth}
			\vspace{2mm}
			{\textsl {\underline {Remarque \thechapter.\thecompteurex}}}
			
			\vspace{2mm}\hspace{2.5mm}
			\begin{minipage}{1\linewidth}
				\begin{mdframed}[topline=false,rightline=false,bottomline=false]
				}
				{
				\end{mdframed}
			\end{minipage}
			\stepcounter{compteurrem}
		\end{minipage}
	\end{center}
}
\newenvironment{myremarques}{
	\begin{center}
		\vspace{-3mm}
		\begin{minipage}{1\linewidth}
			\vspace{2mm}
			{\textsl {\underline {Remarques \thechapter.\thecompteurex}}}
			
			\vspace{2mm}\hspace{2.5mm}
			\begin{minipage}{1\linewidth}%\slshape
				\begin{mdframed}[topline=false,rightline=false,bottomline=false]
					\begin{enumerate}[leftmargin=*]	\setlength{\itemsep}{1mm}
					}
					{
					\end{enumerate}
				\end{mdframed}
			\end{minipage}
			\stepcounter{compteurrem}
		\end{minipage}
	\end{center}
}


%------------------------------------------------
%---- Définition : en encadré sur fond blanc ----
%------------------------------------------------
\newcounter{compteurdef}
\setcounter{compteurdef}{1}
\newenvironment{mydefinition}
{
	\begin{center}%
	\begin{tikzpicture}%
		\node[rectangle, draw=black, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                    
		\begin{minipage}{0.98\linewidth}
			{\bf {\underline {Définition \thechapter.\thecompteurdef}}}
			
			\vspace{2mm}\hspace{4.5mm}
			\begin{minipage}{0.93\linewidth}
			}
			{                		
			\end{minipage}
			\stepcounter{compteurdef}
		\end{minipage}\egroup;%
	\end{tikzpicture}%
\end{center}%
}

\newenvironment{mydefinitions}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=black, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                    
			\begin{minipage}{0.98\linewidth}
				{\bf {\underline {Définitions \thechapter.\thecompteurdef}}}
				
				\vspace{3mm}\hspace{4.5mm}
				\begin{minipage}{0.93\linewidth}\slshape
					\begin{itemize}\setlength{\itemsep}{1mm}
					}
					{                		
				\end{itemize}\end{minipage}
				\stepcounter{compteurdef}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}

%----------------------------------------------
\newcounter{compteurmonprogramme}
\setcounter{compteurmonprogramme}{1}
\newenvironment{monprogramme}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=black, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.98\linewidth}
				{\bf Programme \thechapter.\thecompteurmonprogramme\;:}
				
				\vspace{2mm}\hspace{7.5mm}
				\begin{minipage}{0.93\linewidth}
				}
				{                		
				\end{minipage}
				\stepcounter{compteurmonprogramme}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}

%-------------------------------------------------------------------------------
%---- Eclairage : en encadré sur fond jaune avec symbôle "ampoule" à gauche ----
%-------------------------------------------------------------------------------
\definecolor{coleclairage}{RGB}{255 , 221 , 156}
\definecolor{contoureclairage}{RGB}{255 , 192 , 0}
\newenvironment{eclairage}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=contoureclairage, top color=coleclairage!50, bottom color=coleclairage!140, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.98\linewidth}
				\begin{minipage}{0.08\linewidth}\centerline{\includegraphics[scale=1]{Images/Symbole_eclairage.png}}\end{minipage}
				\begin{minipage}{0.89\linewidth}\itshape\footnotesize
				}
				{                		
				\end{minipage}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}

%-------------------------------------------------------------------------------
%---- vocabulaire : en encadré sur fond jaune avec symbôle "ampoule" à gauche ----
%-------------------------------------------------------------------------------
\definecolor{colvocabulaire}{RGB}{255 , 221 , 156}
\definecolor{contourvocabulaire}{RGB}{255 , 192 , 0}
\newenvironment{vocabulaire}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=contourvocabulaire, top color=colvocabulaire!50, bottom color=coleclairage!140, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.98\linewidth}
				\begin{minipage}{0.08\linewidth}\centerline{\includegraphics[scale=1]{Images/icon_voc.jpg}}\end{minipage}
				\begin{minipage}{0.89\linewidth}\itshape\footnotesize
				}
				{                		
				\end{minipage}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}


%-------------------------------------------------------------------------------
%---- apprendre : en encadré sur fond jaune avec symbôle "ampoule" à gauche ----
%-------------------------------------------------------------------------------
\definecolor{colapprendre}{RGB}{50,205,50}
\definecolor{contourapprendre}{RGB}{34,139,34}
\newenvironment{apprendre}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=contourapprendre, top color=colapprendre!10, bottom color=colapprendre!50, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.98\linewidth}
				\begin{minipage}{0.08\linewidth}\centerline{\includegraphics[width=30px]{Images/Symbole_learn.png}}\end{minipage}
				\begin{minipage}{0.89\linewidth}\itshape\footnotesize
				}
				{                		
				\end{minipage}
			\end{minipage}\egroup;%
		\end{tikzpicture}%
	\end{center}%
}

\definecolor{colimportant}{RGB}{247 , 189 , 164}
\definecolor{contourimportant}{RGB}{237 , 125 , 49}
\newenvironment{important}
{
	\begin{center}%
		\begin{tikzpicture}%
			\node[rectangle, draw=contourimportant, top color=colimportant!50, bottom color=colimportant!140, rounded corners=5pt, inner xsep=5pt, inner ysep=6pt, outer ysep=10pt]\bgroup                     
			\begin{minipage}{0.08\linewidth}\centerline{\includegraphics[scale=0.8]{Images/Symbole_attention.png}}\end{minipage}
			\begin{minipage}{0.89\linewidth}
			}
			{                		
			\end{minipage}\egroup;
		\end{tikzpicture}%
	\end{center}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%   LABELS activite   %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\act}{\textbf{\textsl{Activité \arabic{compteuract}}} \vspace*{1mm}\\ \addtocounter{compteuract}{1}}
\newcommand{\actnomme}[1]{{\bf Activité \arabic{compteuract} {\textsl{\small (#1)}}}\vspace*{1mm}\\  \addtocounter{compteuract}{1}}
\newcounter{compteuract}
\setcounter{compteuract}{1}
\newcommand{\getactcompteur}{{\the\numexpr \arabic{compteuract} - 1 \relax}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%   LABELS EXERCICES   %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\exo}{\textbf{\textsl{Exercice \arabic{compteurexo}}} \vspace*{1mm}\\ \addtocounter{compteurexo}{1}}
\newcommand{\exonomme}[1]{{\bf Exercice \arabic{compteurexo} {\textsl{\small (#1)}}}\vspace*{1mm}\\  \addtocounter{compteurexo}{1}}
\newcommand{\eexo}{\vspace{5mm}} % espace pour séparer les exercices
\newcounter{compteurexo}
\setcounter{compteurexo}{1}
\newcommand{\getexocompteur}{{\the\numexpr \arabic{compteurexo} - 1 \relax}}



\titleformat{\chapter}
  {\normalfont\LARGE\bfseries}{}
  {0em}{}

\titleformat{\section}
  {\normalfont\Large}{\thesection. \ }
  {0em}{}
  
\titleformat{\subsection}
  {\normalfont\large}{\thesubsection. \ }
  {0em}{}

\titleformat{\subsubsection}
  {\normalfont\normalsize \bfseries}{\thesubsubsection. \ }
  {0em}{}

\definecolor{codegreen}{rgb}{0.3,0.6,0.4}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

 
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{lightgray}, %\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}


\definecolor{ForestGreen}{RGB}{34,139,34}

\lstset{%
    language         = Python,
    backgroundcolor  = \color{backcolour},
    basicstyle       = \ttfamily, % \upshape\ttfamily,
    keywordstyle     = \bfseries\color{blue}, %\bfseries,
    stringstyle      = \color{magenta},
    commentstyle     = \color{ForestGreen},
    alsoletter = > ,
    morekeywords = {>>>,as,assert,False,None, nonlocal,True, with,yield},
    showstringspaces = false,
    numbers=left,
    stepnumber=1,
    literate={à}{{\`{a}}}1 {é}{{\'e}}1 {è}{{\`{e}}}1 {ê}{{\^{e}}}1  {ô}{{\^{o}}}1 {ç}{{\c{c}}}1 {Ç}{{\c{C}}}1,
}
\renewcommand{\lstlistingname}{Code}% Listing -> Algorithm
\renewcommand{\lstlistlistingname}{Liste des \lstlistingname s}% List of Listings -> List of Algorithms


%
\newtheorem{theorem}{Theorème}[section]
%\newtheorem{lemma}[theorem]{Lemme}
%\newtheorem{claim}[theorem]{Affirmation}
%\newtheorem{proposition}[theorem]{Proposition}
%\newtheorem{corollary}[theorem]{Corollaire}
%\newtheorem{fact}[theorem]{Fact}
%\newtheorem{example}[theorem]{Exemple}
%\newtheorem{notation}[theorem]{Notation}
%\newtheorem{observation}[theorem]{Observation}
%\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem*{question}{Question}

%\theoremstyle{definition}
%\newtheorem{definition}[theorem]{Définition}


%\theoremstyle{remark}
%\newtheorem{remark}[theorem]{Remark}
\theoremstyle{plain}
\newcommand{\ignore}[1]{}

% \renewcommand{\Pr}{{\bf Pr}}
% \newcommand{\Prx}{\mathop{\bf Pr\/}}
% \newcommand{\E}{{\bf E}}
% \newcommand{\Ex}{\mathop{\bf E\/}}
% \newcommand{\Var}{{\bf Var}}
% \newcommand{\Varx}{\mathop{\bf Var\/}}
% \newcommand{\Cov}{{\bf Cov}}
% \newcommand{\Covx}{\mathop{\bf Cov\/}}


% shortcuts for symbol names that are too long to type
\newcommand{\eps}{\epsilon}
\newcommand{\lam}{\lambda}
\renewcommand{\l}{\ell}
\newcommand{\la}{\langle}
\newcommand{\ra}{\rangle}
\newcommand{\wh}{\widehat}
\newcommand{\wt}{\widetilde}

% % "blackboard-fonted" letters for the reals, naturals etc.
% \newcommand{\R}{\mathbb R}
% \newcommand{\N}{\mathbb N}
% \newcommand{\Z}{\mathbb Z}
% \newcommand{\F}{\mathbb F}
% \newcommand{\Q}{\mathbb Q}
% \newcommand{\C}{\mathbb C}

% % operators that should be typeset in Roman font
% \newcommand{\poly}{\mathrm{poly}}
% \newcommand{\polylog}{\mathrm{polylog}}
% \newcommand{\sgn}{\mathrm{sgn}}
% \newcommand{\avg}{\mathop{\mathrm{avg}}}
% \newcommand{\val}{{\mathrm{val}}}

% % complexity classes
% \renewcommand{\P}{\mathrm{P}}
% \newcommand{\NP}{\mathrm{NP}}
% \newcommand{\BPP}{\mathrm{BPP}}
% \newcommand{\DTIME}{\mathrm{DTIME}}
% \newcommand{\ZPTIME}{\mathrm{ZPTIME}}
% \newcommand{\BPTIME}{\mathrm{BPTIME}}
% \newcommand{\NTIME}{\mathrm{NTIME}}

% values associated to optimization algorithm instances
%\newcommand{\Opt}{{\mathsf{Opt}}}
%\newcommand{\Alg}{{\mathsf{Alg}}}
%\newcommand{\Lp}{{\mathsf{Lp}}}
%\newcommand{\Sdp}{{\mathsf{Sdp}}}
%\newcommand{\Exp}{{\mathsf{Exp}}}

% if you think the sum and product signs are too big in your math mode; x convention
% as in the probability operators
%\newcommand{\littlesum}{{\textstyle \sum}}
%\newcommand{\littlesumx}{\mathop{{\textstyle \sum}}}
%\newcommand{\littleprod}{{\textstyle \prod}}
%\newcommand{\littleprodx}{\mathop{{\textstyle \prod}}}

% horizontal line across the page
\newcommand{\horz}{
\vspace{-.4in}
\begin{center}
\begin{tabular}{p{\textwidth}}\\
\hline
\end{tabular}
\end{center}
}

% calligraphic letters
%\newcommand{\calA}{{\cal A}}
%\newcommand{\calB}{{\cal B}}
%\newcommand{\calC}{{\cal C}}
%\newcommand{\calD}{{\cal D}}
%\newcommand{\calE}{{\cal E}}
%\newcommand{\calF}{{\cal F}}
%\newcommand{\calG}{{\cal G}}
%\newcommand{\calH}{{\cal H}}
%\newcommand{\calI}{{\cal I}}
%\newcommand{\calJ}{{\cal J}}
%\newcommand{\calK}{{\cal K}}
%\newcommand{\calL}{{\cal L}}
%\newcommand{\calM}{{\cal M}}
%\newcommand{\calN}{{\cal N}}
%\newcommand{\calO}{{\cal O}}
%\newcommand{\calP}{{\cal P}}
%\newcommand{\calQ}{{\cal Q}}
%\newcommand{\calR}{{\cal R}}
%\newcommand{\calS}{{\cal S}}
%\newcommand{\calT}{{\cal T}}
%\newcommand{\calU}{{\cal U}}
%\newcommand{\calV}{{\cal V}}
%\newcommand{\calW}{{\cal W}}
%\newcommand{\calX}{{\cal X}}
%\newcommand{\calY}{{\cal Y}}
%\newcommand{\calZ}{{\cal Z}}

% bold letters (useful for random variables)
%\renewcommand{\a}{{\boldsymbol a}}
%\renewcommand{\b}{{\boldsymbol b}}
%\renewcommand{\c}{{\boldsymbol c}}
%\renewcommand{\d}{{\boldsymbol d}}
%\newcommand{\e}{{\boldsymbol e}}
%\newcommand{\f}{{\boldsymbol f}}
%\newcommand{\g}{{\boldsymbol g}}
%\newcommand{\h}{{\boldsymbol h}}
%\renewcommand{\i}{{\boldsymbol i}}
%\renewcommand{\j}{{\boldsymbol j}}
%\renewcommand{\k}{{\boldsymbol k}}
%\newcommand{\m}{{\boldsymbol m}}
%\newcommand{\n}{{\boldsymbol n}}
%\renewcommand{\o}{{\boldsymbol o}}
%\newcommand{\p}{{\boldsymbol p}}
%\newcommand{\q}{{\boldsymbol q}}
%\renewcommand{\r}{{\boldsymbol r}}
%\newcommand{\s}{{\boldsymbol s}}
%\renewcommand{\t}{{\boldsymbol t}}
%\renewcommand{\u}{{\boldsymbol u}}
%\renewcommand{\v}{{\boldsymbol v}}
%\newcommand{\w}{{\boldsymbol w}}
%\newcommand{\x}{{\boldsymbol x}}
%\newcommand{\y}{{\boldsymbol y}}
%\newcommand{\z}{{\boldsymbol z}}
%\newcommand{\A}{{\boldsymbol A}}
%\newcommand{\B}{{\boldsymbol B}}
%\newcommand{\C}{{\boldsymbol C}}
%\newcommand{\D}{{\boldsymbol D}}
%\newcommand{\E}{{\boldsymbol E}}
%\newcommand{\F}{{\boldsymbol F}}
%\newcommand{\G}{{\boldsymbol G}}
%\renewcommand{\H}{{\boldsymbol H}}
%\newcommand{\I}{{\boldsymbol I}}
%\newcommand{\J}{{\boldsymbol J}}
%\newcommand{\K}{{\boldsymbol K}}
%\renewcommand{\L}{{\boldsymbol L}}
%\newcommand{\M}{{\boldsymbol M}}
%\renewcommand{\O}{{\boldsymbol O}}
%\renewcommand{\P}{{\mathbb{P}}}
%\newcommand{\Q}{{\boldsymbol Q}}
%\newcommand{\R}{{\boldsymbol R}}
%\renewcommand{\S}{{\boldsymbol S}}
%\newcommand{\T}{{\boldsymbol T}}
%\newcommand{\U}{{\boldsymbol U}}
%\newcommand{\V}{{\boldsymbol V}}
%\newcommand{\W}{{\boldsymbol W}}
%\newcommand{\X}{{\boldsymbol X}}
%\newcommand{\Y}{{\boldsymbol Y}}
%\newcommand{\Z}{{\boldsymbol Z}}



%% useful for Fourier analysis
%\newcommand{\bits}{\{-1,1\}}
%\newcommand{\bitsn}{\{-1,1\}^n}
%\newcommand{\bn}{\bitsn}
%\newcommand{\isafunc}{{: \bitsn \rightarrow \bits}}
%\newcommand{\fisafunc}{{f : \bitsn \rightarrow \bits}}


\renewcommand{\familydefault}{\sfdefault}% police sans serif

