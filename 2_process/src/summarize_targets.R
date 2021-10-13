summarize_targets <- function(ind_file, filename_targets) {
  ind_tbl <- tar_meta(all_of(filename_targets)) %>%
    select(tar_name = name, filepath = path, hash = data) %>%
    mutate(filepath = unlist(filepath))

  readr::write_csv(ind_tbl, ind_file)
  return(ind_file)
}
