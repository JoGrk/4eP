const password = document.querySelector('#password');
const checkPass = document.querySelector('#checkPass');
const textSpace = document.querySelector('#textSpace');


checkPass.addEventListener('click',(e) =>{
    if(password.value.length==0){
        textSpace.innerHTML = 'WPISZ HASŁO'
        textSpace.style.color = 'red';
    }
    else if(password.value.length>=7 && isDigit(password.value)){
        textSpace.style.color = "green";
        textSpace.innerHTML = "DOBRE"
    }
    else if(password.value.length>=4){
        textSpace.style.color = "blue";
        textSpace.innerHTML = "ŚREDNIE"
    }
    else{
        textSpace.style.color = "gold";
        textSpace.innerHTML = "SŁABE"
    }
})

function isDigit(digit) {
    const reg = /[0-9]/
    return reg.test(digit)
}