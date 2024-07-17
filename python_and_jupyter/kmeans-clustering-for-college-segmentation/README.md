![K-means Clustering](https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Scikit_learn_logo_small.svg/260px-Scikit_learn_logo_small.svg.png)

# K-means Clustering Project

## Project Description

This project demonstrates the use of the K-means clustering algorithm to partition a dataset into distinct groups. For this project, we will try to use KMeans Clustering to cluster universities into two groups: Private and Public.

It is very important to note that we actually have the labels for this dataset, but we will NOT use them for the KMeans clustering algorithm, as this is an unsupervised learning algorithm. In real-life situations where you would use the KMeans algorithm, you would not have labels. In this case, we will use the labels to get an idea of how well the algorithm performed, only.

## The Data

We will use a dataframe with 777 observations on the following 18 variables.
* Private: A factor with levels No and Yes, indicating private or public university.
* Apps: Number of applications received.
* Accept: Number of applications accepted.
* Enroll: Number of new students enrolled.
* Top10perc: Percentage of new students coming from the top 10% of their high school class.
* Top25perc: Percentage of new students coming from the top 25% of their high school class.
* F.Undergrad: Number of full-time undergraduates.
* P.Undergrad: Number of part-time undergraduates.
* Outstate: Out-of-state tuition.
* Room.Board: Room and board costs.
* Books: Estimated book costs.
* Personal: Estimated personal spending.
* PhD: Percentage of faculty with PhDs.
* Terminal: Percentage of faculty with terminal degrees.
* S.F.Ratio: Student/faculty ratio.
* perc.alumni: Percentage of alumni who donate.
* Expend: Instructional expenditure per student.
* Grad.Rate: Graduation rate.

## 🔧 Features

- **Initialization**: Selection of initial centroids.
- **Assignment**: Assigning data points to the nearest centroid.
- **Update**: Recomputing the centroids based on the assigned data points.
- **Iteration**: Repeating the assignment and update steps until convergence.
- **Visualization**: Displaying the clusters and centroids on a 2D plot for analysis.

## 👨‍💻 Technologies Used

Using only **PYTHON** and the libraries:
> - pandas
> - numpy
> - matplotlib
> - seaborn
> - KMeans from scikit-learn

## How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/kmeans-clustering-project.git
