#' Doc template for presentations
#'
#' @param theme Which theme to use
#' @param template Which template to use
#' @param latex_engine Engine for PDF render
#' @param ... Arguments for `rmarkdown::beamer_presentation`
#'
#' @export
#'
beamerStyle<- function(theme=NULL, template=NULL,
                       latex_engine=NULL, ...) {


  if (is.null(theme)) {
  theme <- system.file("style/beamerthemem.sty", package = "beamertheme")
  }
  if (is.null(template)) {
    template <- system.file("style/default.tex", package = "beamertheme")
  }
  if (is.null(latex_engine)) {
    latex_engine <- "xelatex"
  }

  rmarkdown::beamer_presentation(theme=theme, template=template,
                                 latex_engine=latex_engine,...)
}
