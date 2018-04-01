function* EventGenerator() {
    let num = 2;
    while (true) {
        yield num;
        num = num + 2;
    }
}

let iterator = EventGenerator();
let a1 = iterator.next().value;
let a2 = iterator.next().value;
let a3 = EventGenerator().next().value;
let a4 = iterator.next().value;

function* NinjaGenerator() {
    yield "Yoshi";
    return "Hatori";
    yield "Hanzo";
}

const ninjas = []
for (let ninja of NinjaGenerator()) {
    ninjas.push(ninja)
}

console.log(ninjas)