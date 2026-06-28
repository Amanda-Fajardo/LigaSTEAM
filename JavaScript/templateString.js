function calcularOperacoes(num1, num2) {
    console.log(`A soma entre ${num1} e ${num2} é igual a: ${num1 + num2}`);
    console.log(`A subtração entre ${num1} e ${num2} é igual a: ${num1 - num2}`);
    console.log(`A multiplicação entre ${num1} e ${num2} é igual a: ${num1 * num2}`);
    
    if (num2 === 0) {
        console.log(`Não é possível dividir ${num1} por zero.`);
    } else {
        console.log(`A divisão entre ${num1} e ${num2} é igual a: ${num1 / num2}`);
    }
}

calcularOperacoes(4, 5);