rm(list = ls()) # clear all objects

# Distribuição Normal

# É uma distribuição contínua, com domínio R e função de densidade de probabilidade dada por:
# f(x) = 1/(sigma * sqrt(2 * pi)) * exp(-1/2 * ((x - mu) / sigma)^2)

# X ~ N(mu, sigma^2)

# Parâmetros:
mu = 0 # média
sigma = 1 # desvio padrão
k = 2 # valor observado
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rnorm(N, mu, sigma) # gera n valores aleatórios normalmente distribuídos com média mu e desvio padrão sigma

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = 1/(sigma * sqrt(2 * pi)) * exp(-1/2 * ((k - mu) / sigma)^2)

        # Método Analítico (R)
        pdf_r = dnorm(k, mu, sigma)

        # Método Monte Carlo
        pdf_mcarlo = sum(X == k) / N

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

    # Obs: Não há diferença entre < e <=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico (R)
        cdf_r = pnorm(k, mu, sigma)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor que k?
    # (x > k)

    # Obs: Não há diferença entre > e >=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico (R)
        cdf2_r = 1 - pnorm(k, mu, sigma)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X > k) / N

# Valor esperado

    # Método Analítico
    E = mu

    # Método Monte Carlo
    E_mcarlo = mean(X)

# Variância

    # Método Analítico
    var = sigma^2

    # Método Monte Carlo
    var_mcarlo = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sigma

    # Método Monte Carlo
    sd_mcarlo = sd(X)

# Valor aleatório
    
    # Método Analítico
    x = rnorm(1, mu, sigma)

    # Método Monte Carlo
    x_mcarlo = sample(X, 1)