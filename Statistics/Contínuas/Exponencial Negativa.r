rm(list = ls()) # clear all objects

# Distribuição Exponencial Negativa

# É uma distribuição contínua, com domínio [0,inf) e função de densidade de probabilidade dada por:
# f(x) = lambda * exp(-lambda * x) se x >= 0

# X ~ Exp(lambda)

# Parâmetros:
lambda = 1 # taxa de ocorrência
k = 5 # valor observado
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rexp(N, lambda) # gera n valores aleatórios exponencialmente negativos com taxa lambda

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = lambda * exp(-lambda * k)

        # Método Analítico (R)
        pdf_r = dexp(k, lambda)

        # Método Monte Carlo
        pdf_mcarlo = sum(X == k) / N

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

    # Obs: Não há diferença entre < e <=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico
        cdf = 1 - exp(-lambda * k)

        # Método Analítico (R)
        cdf_r = pexp(k, lambda)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor que k?
    # (x > k)

    # Obs: Não há diferença entre > e >=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico
        cdf2 = 1 - (1 - exp(-lambda * k))

        # Método Analítico (R)
        cdf2_r = 1 - pexp(k, lambda)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X > k) / N

# Valor esperado

    # Método Analítico
    E = 1 / lambda

    # Método Monte Carlo
    E_r = mean(X)

# Variância

    # Método Analítico
    var = 1 / lambda^2

    # Método Monte Carlo
    var_r = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sqrt(var)

    # Método Monte Carlo
    sd_r = sd(X)

# Valor aleatório

    # Método Analítico
    x = rexp(1, lambda)

    # Método Monte Carlo
    x = sample(X, 1)