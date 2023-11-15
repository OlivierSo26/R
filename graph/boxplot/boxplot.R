# Générer des données dissymétriques
set.seed(123)
donnees_dissymetriques <- data.frame(
  poids = c(rnorm(50, mean = 70, sd = 30), rnorm(200, mean = 90, sd = 30)),
  sexe = rep(c("F", "M"), times = c(50, 200))
)

# Boxplot sans varwidth (par défaut)
boxplot(poids ~ sexe, data = donnees_dissymetriques, col = c("blue", "red"), main = "Boxplot des poids en fonction du sexe", xlab = "Sexe", ylab = "Poids", varwidth = FALSE)

# Boxplot avec varwidth
boxplot(poids ~ sexe, data = donnees_dissymetriques, col = c("blue", "red"), main = "Boxplot des poids en fonction du sexe", xlab = "Sexe", ylab = "Poids", varwidth = TRUE)
