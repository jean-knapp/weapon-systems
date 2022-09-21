rm(list = ls()) # clear all objects

# Distribuição Uniforme

# É uma distribuição contínua, com domínio [a,b] e função de densidade de probabilidade dada por:
# f(x) = 1/(b-a) se a <= x <= b

# X ~ U(a,b)

# Parâmetros:
a = 1 # limite inferior
b = 10 # limite superior
k = 5 # valor observado
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = runif(N, a, b) # gera n valores aleatórios uniformes entre a e b

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a k?
    # (x == k)

        # Método Analítico
        pdf = 1 / (b - a)

        # Método Analítico (R)
        pdf_r = dunif(k, a, b)

        # Método Monte Carlo
        pdf_mcarlo = sum(X == k) / N

# Função Distribuição Acumulada (CDF)

    # Qual a probabilidade de x ser menor que k?
    # (x < k)

    # Obs: Não há diferença entre < e <=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico
        cdf = (k - a) / (b - a)

        # Método Analítico (R)
        cdf_r = punif(k, a, b)

        # Método Monte Carlo
        cdf_mcarlo = sum(X < k) / N

    # Qual a probabilidade de x ser menor que k?
    # (x > k)

    # Obs: Não há diferença entre > e >=,
    # pois a função de distribuição acumulada é contínua.

        # Método Analítico
        cdf2 = 1 - (k - a) / (b - a)

        # Método Analítico (R)
        cdf2_r = 1 - punif(k, a, b)

        # Método Monte Carlo
        cdf2_mcarlo = sum(X > k) / N

# Valor esperado

    # Método Analítico
    E = (a + b) / 2

    # Método Monte Carlo
    E_mcarlo = mean(X)

# Variança
    
    # Método Analítico
    var = (b - a)^2 / 12

    # Método Monte Carlo
    var_mcarlo = var(X)

# Desvio Padrão
    
    # Método Analítico
    sd = sqrt(var)

    # Método Monte Carlo
    sd_mcarlo = sd(X)

# Valor aleatório

    # Método Analítico
    x = runif(1, a, b)

    # Método Monte Carlo
    x = sample(X, 1)
