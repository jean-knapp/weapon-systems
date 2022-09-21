rm(list = ls()) # clear all objects

# Distribuição Geométrica

# É uma distribuição discreta, com domínio N e função de densidade de probabilidade dada por:
# f(x) = (1-p)^(x-1) * p se x >= 1

# Há algo de errado com as funções do R.

# Parâmetros:
p = 0.5 # probabilidade de sucesso
k = 4 # valor observado
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rgeom(N, p)

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = (1-p)^(k-1) * p

        # Método Monte Carlo
        pdf_r = dgeom(k-1, p)

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

        # Método Analítico
        cdf = sum(dgeom(1:k-1, p))

        # Método Analítico (R)
        cdf_r = pgeom(k-1, p)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor ou igual a k?
    # (x <= k)

        # Método Analítico
        cdf2 = sum(dgeom(1:k, p))

        # Método Analítico (R)
        cdf2_r = pgeom(k, p)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X <= k) / N

    # Qual a probabilidade de x ser maior que k?
    # (x > k)

        # Método Analítico
        cdf3 = sum(dgeom(k+1:N, p))

        # Método Analítico (R)
        cdf3_r = 1 - pgeom(k, p)

        # Método Monte Carlo
        cdf3_mcarlo = sum(X > k) / N

    # Qual a probabilidade de x ser maior ou igual a k?
    # (x >= k)

        # Método Analítico
        cdf4 = sum(dgeom(k:N, p))

        # Método Analítico (R)
        cdf4_r = 1 - pgeom(k-1, p)

        # Método Monte Carlo
        cdf4_mcarlo = sum(X >= k) / N

# Valor esperado

    # Método Analítico
    E = 1 / p

    # Método Monte Carlo
    E_r = mean(X)

# Variância

    # Método Analítico
    var = (1 - p) / p^2

    # Método Monte Carlo
    var_r = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sqrt(var)

    # Método Monte Carlo
    sd_r = sd(X)

# Valor aleatório

    # Método Analítico
    x = qgeom(runif(1), p)

    # Método Monte Carlo
    x_r = sample(X, 1)