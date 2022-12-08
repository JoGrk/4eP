const guests = document.querySelector('#guests');
const improve = document.querySelector('#improve');
const count = document.querySelector('#count');
const result = document.querySelector('#result');

count.addEventListener('click', ()=>{
    let guestsN = parseInt(guests.value)
    if (isNaN(guestsN) ||  guestsN<=0){
        result.innerHTML = 'Podaj liczbę gości'

    }
    else{
        let price = guestsN * 100
        if(improve.checked){
            price = price * 1.30
        }
        result.innerHTML=`Koszt twojego wesela to ${price}zł`
    }
    
})