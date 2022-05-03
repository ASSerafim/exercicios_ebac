            #Language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a configuração do produto

            Cenário: Dados obrigatórios
            Quando eu "selecionar" cor, tamanho e quantidade
            E esquecer de selecionar um dos "itens"
            Então deve exibir a mensagem de "item obrigatório"

            Cenário: Itens por venda
            Quando eu selecionar "10 produtos" por venda
            E inserir no carrinho "mais de 10 produtos"
            Então deve exibir uma mensagem de alerta "apenas 10 itens por venda"

            Cenário: Limpar produto
            Quando eu selecionar o botão "limpar"
            Então eu devo retornar a "pagina de produtos"

            Esquema do Cenário: Configurar produto
            Quando eu <selecionar> cor, tamanho e quantidade
            E inserir mais <10 produtos> no carrinho
            Então deve exibir a <mensagem> apenas 10 itens por venda
            | selecionar | 10 produtos | mensagem                    |
            | "itens"    | "12"        | "apenas 10 itens por venda" |
            | "itens"    | "11"        | "apenas 10 itens por venda" |


            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o Login na plataforma

            Cenário: Dados válidos
            Quando eu digitar o usuário "aline@gmail.com"
            E a senha "784#"
            Então deve ser direcionado para a tela do "checkout"

            Cenário: Campos inválidos
            Quando eu digitar o usuário "jhenifer@gmail.com"
            E a senha "123$"
            Então deve exibir uma mensagem de alerta "usuários ou senha inválidos"

            Esquema do Cenário: Configurar produto
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem>
            | usuário              | senha  | mensagem                      |
            | "jhenifer@gmail.com" | "htht" | "usuários ou senha inválidos" |
            | "maria@gmail.com"    | "ksks" | "usuários ou senha inválidos" |


            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu conclua meu cadastro

            Cenário: Dados obrigatórios
            Quando eu digitar meu nome "aline serafim"
            E a data de nascimento "03/09/86"
            Então estes dados obrigatórios devem estar com "asteriscos"

            Cenário: Formato inválido
            Quando eu inserir o email "aline.serafim#gmail.com"
            Então deve exibir uma mensagem de alerta "email inválido"

            Cenário: Campos vazios
            Quando eu digitar meu nome "aline serafim"
            Então deve exibir uma mensagem de alerta "campo vazio"

            Esquema do Cenário: Formato inválido
            Quando eu digitar o <email>
            Então deve exibir a <mensagem>
            | email                | mensagem         |
            | "ali.ali$gmail.com"  | "email inválido" |
            | "jheni.94#gmail.com" | "email inválido" |