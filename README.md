# Dimensionality-Reduction-and-Clustering
# lab 3 case study : Dimenionality Reduction and clustering 
# simulated data :
I initiated the simulation of data by incorporating three primary attributes for a cohort of 100 students, each identified by a distinct Student ID.

These attributes encompass:
Student Engagement
Student Performance
and GPA, all of which were subjected to scaling.

Subsequently, these scaled features were amalgamated to form a comprehensive dataframe. 
 The rationale behind scaling the data lies in the necessity to standardize the scale of all attributes, thereby ensuring they are centered around zero. 

Presented below is a snippet displaying the initial six rows of this dataframe.

| student_id | student_engagement | student_performance | student_gpa | cluster |
|------------|--------------------|---------------------|-------------|---------|
| 1          | 35.47855           | 50.52231            | 3.013657    | 2       |
| 2          | 51.79512           | 58.88396            | 3.348817    | 1       |
| 3          | 62.41012           | 40.56755            | 2.728112    | 3       |
| 4          | 35.20679           | 62.46033            | 3.576468    | 2       |
| 5          | 59.37552           | 54.69326            | 3.031107    | 3       |
| 6          | 57.00109           | 54.09745            | 2.251470    | 3       |

I initially attempted to preserve all the attributes for clustering, namely PC1. Subsequently, I utilized scatterplots to evaluate the effectiveness of the model when considering the variables.

Principal Component Analysis (PCA) was employed for the purpose of diminishing the dimensionality of the dataset consisting of three features (student_engagement, student_performance, student_gpa) to two principal components. This reduction facilitates a more straightforward visualization and understanding of the data, while preserving the majority of the initial variance.

https://github.com/bhat123hitakshi/Dimensionality-Reduction-and-Clustering/blob/main/Rplot.png

This is the cluster plot i got, by employing both dimensionality reduction and clustering methodologies, the dataset encompassing student characteristics was proficiently examined and divided into significant clusters corresponding to their levels of involvement, academic achievement, and Grade Point Average (GPA). The outcomes of the clustering process have the potential to offer a deeper understanding of patterns in student behavior or academic progression, thus presenting valuable insights for educational establishments in customizing interventions and support approaches for diverse student cohorts.

# Reference:
Shiri Margel, G. S. (July 31 , 2017). Clustering and Dimensionality Reduction: Understanding the “Magic” Behind Machine Learning, 100.



