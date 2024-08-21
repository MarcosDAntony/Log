# Crie um algoritmo que de o resultado do MDC de dois ou mais números e de forma recursiva

def mdc(a, b):
    """
    Calcula o Máximo Divisor Comum (MDC) de dois números inteiros a e b
    utilizando o algoritmo de Euclides de forma recursiva.
    """
    if b == 0:
        return a
    else:
        return mdc(b, a % b)

# Exemplo de uso
a = int(input("Digite o primeiro número: "))
b = int(input("Digite o segundo número: "))

resultmdc = mdc(a, b)
print(f"O MDC de {a} e {b} é {resultmdc}.")
