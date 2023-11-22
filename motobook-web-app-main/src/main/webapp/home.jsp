
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=], initial-scale=1.0">
    <title>Motobook</title>
    <link rel="icon" href="imagens/favicon.png" type="image/png">
    <link rel="shortcut icon" href="imagens/favicon.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    <style>

        ::-webkit-scrollbar {
            width: 10px; /* Largura da barra de rolagem */
        }

        ::-webkit-scrollbar-thumb {
            background-color: #FFA1B1; /* Cor do indicador da barra de rolagem */
            border-radius: 5px; /* Borda arredondada do indicador */
        }

        ::-webkit-scrollbar-thumb:hover {
            background-color: #c33d55; /* Cor do indicador da barra de rolagem ao passar o mouse */
        }

        ::-webkit-scrollbar-track {
            background: #e16f83; /* Cor de fundo da barra de rolagem */
        }

        ::-webkit-scrollbar-button {
            display: none; /* Ocultar os botões de seta da barra de rolagem */
        }

        body {
            margin: 0; 
            padding: 0;
            font-family: 'Poppins', sans-serif;
            font-family: 'Ubuntu', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
        }

        header {
            background: #c33d55;
            /*background: rgb(255,161,177);
            background: linear-gradient(90deg, rgba(255,161,177,1) 0,rgba(195,61,85,1) 100%);*/
            padding: 10px ; /* Espaçamento interno no cabeçalho */
            display: flex; /* Usar flexbox para centralizar elementos */
            justify-content: space-between; /* Espaçamento entre elementos */
            align-items: center; /* Centralizar verticalmente */
            flex-direction: row;
            width: 100%;
        }

        .calendario i {
            font-size: 28px; /* Ajuste o tamanho do ícone conforme necessário */
            padding-left: 40px;
            padding-right: 20px;
            display: flex;
        }

        .calendario a i {
            color: white !important;
            display: flex;
        }

        .profile {
            display: flex;
            margin-right: 10px;
        }

        .profile i {
            font-size: 28px; /* Ajuste o tamanho do ícone conforme necessário */
            padding-right: 10px;
            display: flex;
        }

        .profile a i {
            color: #ffffff !important;
            display: flex;
        }

        .menu-icon {
            font-size: 24px;
            color: #ffffff;
            cursor: pointer;
            margin-left: 10px;
            margin-right: 10px;
            display: flex;
            z-index: 1;
            display: flex;
        }

        .caixa-de-busca {
            display: flex; /* Usar flexbox para alinhar elementos internos */
            align-items: center; /* Centralizar verticalmente */
            background-color: #ffffff; /* Cor de fundo da caixa de busca */
            border-radius: 5px; /* Borda arredondada */
            padding: 5px; /* Espaçamento interno na caixa de busca */
            width: 50%; /* Definir a largura da caixa de busca para ocupar metade do header */
            margin: 0; /* Centralizar horizontalmente */
        }

        .lupa {
            margin-right: 5px; /* Espaçamento à direita da imagem */
        }

        .campo-de-busca {
            border: none; /* Remover a borda padrão do campo de busca */
            outline: none; /* Remover o contorno quando o campo está focado */
            background-color: transparent; /* Remover a cor de fundo padrão */
            flex-grow: 1; /* Faz o campo de busca ocupar todo o espaço disponível */
        }

        .texto-buscar {
            background-color: #ffffff; /* Cor de fundo para o texto "Buscar" */
            padding: 3px 5px; /* Espaçamento interno no texto "Buscar" */
            border-radius: 5px; /* Borda arredondada para o texto "Buscar" */
        }

        /* Estilos do Menu Lateral */
        .menu {
            position: fixed;
            left: -250px; /* Inicia oculto */
            top: 0;
            height: 100%;
            width: 250px;
            background-color: #c33d55;
            transition: left 0.3s;
            overflow-y: auto;
            padding-top: 60px;
            color: #ffffff;
        }

        .menu-header {
            text-align: center;
            padding: 10px;
            background-color: #c33d55; /* Cor de fundo para a parte superior do menu */
        }

        .user-icon {
            font-size: 24px;
            text-align: center;
            margin-bottom: 10px;
        }

        .genres-header {
            text-align: center;
            padding: 10px;
            background-color: #d2566c; /* Cor de fundo para a parte debaixo do menu */
            
        }

        .genre {
            text-align: center;
            padding: 5px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #d2566c
        }

        .genre .arrow-icon {
            font-size: 20px;
            margin-right: 5px;
        }

        .genre-list {
            display: none;
            flex-direction: column;
        }

        .genre.active .genre-list {
            display: flex;
        }

        main {
            display: flex;
        }

        .main {
            flex-grow: 1;
            background-color: #ffffff;
            
        }

        .books, .library {
            padding: 10px;
            
        }

        .main-lateral {
            background-color: #F0889A;
            width: 20%;
        }

        .carrinho {
            display: flex;
            flex-direction: column;
            align-items: center; /* Centraliza horizontalmente */
            justify-content: center; /* Centraliza verticalmente */
            padding: 20px;
        }
        
        .carrinho i {
            font-size: 24px; /* Ajuste o tamanho do ícone conforme necessário */
        }
        
        .texto-carrinho {
            text-align: center;
            margin-top: 10px;
            color: #ffffff;
        }

        .divisoria {
            border: none;
            border-top: 6px solid #e16f83;
            margin: 10px 0;
        }

        footer {
            background-color: #c33d55;
            color:#000000;
            justify-content: center;
            height: 350px;
            display: flex;
            width: 100%;
        }

        h5 {
            color:#ffffff;
        }

        .nav-item mb-2 {
            color: #4b3c2f;
        }

        #newsletter1 {
            background-color: #ffffff; /* Substitua #FF0000 pela cor desejada em formato hexadecimal, RGB ou nome da cor. */
        }

        .row {
            justify-content: center;
        }

        .btn-primary {
          background-color: #c33d55;
          color: #ffffff;
          border: solid 1px #ffffff;
        }
        
        .book {
          display: flex;
          margin-top: 10px;
          margin-left: 10px;
          margin-right: 10px;
          margin-bottom: 10px;
          vertical-align: middle;
          width: 140px;
          height: 170px;
          border: solid 12px #d2566c;
          border-radius: 13px;
          box-shadow: #4B3C2F;
          transition: all 0.5s;
      }

      

      .book:hover {
          transform: scale(1.1);
      }

      .library {
          display: flex;
          margin-top: 10px;
          margin-left: 10px;
          margin-right: 10px;
          margin-bottom: 10px;
          vertical-align: middle;
          width: 80px;
          height: 80px;
          border: solid 8px #d2566c;
          border-radius: 200px;
          transition: all 0.5s;
      }

      .library:hover {
          transform: scale(1.1);
      }


      .flex1 {
          display: flex;
          flex-grow: 1;
          background-color: #ffffff;
          /*justify-content: center;*/
          padding: 10px;
      }

      .flexBook {
          display: flex;
      }

      .fl{
            display: flex;
          flex:1;
      }

      h4 {
        padding-top: 19px;
        color: #c33d55;
        padding-left: 10px;
        font-weight: 200;
      }
      
      .logo-escrita {
        font-family: 'Caveat', cursive;
        color: white;
        display: flex;
        font-size: 36px;
      }



      @media (max-width: 1512px) {
        .main-lateral {
            display: none;
        }
            main {
            }
            body {
        }

        .flex11 {
            display: none;
        }
        }

    </style>
</head>
<body>
<header>
    <div class="menu-icon">
        <i class="fas fa-bars" onclick="toggleMenu()"></i>
    </div>
    <!--<h1 class="logo-escrita">Motobook</h1>-->
    <div class="caixa-de-busca">
        <i class="fas fa-search lupa" style="color: #c33d55;"></i>
        <input name="buscar" type="text" class="campo-de-busca" placeholder="Buscar" onkeydown="enviarBusca(event)">
    </div>

    <div style="display: flex;">
        <div class="calendario">
            <a href="calendario.html">
                <i class="fas fa-calendar-days"></i>
            </a>
        </div>
    
        <div class="profile">
            <a href="profile.html">
                <i class="fas fa-user"></i>
            </a>
        </div>
    </div>
</header>

    <div class="menu" id="menu">
        <div class="menu-header">
            <i class="fas fa-user user-icon"></i>
            <p style="font-size: 20px;">Bem-vindo</p>
        </div>
        <div class="flex-shrink-0 p-3" style="width: 280px; background-color:#d2566c">
              <svg class="bi pe-none me-2" width="10" height="14"><use xlink:href="#bootstrap"/></svg>
              <span class="fs-5 fw-semibold" style="color: #ffffff; font-size: 30px">Gêneros</span>
            <ul class="list-unstyled ps-0">
              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Romance
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Mistério
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Ficção Científica
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Poema
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Contos
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Biografias
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Autoajuda
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Infantis
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Espiritualidade e Religião
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Clássicos
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Drama
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Fantasia
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Crônicas
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>

              <li class="mb-1">
                <i class="fas fa-caret-right arrow-icon" onclick="toggleGenreList(this)"></i><button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true"  style="color:#ffffff; background-color:#d2566c">
                  Acadêmicos
                </button> 
                <div class="collapse show" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                    <li><span>Livro</span></li>
                  </ul>
                </div>
              </li>
              
              <li class="border-top my-3"></li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                  Sair
                </button>
                <div class="collapse" id="account-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">New...</a></li>
                    <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Profile</a></li>
                    <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Settings</a></li>
                    <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Sign out</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
    </div>

    <main>
  
        <div class="main">
          <div class="row gx-4 gx-lg-5 align-items-center my-5">
            <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://dummyimage.com/850x350/dee2e6/6c757d.jpg" style="padding-left: 10px;" alt="..." /></div>
            <div class="col-lg-5">
                <h1 class="font-weight-light" style="color: #c33d55;">Motobook</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At numquam autem dicta! Veritatis ipsum, necessitatibus ex deserunt, nam voluptas corporis obcaecati tempore laborum laboriosam, cum facilis commodi numquam pariatur similique!</p>
                <a class="btn btn-primary" href="#!">Saiba Mais</a>
            </div>
        </div>
        <hr class="divisoria">
          <h4>Bibliotecas Populares</h4>
            <div class="flex1">
                <div class="flexBook">
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book1.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book2.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book3.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book4.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book5.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book6.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book5.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book6.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
                <div class="fl" data-tooltip="Localização" data-flow="bottom"><img class="library" src="book7.jpg"></div>
              </div>
            </div>
            <hr class="divisoria">
            <h4>Queridinhos do Público</h4>
            <div class="flex1">
              <div class="flexBook">
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book1.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book2.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book3.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book4.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book5.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book6.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book7.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book5.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book6.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book7.jpg"></div>
            </div>
          </div>
            <div class="flex1">
              <div class="flexBook">
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book1.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book2.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book3.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book4.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book5.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book6.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book7.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book5.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book6.jpg"></div>
              <div class="fl" data-tooltip="Nome" data-flow="bottom"><img class="book" src="book7.jpg"></div>
            </div>
          </div>
          
        </div>
        <div class="main-lateral">
            <div class="carrinho">
                <i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i>
                <div class="texto-carrinho">
                    <span>Carrinho</span>
                </div>
            </div>
        </div>
    </main>

        <footer class="py-5">
          <div class="row">
            <div class="col-6 col-md-2 mb-3">
              <h5>Motobook</h5>
              <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Sobre Nós</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Políticas de Privacidade</a></li>
                <li class="nav-item mb-2"><a href="termos.html" class="nav-link p-0 text-muted">Termos de Serviço</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Perguntas Frequentes</a></li>
                <li class="nav-item mb-2"><a href="contato.html" class="nav-link p-0 text-muted">Contato</a></li>
              </ul>
            </div>
      
            <div class="col-6 col-md-2 mb-3">
              <h5>Configurações</h5>
              <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="home.html" class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Ajuda</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Acessibilidade</a></li>
              </ul>
            </div>
      
            <div class="col-md-5 offset-md-1 mb-3">
              <form action="home" method="post">
                <h5>Cadastre-se e receba nossa newsletter</h5>
                <p style="color: #4B3C2F;">Resumo mensal do que há de novo e interessante sobre nós</p>
                <div class="d-flex flex-column flex-sm-row w-100 gap-2">
                  <label for="newsletter1" class="visually-hidden">Email address</label>
                  <input name="newsletter1" id="newsletter1" type="email" class="form-control" placeholder="Email address">
                  <button class="btn btn-primary" type="submit">Subscribe</button>
                </div>
              </form>
            </div>
          </div>
      
          <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
            <p>&copy; 2023 Motobook, Inc. Todos direitos reservados.</p>
            <ul class="list-unstyled d-flex">
              <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
              <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
              <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
            </ul>
          </div>
        </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    
    <script>
        
        let menuOpen = false;

        function enviarBusca(event) {
            if (event.key === 'Enter') {
                document.querySelector('.campo-de-busca').value = '';
                
                // Impedir o comportamento padrão do Enter
                event.preventDefault();
            }
        }

        function toggleMenu() {
            const menu = document.getElementById('menu');
            if (menuOpen) {
                menu.style.left = '-250px';
            } else {
                menu.style.left = '0';
            }
            menuOpen = !menuOpen;
        }

        function toggleGenres() {
            const genreList = document.querySelector('.genre-list');
            const arrowIcon = document.querySelector('.genres-header .arrow-icon');
            genreList.classList.toggle('active');
            arrowIcon.classList.toggle('fa-caret-down');
        }

        function toggleGenreList(icon) {
            const genreList = icon.parentElement.querySelector('.genre-list');
            icon.classList.toggle('fa-caret-down');
            genreList.classList.toggle('active');
        }
    </script>
</body>
</html>