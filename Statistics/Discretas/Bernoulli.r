rm(list=ls()) # clear all objects

# Distribuição Bernoulli

# É uma distribuição discreta, com domínio {0,1} e função de densidade de probabilidade dada por:
# f(x) = p^x * (1-p)^(1-x) se x = 0 ou 1

# X ~ B(p)

# Parâmetros:
p = 0.2 # probabilidade de sucesso
N = 10^6 # número de valores aleatórios

# Gerando valores aleatórios
X = rbinom(N, 1, p) # gera n valores aleatórios binomiais com n = 1 e p = p

# Função Densidade de Probabilidade (PDF)

    # Qual a probabilidade de x ser igual a 0?
    # (x == 0)

        # Método Analítico
        pdf = 1-p

        # Método Analítico (R)
        pdf_r = dbinom(0, 1, p)

        # Método Monte Carlo
        pdf_mcarlo = sum(X == 0) / N

   # Qual a probabilidade de x ser igual a 1?
    # (x == 1)

        # Método Analítico
        pdf2 = p

        # Método Analítico (R)
        pdf2_r = dbinom(1, 1, p)

        # Método Monte Carlo
        pdf2_mcarlo = sum(X == 1) / N

# Valor esperado

    # Método Analítico
    E = 1 * p + 0 * (1 - p)

    # Método Monte Carlo
    E_r = mean(X)

# Variância

    # Método Analítico
    var = p * (1 - p)

    # Método Monte Carlo
    var_r = var(X)

# Desvio Padrão

    # Método Analítico
    sd = sqrt(p * (1 - p))

    # Método Monte Carlo
    sd_r = sd(X)

# Valor aleatório

    # Método Analítico
    X = sample(c(0, 1), 1, replace = TRUE, prob = c(1-p, p))

    # Método Monte Carlo
    X = rbinom(1, 1, p)