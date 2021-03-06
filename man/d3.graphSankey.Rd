% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/d3graphsankey.R
\name{d3.graphSankey}
\alias{d3.graphSankey}
\title{d3.graphSankey}
\usage{
d3.graphSankey(dfNodes, dfLinks, nodeWidth = 15, strokeOpacity = 0.2,
  width = NULL, height = NULL)
}
\arguments{
\item{dfNodes}{A data.frame which contains nodes data. Some columns are expected. Every row is a node. \cr
\itemize{
\item{"name"}{Optional column. Name}
\item{"tooltip"}{Optional column. Tooltip}
\item{"level"}{Required column. Horizontal position (it must start at 0 to n without holes.}
\item{"color"}{Required column. Color of the node}
\item{"value"}{Required column. Vertical size of nodes.}
}}

\item{dfLinks}{A data.frame which contains links data. Some columns are expected. Every row is a link \cr
\itemize{
\item{"tooltip"}{Optional column. Tooltip}
\item{"source"}{Required column. Source node. It must be integer. It is the position in nodes data.frame starting at 0.}
\item{"target"}{Required column. Target node. It must be integer. It is the position in nodes data.frame starting at 0.}
\item{"color"}{Required column. Color of the link}
\item{"value"}{Required column. Stroke width of link.}
}}

\item{nodeWidth}{Width of nodes.}

\item{strokeOpacity}{Opacity of links.}
}
\value{
An htmlwidget.
}
\description{
\code{d3.graphSankey} creates and htmlwidgets using sankey in D3. Inputs must be a couple of data.frames in some specific format.
}
\details{
Inputs must be a couple of data.frames.
}

