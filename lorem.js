const lorem = "    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam porro pariatur officiis ratione ipsum. Labore a sequi ex ullam beatae minima fugit neque, alias perspiciatis blanditiis ab, accusantium doloremque numquam.";

let mainLorem = document.getElementById('mainLorem');

function genereLorem(){
    let p = document.createElement('p');
    p.innerHTML = lorem;
    mainLorem.appendChild(p);
}

genereLorem();

console.log(lorem);