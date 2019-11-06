Algoritmo "Melhor Opção de Desconto"
// Disciplina   : [Projeto Integrador de competência em Engenharia de Software]
// Professor   : Fábio Fernandes
// Descrição   : Calcula a melhor opção de desconto para a compra de livros.
// Autor(a)    : Mário Cesar Pinto
// Data atual  : 04/11/2019
Var
   QtdeLivroInformada, CriterioA, CriterioB, CriterioC: real
   TipoCompra, Boleto: caracter

Inicio
   Escreval ("Olá! Vou ajudá-lo a encontrar a melhor opção de desconto.")
   Escreval ("Para isso, preciso de algumas informações:")
   Escreval("A compra é a vista? s/n")
   leia(TipoCompra)
   Escreval ("O pagamento será no boleto? s/n")
   leia(Boleto)
se (TipoCompra = "s") E (Boleto= "s") entao
   Escreval ("Qual a quantidade de livros você deseja comprar?")
   leia (QtdeLivroInformada)
   CriterioA <- 0.25 * QtdeLivroInformada + 7.50
   CriterioB <- 0.50 * QtdeLivroInformada + 2.50
   CriterioC <- 0.65 * QtdeLivroInformada + 1.50
   se CriterioA < CriterioB entao
      escreval ("O Critério A é a melhor opção: R$ 0,25 por livro + R$ 7,50 fixo")
      senao
      se CriterioB < CriterioC entao
         escreval ("O Critério B é a melhor opção: R$ 0,50 por livro + R$ 2,50 fixo")
            senao
            se CriterioC < CriterioB entao
               escreval ("O Critério C é a melhor opção: R$ 0,65 por livro + R$ 1,50 fixo")
            FimSe
      FimSe
   FimSe
senao
escreval ("Não é possível calcular o desconto com as informações fornecidas. A compra deve ser a vista com o pagamento em boleto.")
FimSe
Fimalgoritmo
