console.log('um', 'dois', 'tres');

console.info('Valor %d - %s', 1, 'um');

console.warn({chave: 'valor'});

function foo() {
    function bar() {
        console.trace();
    }

    bar();
}

foo();

console.table([{nome: "jose", idade: 23}, {nome: "maria", idade:18}, {nome: "beltrano", idade: 44}]);

console.time('inicio 1');

console.time('inicio 2');
setTimeout(() => {
    console.timeEnd('inicio 1');
}, 2000);

console.timeEnd('inicio 2');

