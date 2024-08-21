# Crie um algoritmo que cálcule o MDC de dois números de forma sequêncial
def mdc(a, b):
    while b != 0:
        a, b = b, a % b
    return a

# Exemplo de uso
a = int(input("Iº Dividendo: "))
b = int(input("IIº Dividendo: "))

resultmdc = mdc(a, b)
print(f"O Máximo Divisor Comum de {a} e {b} é {resultmdc}")
2