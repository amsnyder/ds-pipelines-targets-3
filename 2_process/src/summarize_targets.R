summarize_targets <- function(ind_file, v) {
  ind_tbl <- tar_meta(all_of(c(v))) %>%
    select(tar_name = name, filepath = path, hash = data) %>%
    mutate(filepath = unlist(filepath))

  readr::write_csv(ind_tbl, ind_file)
  return(ind_file)
}
