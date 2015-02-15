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

calc_sd_binommixture <-
    function(n=rowSums(fs), p=sum(fs[,1])/sum(fs))
{
    maxn <- max(n)
    tabn <- table(n)
    prop_n <- tabn/length(n)
    n <- as.numeric(names(tabn))
    probs <- t(vapply(n, function(number) dbinom(0:maxn, number, prob=p), rep(0, maxn+1)))

    probs <- colSums(probs * rep(prop_n, ncol(probs)))

    xmean <- sum(probs*(0:maxn))

    sqrt(sum(probs * ((0:maxn) - xmean)^2))
}

calc_sdprop_binommixture <-
    function(n=rowSums(fs), p=sum(fs[,1])/sum(fs))
{
    maxn <- max(n)
    tabn <- table(n)
    prop_n <- tabn/length(n)
    n <- as.numeric(names(tabn))
    probs <- t(vapply(n, function(number) dbinom(0:maxn, number, prob=p), rep(0, maxn+1)))

    probs <- probs * rep(prop_n, ncol(probs))
    vals <- t(vapply(n, function(number) (0:maxn)/number, rep(0, maxn+1)))

    xmean <- sum(probs*vals)

    sqrt(sum(probs * (vals - xmean)^2))
}
