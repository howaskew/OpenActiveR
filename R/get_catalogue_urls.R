#' Get OpenActive data catalogue URLs
#'
#' @return A list of OpenActive catalogue URLs
#' @export
#'
#' @examples
#' catalogue_urls <- get_catalogue_urls()
get_catalogue_urls <- function() {
  catalogue_urls <- list()
  collection_url <- 'https://openactive.io/data-catalogs/data-catalog-collection.jsonld'
  res = try(httr::GET(collection_url), silent = T)
  if (!inherits(res, "try-error")) {
    if (res$status_code >= 200 && res$status_code < 400) {
      #If status ok, read content
      data=rawToChar(res$content)
      if (jsonlite::validate(data)==T) {
        data=jsonlite::fromJSON(rawToChar(res$content))$hasPart
      }
      if (length(data)>0) {
        catalogue_urls <- as.list(data)
      }
    }
  }
  catalogue_urls
}
