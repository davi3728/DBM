programa {

  funcao inicio() 
  {
    cadeia alunos[40][2]
    real notasAlunos[40][10]

    inicializarSistema(alunos, notasAlunos)

    cadeia opcao = ""
    faca {
      limpa()
      escreva("~~~~~~~~~~ MENU SISTEMA DE ALUNOS ~~~~~~~~~~\n")
      escreva(" 1 - Cadastrar Alunos\n")
      escreva(" 2 - Lançar notas dos Alunos\n")
      escreva(" 3 - Visualizar informações da Turma\n")
      escreva(" 4 - Calcular média dos Alunos e Turma\n")
      escreva(" X - Sair do programa\n")
      escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
      escreva("Escolha a opção desejada: ")
      leia(opcao)
      
      se (opcao == "1") 
      {
        dadosAlunos(alunos)
      } 
      
      se (opcao == "2") 
      {
        notasAlunos(alunos, notasAlunos)
      } 
      
      se (opcao == "3") 
      {
        visualizarInformacoes(alunos, notasAlunos)
      }

      se (opcao == "4") 
      {
        media(alunos, notasAlunos)
        mediaSala(alunos, notasAlunos)
      }

    } enquanto(opcao != "x" ou opcao != "X")
    
    escreva("\n\nObrigado por usar meu sistema... Até mais!\n\n\n")
  }

  funcao inicializarSistema(cadeia &alunos[][], real &notasAlunos[][]) 
  {
    para(inteiro a = 0; a < 40; a++) 
    {
      alunos[a][0] = ""
      alunos[a][1] = ""
      para(inteiro n = 0; n < 10; n++) 
      {
        notasAlunos[a][n] = 0
      }
    }
  }

  funcao dadosAlunos(cadeia &alunos[][]) 
  {
    para(inteiro a = 0; a < 40; a++) 
    {
      cadeia opcao
      escreva("\nDigite o nome do aluno ", a+1, " a ser cadastrado: ") 
      leia(alunos[a][0])
      escreva("Digite a turma do aluno cadastrado ", alunos[a][0], ": ") 
      leia(alunos[a][1])
      escreva("Deseja proceder com o cadastro dos alunos? \nDigite S para sim e N para não: ") 
      leia(opcao)
      se(opcao == "N" ou opcao == "n") 
      {
        pare
      }
      limpa()
    }
  }

  funcao notasAlunos(cadeia &alunos[][], real &notasAlunos[][]) 
  {
    para(inteiro a = 0; a < 40; a++) 
    {
      se(alunos[a][0] == "") 
      {
        cadeia cf
        escreva("O resto da lista esta vazia ou imcompleta, finalizando o lançamento das notas.")
        escreva("\nDigite [ENTER] para retornar ao menu inicial: ") 
        leia(cf)
        pare
      }
      senao 
      {
        para(inteiro b = 0; b < 10; b++) {
          escreva("\nAluno em andamento: ", alunos[a][0])
          escreva("\nDigite a nota n° ", b+1, ": ") 
          leia(notasAlunos[a][b])
          limpa()
        }
      }
      limpa()
    }
  }

  funcao visualizarInformacoes(cadeia &alunos[][], real &notasAlunos[][]) 
  {
    para(inteiro a = 0; a < 40; a++) 
    {
      se(alunos[a][0] == "") 
      {
        cadeia cf
        escreva("\n\nO resto da lista esta vazia ou imcompleta, finalizando a visualização das informações.")
        escreva("\nDigite [ENTER] para retornar ao menu inicial: ") 
        leia(cf)
        pare
      }
      senao 
      {
        escreva("\n\nAluno: ", alunos[a][0], " - Turma: ", alunos[a][1], "\n")
        escreva("Notas: ")
        para(inteiro b = 0; b < 10; b++) 
        {
          se(b == 9) {
            escreva(notasAlunos[a][b])
          }
          senao 
          {
            escreva(notasAlunos[a][b], ", ")
          }
        }
      }
    }
  }

   funcao media(cadeia &alunos[][], real &notasAlunos[][]) 
   {
    para(inteiro a = 0; a < 40; a++) 
    {
      real contador = 0
      se (alunos[a][0] == "") 
      {
        cadeia cf
        escreva("\n\nProsseguindo para o cálculo de média da turma.")
        escreva("\nAperte [ENTER] para confirmar: ") 
        leia(cf)
        pare
      }
      senao 
      {
        escreva("\n\nAluno: ", alunos[a][0], " | Turma: ", alunos[a][1], "\n")
        para(inteiro b = 0; b < 10; b++) 
        {
          contador = contador + notasAlunos[a][b]
          se (b == 9) 
          {
            escreva("Média: ", (contador / 10))
          }
        }
      }
    }
  }

  funcao mediaSala(cadeia &alunos[][], real &notasAlunos[][]) 
  {
    real soma = 0
    inteiro alunosTurma = 0
    para(inteiro a = 0; a < 40; a++) 
    {
      real contador = 0
      se (alunos[a][0] == "") 
      {
        cadeia cf
        escreva("\n\nA média da turma é de: ", (soma / alunosTurma))
        escreva("\n\nO processo chegou ao fim, finalizando...")
        escreva("\nAperte [ENTER] para confirmar: ") 
        leia(cf)
        pare
      }
      senao 
      {
        alunosTurma = alunosTurma + 1
        para(inteiro b = 0; b < 10; b++) 
        {
          contador = contador + notasAlunos[a][b]
          se (b == 9) 
          {
            soma = soma + (contador / 10)
          }
        }
      }
    }
  }
}