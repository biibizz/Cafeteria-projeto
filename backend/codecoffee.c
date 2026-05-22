#include <stdio.h>
#include <string.h>

//Define é uma variável constante
//Variável imutável valor fixo

#define MAX_PRODUTOS 10
#define MAX_PEDIDOS 20

// Estrutura dos produtos
// Struct Cria uma variável composta por varios campos

struct Produto {
    int id;
    char nome[50];
    float preco;
};


// Estrutura dos pedidos

struct Pedido {
    int numeroPedido;
    char produto[50];
    int quantidade;
    float total;
};

int main() {

    // Variáveis e vetores
    //Os vetores iram guardar nossos dados

    struct Produto produtos[MAX_PRODUTOS];
    struct Pedido pedidos[MAX_PEDIDOS];

    int totalProdutos = 0;
    int totalPedidos = 0;

    int opcao;

    do {

        printf("\n=============================\n");
        printf("   SISTEMA DA CAFETERIA\n");
        printf("=============================\n");
        printf("1 - Cadastrar Produto\n");
        printf("2 - Listar Produtos\n");
        printf("3 - Fazer Pedido\n");
        printf("4 - Listar Pedidos\n");
        printf("0 - Sair\n");
        printf("=============================\n");
        printf("Escolha uma opcao: ");
        scanf("%d", &opcao);

        // Estrutura de decisão
        switch(opcao) {

            case 1:

                // Cadastro de produtos

                if(totalProdutos < MAX_PRODUTOS) {

                    produtos[totalProdutos].id = totalProdutos + 1;

                    printf("\nNome do produto: ");
                    scanf(" %[^\n]", produtos[totalProdutos].nome);

                    printf("Preco do produto: ");
                    scanf("%f", &produtos[totalProdutos].preco);

                    totalProdutos++;

                    printf("\nProduto cadastrado com sucesso!\n");

                } else {
                    printf("\nLimite de produtos atingido!\n");
                }

                break;

            case 2:

                // Listagem de produtos
                if(totalProdutos == 0) {

                    printf("\nNenhum produto cadastrado.\n");

                } else {

                    printf("\n===== PRODUTOS =====\n");

                    // Estrutura de repetição
                    for(int i = 0; i < totalProdutos; i++) {

                        printf("ID: %d\n", produtos[i].id);
                        printf("Nome: %s\n", produtos[i].nome);
                        printf("Preco: R$ %.2f\n", produtos[i].preco);
                        printf("----------------------\n");
                    }
                }

                break;

            case 3:

                // Fazer pedido

                if(totalProdutos == 0) {

                    printf("\nCadastre produtos primeiro!\n");

                } else {

                    int idProduto;
                    int quantidade;
                    int encontrado = 0;

                    printf("\nDigite o ID do produto: ");
                    scanf("%d", &idProduto);

                    printf("Quantidade: ");
                    scanf("%d", &quantidade);

                    for(int i = 0; i < totalProdutos; i++) {

                        if(produtos[i].id == idProduto) {

                            pedidos[totalPedidos].numeroPedido = totalPedidos + 1;

                            strcpy(
                                pedidos[totalPedidos].produto,
                                produtos[i].nome
                            );

                            pedidos[totalPedidos].quantidade = quantidade;

                            // Operadores matemáticos
                            pedidos[totalPedidos].total =
                                produtos[i].preco * quantidade;

                            totalPedidos++;
                            encontrado = 1;

                            printf("\nPedido realizado com sucesso!\n");
                            printf("Total: R$ %.2f\n",
                                   produtos[i].preco * quantidade);

                            break;
                        }
                    }

                    if(encontrado == 0) {
                        printf("\nProduto nao encontrado!\n");
                    }
                }

                break;

            case 4:

                // Listar pedidos

                if(totalPedidos == 0) {

                    printf("\nNenhum pedido realizado.\n");

                } else {

                    printf("\n===== PEDIDOS =====\n");

                    for(int i = 0; i < totalPedidos; i++) {

                        printf("Pedido #%d\n",
                               pedidos[i].numeroPedido);

                        printf("Produto: %s\n",
                               pedidos[i].produto);

                        printf("Quantidade: %d\n",
                               pedidos[i].quantidade);

                        printf("Total: R$ %.2f\n",
                               pedidos[i].total);

                        printf("----------------------\n");
                    }
                }

                break;

            case 0:
                printf("\nEncerrando sistema...\n");
                break;

            default:
                printf("\nOpcao invalida!\n");
        }

    } while(opcao != 0);

    return 0;
}