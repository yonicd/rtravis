#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples 
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname func
#' @export 
#' @importFrom rmarkdown render
func <- function(){
  
  on.exit({
    if(file.exists('tests/_test.Rmd'))
      file.remove('tests/_test.Rmd')
    
    if(file.exists('tests/README.html'))
      file.remove('tests/README.html')
  },add = TRUE)
  
  file.copy(system.file('test.Rmd',package = 'rtravis'),
            'tests/_test.Rmd')
  
  rmarkdown::render(
    input = 'tests/_test.Rmd',
    output_file = 'README.md',
    output_dir = 'tests',
    output_format = 'github_document',
    output_options = list(toc=TRUE,toc_depth=3)
  )
}