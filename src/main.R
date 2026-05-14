source("src/setup.R")
source("src/map_structs.R")

output_master_scalars_file()

for (spec_name in names(map_specs)) {
  message("Processing: ", spec_name)
  spec <- map_specs[[spec_name]]
  spec$output_path <- file.path(maps_dir, paste0(spec_name, ".png"))
  do.call(make_map, spec)
}
