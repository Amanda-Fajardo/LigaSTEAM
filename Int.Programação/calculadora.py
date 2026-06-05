print("-------------------------------------------------")
print("Calculadora em linguagem Python")
print("-------------------------------------------------")

a = int(input("Digite o primeiro número da nossa operação: "))
b = int(input("Digite o segundo número da nossa operação: "))
c = int(input("Escolha a operação que deseja fazer: 1 - soma; 2 - subtração; 3 - divisão; 4 - multiplicação\n"))

def soma(a, b):
    resultado = a + b
    return resultado

def sub(a, b):
    resultado = a - b
    return resultado

def div(a, b):
    resultado = a / b
    return resultado

def mult(a, b):
    resultado = a * b
    return resultado

if (c == 1):
    print("Resultado: ",soma(a, b))
elif (c == 2):
   print("Resultado: ",sub(a, b))
elif (c == 3):
        if a == 0 or b == 0:
            print("Não é possível fazer divisão por zero, insira um número válido")
        else:
            print("Resultado: ",div(a, b))
elif (c == 4):
    print("Resultado: ",mult(a, b))
else:
    print("0")
    