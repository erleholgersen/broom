% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats_tidiers.R
\name{tidy.TukeyHSD}
\alias{tidy.TukeyHSD}
\title{tidy a TukeyHSD object}
\usage{
\method{tidy}{TukeyHSD}(x, separate.levels = FALSE, ...)
}
\arguments{
\item{x}{object of class "TukeyHSD"}

\item{separate.levels}{Whether to separate comparison into
\code{level1} and \code{level2} columns}

\item{...}{additional arguments (not used)}
}
\value{
A data.frame with one row per comparison, containing columns
\item{term}{Term for which levels are being compared}
\item{comparison}{Levels being compared, separated by -}
\item{estimate}{Estimate of difference}
\item{conf.low}{Low end of confidence interval of difference}
\item{conf.high}{High end of confidence interval of difference}
\item{adj.p.value}{P-value adjusted for multiple comparisons}

If \code{separate.levels = TRUE}, the \code{comparison} column will be
split up into \code{level1} and \code{level2}.
}
\description{
Returns a data.frame with one row for each pairwise comparison
}
\examples{

fm1 <- aov(breaks ~ wool + tension, data = warpbreaks)
thsd <- TukeyHSD(fm1, "tension", ordered = TRUE)
tidy(thsd)
tidy(thsd, separate.levels = TRUE)

# may include comparisons on multiple terms
fm2 <- aov(mpg ~ as.factor(gear) * as.factor(cyl), data = mtcars)
tidy(TukeyHSD(fm2))

}
\seealso{
\code{\link[=TukeyHSD]{TukeyHSD()}}
}
