//
// This file is released under the 3-clause BSD license. See COPYING-BSD.

function subdemolist = demo_gateway()
    demopath = get_absolute_file_path("toolbox_skeleton.dem.gateway.sce");

    subdemolist = ["1 hot encoding demo"	;     "1 hot encode_Demo"; ...
"Affinity propagation"	;     "Affinity propagation_Demo1.sce"; ...
"Affinity propagation 2";     "Affinity propagation_Demo2.sce"; ...
"Binarization"			;     "Binarization_Demo.sce"; ...
"Class rebalancing"		;     "Class rebalancing_Demo.sce"; ...
"Decision tree demo 1"	;     "Decision Tree_Demo1.sce"; ...
"Decision tree demo 2"	;     "Devision Tree_Demo2.sce"; ...
"Elastic net demo 1"	;     "Elastic net regression_Demo1.sce"; ...
"Elastic net demo 2"	;     "Elastic net regression_Demo2.sce"; ...
"Ensemble learning demo";     "Ensemble_Demo.sce"; ...
"Kmeans cluster demo 1"	;     "Kmeans_Demo1.sce"; ...
"Kmeans cluster demo 2"	;     "Kmeans_Demo2.sce"; ...
"Kmediods cluster 1"	;     "Kmediods_Demo1.sce"; ...
"Kmediods cluster 2"	;     "Kmediods_Demo2.sce"; ...
"KNN classification 1"	;     "Knn classification_Demo1.sce"; ...
"KNN classification 2"	;     "Knn classification_Demo2.sce"; ...
"Least angle regression";     "LARS_Demo.sce"; ...
"Lasso regression 1"	;     "Lasso regression_Demo1.sce"; ...
"Lasso regression 2"	;     "Lasso regression_Demo2.sce"; ...
"Linear regression"		;     "Linear Regression_Demo.sce"; ...
"Logistic regression"	;     "Logistic Regression_Demo.sce"; ...
"Missing value replace"	;     "Missing values_Demo.sce"; ...
"Naive Bayes"			;     "Naive Bayes_Demo.sce"; ...
"Naive Bayes Multinom."	;     "Naive Bayes Multinomial_Demo.sce"; ...
"Neural network"		;     "Neural Network_Demo.sce"; ...
"Normalization"			;     "Normalize_Demo.sce"; ...
"Principal components"	;     "PCA_Demo.sce"; ...
"Single Perceptron"		;     "Perceptron_Demo.sce"; ...
"Polynomial regression"	;     "Polynomial Regression_Demo.sce"; ...
"Random forest"			;     "Random Forest_Demo.sce"; ...
"Regression Tree"		;     "Regression Tree_Demo1.sce"; ...
"Ridge regression"		;     "Ridge regression_Demo.sce"; ...
"Scaling 0/1"			;     "Scale_Demo.sce"; ...
"Spectral clustering 1"	;     "Spectral clustering_Demo1.sce"; ...
"Spectral clustering 2"	;     "Spectral clustering_Demo2.sce"; ...
"Support vector class."	;     "SVC_Demo.sce"; ...
"Support vector reg."	;     "SVR_Demo.sce"; ...
"Train test split"		;     "Train Test split_Demo.sce"; ];

    subdemolist(:,2) = demopath + subdemolist(:,2);

endfunction

subdemolist = demo_gateway();
clear demo_gateway; // remove demo_gateway on stack
