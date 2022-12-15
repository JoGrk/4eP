const rules = document.getElementById('rules');
const result = document.getElementById('result');

function sendForm(){
    console.log('cokolwiek');
    if (rules.checked){
        result.innerHTML="xxxx"
        result.style.color='black'
    }
    else{
        result.innerHTML="Musisz zapoznać się z regulaminem"
        result.style.color='red'
    }
}