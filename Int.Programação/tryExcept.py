print("Digite o seu nome")
nome = input()

executar = True

while (executar == True):
    try:
        print("Digite o seu ano de nascimento")
        ano_nasc = int(input())
        if (ano_nasc < 1922) or (ano_nasc > 2021):
            print("Seu ano de nascimento deve ser entre 1922 e 2021")
        else: 
            idade =  2022 - ano_nasc
            print("O usuário ", nome, " completou ou completará ", idade, " anos em 2022")
            executar =  False
    except:
        print("Os anos precisam ser escritos apenas com números")