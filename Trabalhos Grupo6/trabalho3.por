programa
{
	inclua biblioteca Util
	inteiro qtdConsultas=0, preConsulta=0
	
	funcao inicio()
	{
		inteiro vagas[20], opcao

		faca{
			escreva("\nHOSPITAL - XPTO")
			escreva("\n----------------------------------")
			escreva("\n1-Consulta Ambulatorial")
			escreva("\n2-Internação")
			escreva("\n3-Listar Quartos")
			escreva("\n4-Faturamento")
			escreva("\n5-Sair do Progama")
			leia(opcao)

			escolha(opcao){

			caso 1: 
				consulta()
			pare
			caso 2: 
				internacao(vagas)
			pare
			caso 3: 
				listarQuartos(vagas)
			pare
			caso 4: 
				faturamento(vagas[])
			pare
			caso 5: 
				escreva("Você saiu do progama!")
			pare
			caso contrario: 
				escreva("Opção inválida!")
			pare
		}

		}enquanto(opcao!=5)

		
	}
	funcao consulta()
	
    {
    cadeia nome, tel, esp

        escreva("Digite nome do paciente: ")
        leia(nome)
        escreva("Digite telefone do paciente: ")
        leia(tel)
        escreva("Digite a especialidade da consulta: ")
        leia(esp)

        qtdConsultas++

        se(esp=="pediatria"){
            preConsulta=preConsulta+150
        }senao{
            preConsulta=preConsulta+120
        }
        limpa()
    }
	funcao internacao(inteiro &v[])
	{
		inteiro
		para(inteiro i=0; i < 20; i++){
			v[i]=0
		}
		escreva("Diga a quarto que você deseja: ")
          leia(quarto)
      se(quarto > 0 e quarto < 21){
          para(inteiro i=1; i < 21; i++){
        		se(v[quarto]==0){
            		v[quarto]=1
            		escreva("Quarto reservado com sucesso!")
            		Util.aguarde(3000)
            		pare
        		}senao{
            			escreva("Quarto ocupado.")
           		 Util.aguarde(3000)
            		pare
    				}
     	}
  		}senao{
      		escreva("Esta quarto não existe!")
     		 Util.aguarde(3000)
  		}
	
	}
	funcao listarQuartos(inteiro v[])
	{
		para(inteiro i=0; i < 20; i++){
			escreva(v[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1839; 
 * @DOBRAMENTO-CODIGO = [45, 66, 93];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */