<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@700&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">
  <title>Cadastro</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: rgb(255,161,177);
background: linear-gradient(90deg, rgba(255,161,177,1) 0%, rgba(195,61,85,1) 48%, rgba(255,161,177,1) 100%);
      color: white;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }
    
    header {
      background-color: white;
      padding: 0px 0;
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
    }

    .logo img{
      padding-left: 40px;
      max-height: 100px;
    }

    .login-button {
      padding-right: 40px;
    }
    
    .login-button button {
      background-color: #c33d55;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 18px;
      cursor: pointer;
    }
    
    .login-button button:hover {
      background-color: #e16f83;
    }

    form {
      background-color: white;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      padding: 20px;
      width: 400px;
      text-align: center;
      margin-top: 5%;
    }

    h1 {
      color: #d2566c;
      font-size: 36px;
      letter-spacing: 4px;
      margin-bottom: 20px;
            font-weight: bold;
            font-family: 'Ubuntu', sans-serif;
            font-weight: 550;
    }

    .input {
      width: 100%;
      max-width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #d2566c;
      border-radius: 5px;
    }

    .label-input {
      
      display: none;
      text-align: left;
      margin-top: 10px;
      color: #d2566c;
    }

    a, button {
      background-color: #c33d55;
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 20px;
      cursor: pointer;
      margin-top: 20px;
      border-radius: 4px;
      width: 100%;
    }

    a {
      text-decoration: none;
    }

    button:hover {
      background-color: #e16f83;
    }

    a:hover {
      background-color: #e16f83;
    }

    .button {
      display: none;
      background-color: #ffffff;
      color: #c33d55;
      border: none;
      padding: 10px 20px;
      font-size: 20px;
      cursor: pointer;
      margin-top: 20px;
      border-radius: 40px;
      width: 10%;
    }

  </style>
</head>
<body>
    <header>
        <div class="logo">
          <img src="icon.png" alt="Logo">
        </div>
        <div class="login-button">
            <a href="login.html">Entrar</a>
        </div>
      </header>
  <form>
    <h1>Cadastro</h1>
    <label for="nomeCompleto" class="label-input">Nome Completo</label>
    <input type="text" id="nomeCompleto" class="input" placeholder="Digite o seu nome completo"  required>
    
    <label for="email" class="label-input">Email</label>
    <input type="text" id="email" class="input" placeholder="Digite o seu email" required>

    <label for="senha" class="label-input">Senha</label>
    <input type="password" id="senha" class="input" placeholder="Digite o sua senha"  required>

    <label for="telefone" class="label-input">Telefone</label>
    <input type="text" id="telefone" class="input" placeholder="Digite o seu telefone" required>

    <label for="cpf" class="label-input">CPF</label>
    <input type="text" id="cpf" class="input" placeholder="Digite o seu CPF" required>
    <label for="cidade" class="label-input">Cidade</label>
    <input type="text" id="cidade" class="input" placeholder="Digite a sua Cidade" required>

    <label for="estado" class="label-input">Estado</label>
    <input type="text" id="estado" class="input" placeholder="Digite o seu Estado" required>

    <label for="pais" class="label-input">País</label>
    <input type="text" id="pais" class="input" placeholder="Digite o seu País" required>

    <label for="complemento" class="label-input">Complemento</label>
    <input type="text" id="complemento" class="input" placeholder="Digite o complemento" required>

    <label for="cep" class="label-input">CEP</label>
    <input type="text" id="cep" class="input" placeholder="Digite o seu CEP" required>

    <button type="submit">Cadastrar</button>
    
  </form>
  <button type="submit" class="button">Cadastrar</button>
</body>
</html>