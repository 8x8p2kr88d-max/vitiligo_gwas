calc_hwe <- function(p_val) {
  q_val <- 1 - p_val
  hom_risk <- p_val^2
  het <- 2 * p_val * q_val
  hom_alt <- q_val^2 
  
  return(list(p = p_val, q = q_val, p_squared = hom_risk, two_pq = het, q_squared = hom_alt))
}
calc_hwe(.42)
genotypes <- c(Homozygous_Risk = 0.1764, Heterozygous = 0.4872, Homozygous_Alt = 0.3364)
barplot(genotypes, 
        +         main = "Hardy-Weinberg Genotype Frequencies (TYR Gene)",
        +         ylab = "Expected Proportion",
        +         col = c("coral", "gold", "skyblue"),
        +         ylim = c(0, 0.6))
