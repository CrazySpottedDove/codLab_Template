\ProvidesClass{codLab}
\LoadClass[a4paper]{ctexart}
\RequirePackage{geometry}
\geometry{left=3cm,right=3cm}
\RequirePackage{graphicx}
\graphicspath{{../titlepage},{./titlepage}}
\RequirePackage{amsmath}
\RequirePackage{tabularray}
\pagestyle{empty}

\NewDocumentCommand{\listbox}{mO{20em}mO{4ex}}{
	\mbox{#1}%
	\begin{minipage}[t][2ex][t]{#2}
		\centering
		\hspace{0pt}#3\\[-15pt]
		\rule{\linewidth}{0.8pt}
	\end{minipage}%
	\\[#4]
}
\setCJKmainfont{simsun.ttc}[AutoFakeBold]

% 定义三号字体
\newcommand{\sanhao}{\fontsize{16pt}{19pt}\selectfont}

% 定义小四字体
\newcommand{\xiaosi}{\fontsize{12pt}{14pt}\selectfont}

% 定义小二字体
\newcommand{\xiaoer}{\fontsize{18pt}{22pt}\selectfont}

% 定义五号字体
\newcommand{\wuhao}{\fontsize{9pt}{11pt}\selectfont}

% 定义四号字体
\newcommand{\sihao}{\fontsize{14pt}{17pt}\selectfont}

\newcommand{\firsttitlepage}[6]{%
	\newpage
	\vspace*{-10ex}
	\begin{center}
		\includegraphics[width=0.6\linewidth]{浙江大学}
	\end{center}
	\begin{center}
		{\sanhao\bfseries 本科实验报告}
	\end{center}
	\vspace{15ex}
	\begin{center}
		\sihao
		\listbox{课程名称：}{计算机组成}
		\listbox{姓\ \ \ \ \ \ 名：}{#1}
		\listbox{学\ \ \ \ \ \ 号：}{#2}
		\listbox{学\ \ \ \ \ \ 院：}{#3}
		\listbox{专\ \ \ \ \ \ 业：}{#4}
		\listbox{任课教师：}{#5}
		\listbox{报告日期：}{#6}
	\end{center}
}
%第一标题页设置
\newcommand{\secondtitlepage}[7]{%
	\newpage
	\vspace*{-10ex}
	\begin{center}
		\bfseries
		\xiaoer
		浙江大学实验报告
	\end{center}
	\begin{center}
		\xiaosi
	\end{center}
	%\vspace{6ex}
	\begin{center}
		\sihao
		\listbox{实验项目名称：}[22.2em]{#1}[2ex]
		学生姓名：
		\begin{minipage}[t][2ex][t]{10.5em}
			\centering
			\hspace{0pt}#2\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}
		学号：
		\begin{minipage}[t][2ex][t]{10.5em}
			\centering
			\hspace{0pt}#3\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}
		\\[2ex]
		实验地点：
		\begin{minipage}[t][2ex][t]{10em}
			\centering
			\hspace{0pt}#4\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}
		实验日期：
		\begin{minipage}[t][2ex][t]{2em}
			\centering
			\hspace{0pt}#5\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}%
		年%
		\begin{minipage}[t][2ex][t]{2em}
			\centering
			\hspace{0pt}#6\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}%
		月%
		\begin{minipage}[t][2ex][t]{2em}
			\centering
			\hspace{0pt}#7\\[-15pt]
			\rule{\linewidth}{1.2pt}
		\end{minipage}%
		日
	\end{center}
}
%第二标题页设置
\RequirePackage{titlesec}
\titleformat{\section}[hang]{\xiaoer\bfseries\raggedright}{\chinese{section}、}{0.2em}{}
\titleformat{\subsection}[hang]{\sanhao\bfseries\raggedright}{\thesubsection}{0.2em}{}
\titleformat{\subsubsection}[hang]{\sihao\bfseries\raggedright}{\thesubsubsection}{1em}{}

\RequirePackage{listings}
\RequirePackage{xcolor}
\lstdefinelanguage{xdc}{%
	sensitive=true,
	basicstyle=\ttfamily\fontsize{10pt}{10pt}\selectfont, 
	backgroundcolor=\color{green!3!white}, 
	tabsize=4, 
	extendedchars=true, 
	breaklines=true, 
	morekeywords={set_property,get_ports,get_nets,create_clock},
	keywordstyle=\color{blue}, 
	morestring=[s]"",
	stringstyle=\color{red}, 
	showspaces=false, 
	showstringspaces=false, 
	morecomment=[l][\color{gray}]{\#},
}
\lstdefinelanguage{verilog}{  
	sensitive=true,  
	basicstyle=\ttfamily\fontsize{10pt}{10pt}\selectfont, 
	backgroundcolor=\color{green!3!white}, 
	tabsize=4,   
	extendedchars=true,   
	breaklines=true,   
	morekeywords=[1]{module,input,output,always,endmodule,@,posedge,negedge,if,else,case,endcase,initial,assign,generate,endgenerate},   
	keywordstyle=[1]{\color{blue}},   
	emph=[1]{begin,end},
	emphstyle=[1]{\color{brown}},
	emph=[2]{wire,reg,int,longint},
	emphstyle=[2]{\color{purple}},
	morestring=[s]"",
	stringstyle=\color{red},   
	showspaces=false,   
	showstringspaces=false,   
	morecomment=[s][\color{gray}]{/*}{*/},  
	morecomment=[l][\color{gray}]{//},  
}
\RequirePackage{float}
\NewDocumentEnvironment{singlefigure}{omO{0.7}}{\begin{figure}[H]\centering\includegraphics[width=#3\textwidth]{#2}\IfNoValueF{#1}{\vspace{-1.2ex}\caption{#1}}}{\end{figure}}
%单张图片，环境内容为注释，均居中
\endinput

