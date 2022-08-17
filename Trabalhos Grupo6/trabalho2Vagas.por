programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro opcao, vagas[31]
		para(inteiro i=0; i < 31; i++){
			vagas[i]=0
		}
		

		faca{
		escreva("\n\n----------------------------------\n")
		escreva("1-Entrada de Veículo\n")
		escreva("2-Saída de Veículo\n")
		escreva("3-Listar Vagas\n")
		escreva("4-Sair do Progama\n")
		escreva("----------------------------------\n")
		
		escreva("\nInsira a opção desejada: ")
		leia(opcao)
		limpa()
		escolha(opcao){

			caso 1: 
				entrada(vagas)//&
			pare
			caso 2: 
				saida(vagas)//&
			pare
			caso 3: 
				listagem(vagas)
			pare
			caso 4:
				escreva("Você saiu do progama! ")
			pare
			caso contrario: 
				escreva("Essa opção não existe!")
			pare
		}
		
	}enquanto(opcao!=4)
  }
     funcao entrada(inteiro &v[])
  {
  	inteiro vaga

  	escreva("Diga a vaga que você deseja: ")
  	leia(vaga)
  	se(vaga > 0 e vaga < 31){
  		para(inteiro i=1; i < 31; i++){
		se(v[vaga]==0){
			v[vaga]=1			
			escreva("Vaga disponivel! Carro estacionado.")
			Util.aguarde(500)
			pare	
		}senao{			
			escreva("Vaga ocupada.")
			Util.aguarde(500)
			pare
	}
  	}
  }senao{
  	escreva("Esta vaga não existe!")
  	Util.aguarde(500)
  }
}
	funcao saida(inteiro &v[])
  {
  	inteiro vaga

  	escreva("Diga a vaga que o seu carro está: ")
  	leia(vaga)
  	se(vaga > 0 e vaga < 31){
  		para(inteiro i=1; i < 31; i++){
		se(v[vaga]==0){
			escreva("Seu carro não esta nessa vaga!")
			Util.aguarde(500)
			pare	
		}senao{
			v[vaga]=0
			escreva("Parabens encontrou o seu carro!")
			Util.aguarde(500)
			pare
	}
  	}
  }senao{
  	escreva("Esta vaga não existe!")
  	Util.aguarde(500)
  }
}
	funcao listagem(inteiro v[])
	{
		para(inteiro i=1; i <= 30; i++){
			escreva("Vaga numero ",i, " - ",v[i], "\n")
		}
	Util.aguarde(500)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1037; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */