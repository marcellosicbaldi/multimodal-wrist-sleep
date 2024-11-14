# load the GGIR package
library(GGIR)

# HOM3OSTASIS
main_folder <- "C:/Users/utente/Desktop/SleepAnalysis/Datasets/Hom3ostasis/"

# List all subdirectories within the main folder
subdirs <- list.files(path = main_folder, full.names = TRUE, recursive = FALSE)

subdirs <- list("C:/Users/utente/Desktop/SleepAnalysis/Datasets/Hom3ostasis/2_SL")

# iterate through each subdirectory
for (subdir in subdirs[1:length(subdirs)]) {
  # access each subdir within the loop
  datadir = paste(subdir, "/input_GGIR", sep = "")
  output_dir = paste(subdir, "/output_GGIR", sep = "")
  print(subdir)
  
  GGIR(
    mode=c(1,2,3,4),
    datadir=datadir,
    outputdir=output_dir,
    #   #=====================
    #   # read.myacc.csv arguments
    #   #=====================
    rmc.nrow = Inf,
    rmc.firstrow.acc = 2,
    rmc.col.acc = 2:4,
    rmc.col.time=1,
    rmc.unit.acc = "g",
    rmc.unit.time = "POSIX",
    rmc.format.time = "%Y-%m-%d %H:%M:%OS",
    desiredtz = "Europe/London",
    rmc.sf = 32
  )
}


# # Look Of Life
# main_folder <- "/Users/marcellosicbaldi/Library/CloudStorage/OneDrive-AlmaMaterStudiorumUniversitàdiBologna/Serena_Marcello/SleepAnalysis/Datasets/LookOfLife"
# subdirs <- list.files(path = main_folder, full.names = TRUE, recursive = FALSE)
# 
# for (subdir in subdirs) {
#   days_dir = list.files(path = subdir, full.names = TRUE, recursive = FALSE)
#   for (day_dir in days_dir) {
#     datadir = paste(day_dir, "/input_GGIR", sep = "")
#     output_dir = paste(day_dir, "/output_GGIR", sep = "")
#     print(day_dir)
#     
#     GGIR(
#       mode=c(1,2,3,4),
#       datadir=datadir,
#       outputdir=output_dir,
#       #   #=====================
#       #   # read.myacc.csv arguments
#       #   #=====================
#       rmc.nrow = Inf,
#       rmc.firstrow.acc = 2,
#       rmc.col.acc = 2:4,
#       rmc.col.time=1,
#       rmc.unit.acc = "g",
#       rmc.unit.time = "POSIX",
#       rmc.format.time = "%Y-%m-%d %H:%M:%OS",
#       desiredtz = "Europe/London",
#       rmc.sf = 32
#     )
#   }
# }
