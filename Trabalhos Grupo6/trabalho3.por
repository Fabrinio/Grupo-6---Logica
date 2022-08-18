programa
{
	inclua biblioteca Util
	inteiro qtdConsultas=0, preConsulta=0
	inteiro qtdInternacao=0, preInternacao=0

	funcao inicio()
	{
		inteiro vagas[20], opcao
		para(inteiro i=0; i < 20; i++)
		{	vagas[i]=0 	}

		faca{
			escreva("HOSPITAL - XPTO")
			escreva("\n----------------------------------")
			escreva("\n1-Consulta Ambulatorial")
			escreva("\n2-Internação")
			escreva("\n3-Listar Quartos")
			escreva("\n4-Faturamento")
			escreva("\n5-Sair do Progama")
			leia(opcao)
			limpa()
			
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
	//			faturamento(vagas[])
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
		inteiro quarto

	  	escreva("Diga a quarto que você deseja: ")
	  	leia(quarto)
	  	
	  	se(quarto > 0 e quarto < 21) {
	  		para(inteiro i=0; i < 20; i++)
	  		{
				se(v[quarto-1]==0){ 
				/* Usando "quarto-1" resolvemos o peoblema do "quarto 0",
				e as entradas se encaixam no vetor */
					escreva("Quarto reservado com sucesso!")
					
					v[quarto-1]=1
					qtdInternacao ++
					preInternacao=preInternacao+500		
					pare	
					
				}senao{	escreva("Quarto ocupado.")
						pare }
		  	} 
		  		
	  	}senao{
	  		escreva("Este quarto não existe!") }

	  	escreva("\n...voltando para o menu")	
	  	Util.aguarde(1500)
	  	limpa()
	}
	
	funcao listarQuartos(inteiro v[])
	{
		para(inteiro i=0; i < 20; i++){
			escreva(v[i],"  ")
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {qtdInternacao, 5, 9, 13}-{preInternacao, 5, 26, 13}-{v, 73, 28, 1}-{quarto, 75, 10, 6}-{v, 105, 30, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */