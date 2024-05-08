get_catalogue_urls <- function() {
  collection_url <- 'https://openactive.io/data-catalogs/data-catalog-collection.jsonld'
  res = try(GET(collection_url), silent = T)
  if (!inherits(res, "try-error")) {
    if (res$status_code >= 200 && res$status_code < 400) {
      #If status ok, read content
      data=rawToChar(res$content)
      if (validate(data)==T) {
        data=fromJSON(rawToChar(res$content))$hasPart
      }
      if (length(data)>0) {
        catalogue_urls <- as.list(data)
      } else
        catalogue_urls <- list()
    }
  }
}

