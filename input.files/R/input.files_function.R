#' Reads files used in generating model input (random change)
#'
#' This function allows you to load all of your input files into memory
#' @param Allele-specific expression data; SNP information; haplotype information
#' @keywords input files
#' @export
#' @examples
#' input.files()

input.files <- function(ASE_file, legend_file, haplotypes_file)
{
  # Samples <- read.table(arg1, header=T)
  # assign("Samples", envir = .GlobalEnv)
  ASE <- read.table(ASE_file, header=T)
  assign("ASE", ASE, envir = .GlobalEnv)
  LEG <- read.table(legend_file, header=T)
  assign("LEG", LEG, envir = .GlobalEnv)
  hap <- read.table(haplotypes_file, header=F)
  assign("hap", hap, envir = .GlobalEnv)
}
