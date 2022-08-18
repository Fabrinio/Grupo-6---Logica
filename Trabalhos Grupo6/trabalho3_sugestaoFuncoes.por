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
			
				consulta()
				internacao(vagas) 
				listarQuartos(vagas) 
				faturamento()
		
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
	cadeia nome, tel
	inteiro quarto

		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite seu telefone: ")
		leia(tel)
		
	  	escreva("Diga qual quarto deseja: ")
	  	leia(quarto)
	  	
	  	se(quarto > 0 e quarto < 21) {
	  		para(inteiro i=0; i < 20; i++)
	  		{
				se(v[quarto-1]==0){ 
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
	  	Util.aguarde(1100)
	  	limpa()
	}
	
	funcao listarQuartos(inteiro v[])
	{
		para(inteiro i=0; i < 20; i++){
			escreva("|",i+1,"| - ")
			se(v[i]==0){
				escreva("Vago\n")
			}senao{ escreva("Ocupado\n") }
			Util.aguarde(250)
		}
		escreva("\n\n")
	}

	funcao faturamento()
	{
	inteiro totalArrecadado

		totalArrecadado=(qtdConsultas*preConsulta)+(qtdInternacao*preInternacao)

		escreva("\nTotal consultas: ", qtdConsultas,"  - R$", preConsulta) Util.aguarde(500)
		escreva("\nTotal internações: ", qtdInternacao,"  - R$", preInternacao) Util.aguarde(500)
		escreva("\n\nO total arrecadado foi: R$",totalArrecadado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1685; 
 * @DOBRAMENTO-CODIGO = [6];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */