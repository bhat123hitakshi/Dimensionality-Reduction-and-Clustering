# Load required libraries
library(tidyverse)
library(factoextra)

# Sample data provided
data <- data.frame(
  student_id = 6,
  student_engagement = c(35.47855, 51.79512, 62.41012, 35.20679, 59.37552, 57.00109),
  student_performance = c(50.52231, 58.88396, 40.56755, 62.46033, 54.69326, 54.09745),
  student_gpa = c(3.013657, 3.348817, 2.728112, 3.576468, 3.031107, 2.251470),
  cluster = c(2, 1, 3, 2, 3, 3)  # Assuming you have the cluster labels
)

# Separate features from target
X <- data %>% select(-student_id, -cluster)

# Scale the features
X_scaled <- scale(X)

# Perform PCA to reduce dimensionality to 2 components
pca <- prcomp(X_scaled, center = TRUE, scale. = TRUE)
X_pca <- as.data.frame(pca$x[, 1:2])

# K-means clustering with 3 clusters
kmeans_model <- kmeans(X_pca, centers = 3, nstart = 25)

# Add cluster labels to DataFrame
data$cluster <- as.factor(kmeans_model$cluster)

# Visualize PCA
fviz_pca_ind(pca, geom.ind = "point", col.ind = data$cluster)

# Visualize the clusters
ggplot(data, aes(x = student_engagement, y = student_performance, color = cluster)) +
  geom_point() +
  labs(title = "Clustering of Students",
       x = "Student Engagement",
       y = "Student Performance") +
  theme_minimal()
