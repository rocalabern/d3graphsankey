installOldVersion = FALSE
installNewVersion = FALSE

if (installOldVersion) {
  packageurl <- "http://cran.r-project.org/src/contrib/Archive/htmlwidgets/htmlwidgets_0.3.2.tar.gz"
  install.packages(packageurl, repos=NULL, type="source")

  packageurl <- "http://cran.r-project.org/src/contrib/Archive/shiny/shiny_0.11.1.tar.gz"
  install.packages(packageurl, repos=NULL, type="source")
}

if (installNewVersion) {
  install.packages(c("htmlwidgets", "shiny"))
}

library(d3graphsankey)

dfNodes = data.frame(
  name = tolower(letters[1:6]),
  tooltip = paste0("Tooltip ",toupper(letters[1:6])),
  level = c(0,1,1,1,2,2),
  color = rep(rgb(0.2,0.8,0.3),6),
  value = rep(0.5,6)
  )

dfLinks = data.frame(
  tooltip = c("1 -> 2", "1 -> 3", "1 -> 4", "2 -> 5", "2 -> 6", "3 -> 5", "3 -> 6", "4 -> 5", "4 -> 6"),
  source = c(0,0,0,1,1,2,2,3,3),
  target = c(1,2,3,4,5,4,5,4,5),
  color = rep(rgb(0.1,0.3,0.1),9),
  value = rep(0.1,9)
  )

d3.graphSankey(dfNodes, dfLinks)


