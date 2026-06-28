const titulo = document.getElementById("titulo");
const listaNaoOrdenada = document.querySelector("ul");
const linkProz = document.querySelector("a");
const listaOrdenada = document.getElementById("lista-ordenada");

titulo.innerText = "Bem vindo à pratica das propriedades InnerText e InnerHTML";
linkProz.innerText = "Visite o site da Proz Educação";

listaNaoOrdenada.innerHTML = `
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
`;

listaOrdenada.innerHTML = `
    <li><a href="https://www.google.com" target="_blank">Google</a></li>
    <li><a href="https://www.github.com" target="_blank">GitHub</a></li>
    <li><a href="https://developer.mozilla.org" target="_blank">MDN Web Docs</a></li>
`;