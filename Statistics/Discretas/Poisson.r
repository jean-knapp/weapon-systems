rm(list = ls()) # clear all objects

# Distribuição Poisson

# É uma distribuição discreta, com domínio N e função de densidade de probabilidade dada por:
# f(x) = (lambda^x * exp(-lambda)) / x! se x >= 0



# Parâmetros:
lambda = 1 # taxa de ocorrência
k = 2 # valor observado
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rpois(N, lambda) # gera n valores aleatórios exponencialmente negativos com taxa lambda

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = (lambda^k * exp(-lambda)) / factorial(k)

        # Método Analítico (R)
        pdf_r = dpois(k, lambda)

        # Método Monte Carlo
        pdf_mcarlo = sum(X == k) / N

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

        # Método Analítico
        cdf = sum(dpois(0:k-1, lambda))

        # Método Analítico (R)
        cdf_r = ppois(k-1, lambda)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor ou igual a k?
    # (x <= k)

        # Método Analítico
        cdf2 = sum(dpois(0:k, lambda))

        # Método Analítico (R)
        cdf2_r = ppois(k, lambda)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X <= k) / N

    # Qual a probabilidade de x ser maior que k?
    # (x > k)

        # Método Analítico
        cdf3 = 1 - sum(dpois(0:k, lambda))

        # Método Analítico (R)
        cdf3_r = 1 - ppois(k, lambda)

        # Método Monte Carlo
        cdf3_mcarlo = sum(X > k) / N

    # Qual a probabilidade de x ser maior ou igual a k?
    # (x >= k)

        # Método Analítico
        cdf4 = 1 - sum(dpois(0:k-1, lambda))

        # Método Analítico (R)
        cdf4_r = 1 - ppois(k-1, lambda)

        # Método Monte Carlo
        cdf4_mcarlo = sum(X >= k) / N

# Valor esperado

    # Método Analítico
    E = lambda

    # Método Monte Carlo
    E_mcarlo = mean(X)

# Variância

    # Método Analítico
    var = lambda

    # Método Monte Carlo
    var_mcarlo = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sqrt(var)

    # Método Monte Carlo
    sd_mcarlo = sd(X)

# Valor aleatório

    # Método Analítico
    x = rpois(1, lambda)

    # Método Monte Carlo
    x_mcarlo = sample(X, 1)