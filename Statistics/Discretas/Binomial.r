rm(list=ls()) # clear all objects

# Distribuição Binomial

# É uma distribuição discreta, com domínio {0,1,2,...,n} e função de densidade de probabilidade dada por:
# f(x) = n! / (x! * (n-x)!) * p^x * (1-p)^(n-x) se x = 0,1,2,...,n

# X ~ Ud(n,p)

# Parâmetros:
p = 0.5 # probabilidade de sucesso
k = 2 # valor observado
n = 10 # número de ensaios
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rbinom(N,n,p)

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = choose(n, k) * p^k * (1-p)^(n-k)

        # Método Monte Carlo
        pdf_r = dbinom(k, n, p)

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

        # Método Analítico
        cdf = sum(dbinom(0:k-1, n, p))

        # Método Analítico (R)
        cdf_r = pbinom(k-1, n, p)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor ou igual a k?
    # (x <= k)

        # Método Analítico
        cdf2 = sum(dbinom(0:k, n, p))

        # Método Analítico (R)
        cdf2_r = pbinom(k, n, p)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X <= k) / N

    # Qual a probabilidade de x ser maior que k?
    # (x > k)

        # Método Analítico
        cdf3 = sum(dbinom(k+1:n, n, p))

        # Método Analítico (R)
        cdf3_r = 1 - pbinom(k, n, p)

        # Método Monte Carlo
        cdf3_mcarlo = sum(X > k) / N

    # Qual a probabilidade de x ser maior ou igual a k?
    # (x >= k)

        # Método Analítico
        cdf4 = sum(dbinom(k:n, n, p))

        # Método Analítico (R)
        cdf4_r = 1 - pbinom(k-1, n, p)

        # Método Monte Carlo
        cdf4_mcarlo = sum(X >= k) / N

# Valor esperado

    # Método Analítico
    E = n * p

    # Método Monte Carlo
    E_mcarlo = mean(X)

# Variância

    # Método Analítico
    var = n * p * (1-p)

    # Método Monte Carlo
    var_mcarlo = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sqrt(var)

    # Método Monte Carlo
    sd_mcarlo = sd(X)

# Valor aleatório

    # Método Analítico
    x = rbinom(1, n, p)

    # Método Monte Carlo
    x_mcarlo = sample(X, 1)