% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/main.R
\name{sN.MLPpredict}
\alias{sN.MLPpredict}
\title{Runs a multilayer perceptron}
\usage{
sN.MLPpredict(nnModel, X, raw = FALSE)
}
\arguments{
\item{nnModel}{A list containing the coefficients for the MLP (as produced with sN.MLPtrain())}

\item{X}{Matrix of predictors}

\item{raw}{If true, returns score of each output option. If false, returns the output option with highest value.}
}
\value{
The predicted values obtained by the MLP
}
\description{
Runs a multilayer perceptron
}
\examples{
data(UCI.transfusion);
X=as.matrix(sN.normalizeDF(as.data.frame(UCI.transfusion[,1:4])));
y=as.matrix(UCI.transfusion[,5]);
myMLP=sN.MLPtrain(X=X,y=y,hidden_layer_size=4,it=50,lambda=0.5,alpha=0.5);
myPrediction=sN.MLPpredict(nnModel=myMLP,X=X,raw=TRUE);
#library('verification');
#roc.area(y,myPrediction[,2]);
}

