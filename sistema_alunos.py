def valida_opcao(input_usuario):
    if input_usuario == "1":
        print("Aqui vai executar dadosAlunos")
        return
    
    if input_usuario == "2":
        print("Execuatar notasAlunos")
        return  
    
    if input_usuario == "3":  
        print("Executar Visualizarinformações")
        return
    
    if input_usuario == "4":
        print("media")
        return

    if input_usuario == "x" or input_usuario == "X":
        print("sai do programa")
    return


def menu():
    print("~~~~~~~~~~ MENU SISTEMA DE ALUNOS ~~~~~~~~~~")
    print(" 1 - Cadastrar Alunos")
    print(" 2 - Lançar notas dos Alunos")
    print(" 3 - Visualizar informações da Turma")
    print(" 4 - Calcular média dos Alunos e Turma")
    print(" X - Sair do programa")
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
    return

menu()
opcao = input("Escolha a opção desejada: ")

valida_opcao(opcao)
