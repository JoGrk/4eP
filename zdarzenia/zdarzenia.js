
function change(p){
    // console.log(p)
    let p1 = document.getElementById('p1');
    let p2 = document.getElementById('p2');

    if (p === 'p1'){
        p1.innerHTML = "Szarość"
        p1.style.color='grey'
        p2.innerHTML = "Czerwień"
        p2.style.color='red'; 
    }
    else{
        p1.innerHTML = "Czerwień"
        p1.style.color='red';
        p2.innerHTML = "Szarość"
        p2.style.color='grey';
    }
}
let mouse = document.getElementById('mouse');

function toGrey(){
    mouse.src='szara.jpg'
}
function toColor(){
    mouse.src='myszka.jpg'
}
function toRed(){
    mouse.src='czerwona.jpg'
}