# simulate from a mixture of binomials and calculate the SD
sim_binommixture_sd <-
    function(n=rowSums(fs), p=sum(fs[,1])/sum(fs))
{
    sd(rbinom(length(n), n, p))
}

# fitted probabilities for binomial mixture
prob_binommixture <-
    function(x=0:9, n=rowSums(fs), p=sum(fs[,1])/sum(fs))
{
    tabn <- table(n)
    prop_n <- tabn/length(n)
    n <- as.numeric(names(tabn))
    probs <- t(vapply(n, function(number) dbinom(x, number, prob=p), rep(0, length(x))))

    colSums( probs * rep(prop_n, ncol(probs)) )
}
