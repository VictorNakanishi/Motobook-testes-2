<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="imagens/favicon.png" type="image/png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Ubuntu:wght@300&display=swap" rel="stylesheet"> 
    <title>Login</title>
    <style>
        body {
            background: rgb(255,161,177);
background: linear-gradient(90deg, rgba(255,161,177,1) 0%, rgba(195,61,85,1) 80%, rgba(195,61,85,1) 100%);
            margin: 0;
            font-family: 'Poppins', sans-serif;
            font-family: 'Ubuntu', sans-serif;
        }

        main {
            display: flex;
        }

        .esquerda {
            display: flex;
            justify-content: center;
            width: 50vw;
            height: 100vh;
            flex-direction: column;
        }

        .direita {
            display: flex;
            justify-content: center;
            width: 50vw;
            height: 100vh;
            flex-direction: column;
            
        }

        .card {
            display: flex;
            padding: 100px;
            background-color:#ffffff;
            box-sizing: border-box;
            justify-content: center;
            align-items: center;
            width: 80%;
            height: 100vh;
            flex-direction: column;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .direita > p {
            color: #ffffff;
            text-align: center;
            font-size: 20px;
        }

        .div1 {
            background-color: #ffffff;
            
        }

        p {
            color: #d2566c;
            font-size: 50px;
            text-align: center;
            justify-content: center;
            vertical-align: top;
        }

        .p1{
            color: #ffffff;
            font-size: small;
            margin-right: 15%;
            text-align: justify;
        }

        .pErro {
            color: rgb(236, 10, 10);
            font-size: 15px;
        }

        h1 {
            color: #ffffff;
            text-align: center;
            margin-right: 15%;
        }



        .h4-1 {
            color: #4B3C2F;
            text-align: center;
        }

        button {
            background-color: #c33d55;
            color: #fff;
            border-radius: 10px;
            height: 6vh;
            width: 64%;
            font-size: 25px;
            border: none;
            cursor: pointer;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        img {
            width: 10vw;
            height: 20vh;
            padding-top: 15%;
            text-align: center;
        }

        hr {
            color: #886749;
            width: 25vw;
            margin-right: 32%;
        }

        input {
            width: 32vw;
            height: 4vh;
            border: 1px solid #d2566c;
            border-radius: 5px;
        }

        a {
            color: #d2566c;
        }

        button > a {
            color: white;
        }

        button:hover {
            background-color: #e16f83;
        }

        .a:hover {
            color: #e16f83;
        }

        label {
            color: #d2566c;
            font-size: 25px;
        }
        
        form {
            flex-direction: column;
            display: flex;
            align-items: center;
        }

        @media (max-width: 820px) {
            .direita {
                display: none;
                margin: 0;
            }

            .esquerda {
                width: 100%;
                margin: 0;
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                
            }

            .card {
                padding: 20px;
            }

            form {
                width: 100%;
            }

            input {
                width: 100%;
            }

            div {
                width: 100%;
            }

            img {
                min-width: 26%;
                height: auto;
            }

            main {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }

            body {
            background: rgb(255,161,177);
background: linear-gradient(90deg, rgba(255,161,177,1) 0%, rgba(195,61,85,1) 80%, rgb(255, 109, 135) 100%);
        }
        }

    </style>
</head>
<body>
    <main>
        <div class="esquerda">
            <div class="card">
                <img src="imagens/login.jpg" alt="login">
                <p> Login </p>
                <form method="post" action="login">
                    
                    <div>
                        <label for="user"> Email ou CPF </label>
                        <br>
                        <input type="text" id="user" name="user" required/>
                        <br>
                        <br>
                        <label for="senha"> Senha </label>
                        <br>
                        <input type="password" id="senha" name="senha" required/>
                    </div>

                    <div class="div1">
                        <p class="pErro" id="errorLogin"></p>
                    </div>
                    
                        <a href="redefinirSenha.html" class="a a-redefinir">
                            <h4> Esqueceu a sua senha? </h4> 
                        </a>

                    <br>
                    <br>
                    <h4 class="h4-1"> 
                        Já é cadastrado? 
                        <a href="cadastro.html" class="a"> Cadastra-se </a>
                    </h4>
                    <br>
                    <button type="submit" onclick="verificarLogin()"><a style="text-decoration: none;" href="home.html">Entrar</a></button>
                    <br>
                    <br>
                </form>
            </div>
        </div>
        <div class="direita">
            <h1> Sobre o Motobook </h1>
            <hr>
            <br>
            <br>
            <p class="p1"> Nós da equipe ”Livraria dos Sonhos” decidimos desenvolver um sistema chamado Motobook, onde nossos clientes poderão alugar livros de bibliotecas públicas locais e solicitar a entrega no seu endereço. </p>
            <p class="p1"> O objetivo do Motobook é forneceracesso às diversas bibliotecas comunitárias, assim auxiliando na acessibilidade dos livros paras as pessoas, seja para aquelas que desejam iniciar na leitura ou para aquelas que por algum motivo, acabam não tendo tempo de ir até uma bilbioteca ou não possuem condiçõoes financieras.</p>
            <p class="p1"> Como forma de ajudar o cliente a manter o seu conforto mesmo após ter alugado o livro, disponibilizaremos uma possibilidade de contratar um dos nossos entregadores para devolver o livro alugado até a respectia biblioteca. </p>
        </div>

        <script>
            function verificarLogin() {
    
                var Nome = document.getElementById("nome").value;
                var Senha = document.getElementById("senha").value;

            
                var correctNome = "Cliente";
                var correctSenha = "Senha.123";

                if (nome === correctNome && senha === correctSenha) {
                
                    alert("Login bem-sucedido!");
                } else {
                
                    var errorLogin = document.getElementById("errorLogin");
                    errorLogin.textContent = "Nome de usuário ou senha incorretos. Verifique os dados.";
                }
            }
        </script>
    </main>
</body>
</html