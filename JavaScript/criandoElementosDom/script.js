const tituloPrincipal = document.createElement("h1");

tituloPrincipal.id = "titulo";

tituloPrincipal.innerText = "Bem-vindo à nossa Loja Online!";

document.body.appendChild(tituloPrincipal);

const produtoContainer = document.createElement("div");
produtoContainer.className = "produto-card"; // Uma classe opcional para estilização futura

produtoContainer.innerHTML = `
    <h2 class="produto-nome">Notebook Gamer Pro</h2>
    <p class="produto-descricao">
        Um notebook potente equipado com processador de última geração, 16GB de RAM, 
        SSD de 512GB e uma placa de vídeo dedicada perfeita para jogos e edição de vídeo.
    </p>
    <span class="produto-preco" style="font-weight: bold; color: green; font-size: 1.2em;">
        Preço: R$ 4.999,00
    </span>
`;

document.body.appendChild(produtoContainer);