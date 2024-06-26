#' Kernel Smoothing for Bivariate Copula Densities
#'
#' This package implements a vine copula based kernel density estimator. The
#' estimator does not suffer from the curse of dimensionality and is therefore
#' well suited for high-dimensional applications (see, Nagler and Czado, 2016).
#'
#' The multivariate kernel density estimators is implemented by the
#' \code{\link{kdevine}} function. It combines a kernel density estimator for
#' the margins (\code{\link{kde1d}}) and a kernel estimator of the vine copula
#' density (\code{\link{kdevinecop}}). The package is built on top of the copula
#' density estimators in the [kdecopula::kdecopula-package] and let's you
#' choose from all its implemented methods. Optionally, the vine copula can be
#' estimated parameterically (only the margins are nonparametric).
#'
#' @name kdevine-package
#' @aliases kdevine-package
#' @useDynLib kdevine, .registration = TRUE
#'
#' @author Thomas Nagler
#'
#' @references
#' Nagler, T., Czado, C. (2016) \cr *Evading the curse of
#' dimensionality in nonparametric density estimation with simplified vine
#' copulas.* \cr \emph{Journal of Multivariate Analysis 151, 69-89
#' (doi:10.1016/j.jmva.2016.07.003)} \cr
#'
#' Nagler, T., Schellhase, C. and Czado, C. (2017) \cr *Nonparametric
#' estimation of simplified vine copula models: comparison of methods*
#' arXiv:1701.00845
#'
#' Nagler, T. (2017) \cr
#' *A generic approach to nonparametric function
#' estimation with mixed data.* \cr
#' [arXiv:1704.07457](https://arxiv.org/abs/1704.07457)
#'
#' @keywords package
#'
"_PACKAGE"

.onAttach <- function(libname, pkgname) {
    packageStartupMessage("The kdevine package is no longer actively developed. ",
                          "Consider using \n   - the 'kde1d' package for marginal estimation, \n",
                          "   - the functions vine() and vinecop() from the 'rvinecopulib' \n",
                          "     package as replacements for kdevine() and kdevinecop().")
}
