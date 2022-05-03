            #Language: pt

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

            Esquema do Cenário: Usuário ou senha inválida
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem>
            | usuário              | senha  | mensagem                      |
            | "jhenifer@gmail.com" | "htht" | "usuários ou senha inválidos" |
            | "maria@gmail.com"    | "ksks" | "usuários ou senha inválidos" |