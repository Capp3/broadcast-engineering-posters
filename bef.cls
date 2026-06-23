%%
%% ============================================================================
%% Broadcast Engineering Posters
%% Document Class
%%
%% File:        bef.cls
%% Description: Document class for the Broadcast Engineering Posters framework.
%%
%% Version:     0.1.0
%% License:     MIT
%% ============================================================================
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bef}[2026/06/18 v0.1.0 Broadcast Engineering Posters]

% =============================================================================
% Base Class
% =============================================================================

\LoadClass[
    a4paper,
    11pt,
    oneside
]{article}

% =============================================================================
% Required Packages
% =============================================================================

\RequirePackage{xparse}
\RequirePackage{etoolbox}

% Load the BEP framework
\RequirePackage{bef}

% =============================================================================
% Framework Version
% =============================================================================

\newcommand{\befversion}{0.1.0}

% =============================================================================
% Internal Metadata Storage
% =============================================================================

\def\bef@series{Broadcast Engineering Fundamentals}
\def\bef@documentnumber{1}
\def\bef@revision{0.1.0}

\def\bef@title{Untitled Poster}
\def\bef@subtitle{}

\def\bef@author{Broadcast Engineering Posters}

\def\bef@keywords{}

\def\bef@posterjoke{}

\def\bef@qrlink{}

% =============================================================================
% Public Metadata Commands
% =============================================================================

\RenewDocumentCommand{\title}{m}
{
    \gdef\bef@title{#1}
}

\NewDocumentCommand{\subtitle}{m}
{
    \gdef\bef@subtitle{#1}
}

\RenewDocumentCommand{\author}{m}
{
    \gdef\bef@author{#1}
}

\NewDocumentCommand{\series}{m}
{
    \gdef\bef@series{#1}
}

\NewDocumentCommand{\documentnumber}{m}
{
    \gdef\bef@documentnumber{#1}
}

\NewDocumentCommand{\revision}{m}
{
    \gdef\bef@revision{#1}
}

\NewDocumentCommand{\posterjoke}{m}
{
    \gdef\bef@posterjoke{#1}
}

\NewDocumentCommand{\posterurl}{m}
{
    \gdef\bef@posterurl{#1}
}

\NewDocumentCommand{\keywords}{m}
{
    \gdef\bef@keywords{#1}
}

% =============================================================================
% Internal Accessors
% =============================================================================

\newcommand{\befDocumentNumber}{\bef@documentnumber}
\newcommand{\befFormattedDocumentNumber}{%
    BEF-\ifnum\bef@documentnumber<10 00\else
         \ifnum\bef@documentnumber<100 0\fi\fi
    \bef@documentnumber
}
\newcommand{\befRevision}{\bef@revision}
\newcommand{\befSeries}{\bef@series}

\newcommand{\befTitle}{\bef@title}
\newcommand{\befSubtitle}{\bef@subtitle}
\newcommand{\befAuthor}{\bef@author}

\newcommand{\befKeywords}{\bef@keywords}

\newcommand{\befPosterJoke}{\bef@posterjoke}

\newcommand{\befQRCode}{\bef@qrlink}

% =============================================================================
% Poster Generation
% =============================================================================

\NewDocumentCommand{\makeposter}{}
{
    \befMakePoster
}

% =============================================================================
% PDF Metadata Hook
% =============================================================================

\AtBeginDocument
{
    \hypersetup{
        pdftitle={\befTitle},
        pdfauthor={\befAuthor},
        pdfsubject={\befSeries},
        pdfkeywords={\befKeywords},
        pdfcreator={Broadcast Engineering Posters Framework},
        pdfproducer={LuaLaTeX}
    }

    \typeout{}
    \typeout{BEF Framework v\befversion}
    \typeout{}
    \typeout{Document : \befFormattedDocumentNumber}
    \typeout{Title    : \befTitle}
    \typeout{Revision : \befRevision}
    \typeout{}
}

% =============================================================================
% End of File
% =============================================================================

\endinput
