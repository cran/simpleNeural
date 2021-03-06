% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/main.R
\name{sN.MLPtrain}
\alias{sN.MLPtrain}
\title{Trains a multilayer perceptron with 1 hidden layer}
\usage{
sN.MLPtrain(X, y, hidden_layer_size = 5, it = 50, lambda = 0.5,
  alpha = 0.5)
}
\arguments{
\item{X}{Matrix of predictors}

\item{y}{Vector of output (the ANN learns y=ANN(X)).
Classes should be assigned an integer number, starting at 0 for the first class.}

\item{hidden_layer_size}{Number of units in the hidden layer}

\item{it}{Number of iterations for the gradient descent.
The default value of 50 may be a little low in some cases. 100 to 1000 are generally sensible values.}

\item{lambda}{Penalization for model coefficients (regularization parameter)}

\item{alpha}{Speed multiplier (learning rate) for gradient descent}
}
\value{
The coefficients of the MLP, in a list (Theta1 between input and hidden layers, Theta2 between hidden and output layers)
}
\description{
Trains a multilayer perceptron with 1 hidden layer and a sigmoid activation function,
using backpropagation and gradient descent.
Don't forget to normalize the data first - sN.normalizeDF(), provided in the package, can be used to do so.
}
\examples{
# NB: the provided examples are just here to help use the package's functions.
# In real use cases you should perform a proper validation (cross-validation,
# external validation data...)
data(UCI.BCD.Wisconsin);
X=as.matrix(sN.normalizeDF(as.data.frame(UCI.BCD.Wisconsin[,3:32])));
y=as.matrix(UCI.BCD.Wisconsin[,2]);
myMLP=sN.MLPtrain(X=X,y=y,hidden_layer_size=20,it=50,lambda=0.5,alpha=0.5);
myPrediction=sN.MLPpredict(nnModel=myMLP,X=X,raw=TRUE);
#library('verification');
#roc.area(y,myPrediction[,2]);
}
\references{
M.W Gardner, S.R Dorling, Artificial neural networks (the multilayer perceptron)-
a review of applications in the atmospheric sciences, Atmospheric Environment, Volume 32,
Issues 14-15, 1 August 1998, Pages 2627-2636, ISSN 1352-2310, doi: 10.1016/S1352-2310(97)00447-0
[\url{http://www.sciencedirect.com/science/article/pii/S1352231097004470}]

Jain, A.K.; Jianchang Mao; Mohiuddin, K.M., "Artificial neural networks: a tutorial,"
Computer , vol.29, no.3, pp.31,44, Mar 1996. doi: 10.1109/2.485891
[\url{http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=485891&isnumber=10412}]

Rumelhart, David E., Geoffrey E. Hinton, and R. J. Williams.
"Learning Internal Representations by Error Propagation". David E. Rumelhart, James L. McClelland, and
the PDP research group (editors).
Parallel distributed processing: Explorations in the microstructure of cognition, Volume 1: Foundations. MIT Press, 1986.
}

