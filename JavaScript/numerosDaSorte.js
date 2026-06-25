numerosDaSorte = [37, 14, 26, 5, 94, 87];

for (let i = 0; i < numerosDaSorte.length; i++) {
    let X = numerosDaSorte[i];

    if (X % 2 === 0 && X < 50) {
        console.log(X + " é par e menor que 50");
    } else if (X < 50) {
        console.log(X + " é menor que 50");
    } else if (X > 50) {
        console.log(X + " é maior que 50");
    }
}