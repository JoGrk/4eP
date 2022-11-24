function calculate(sign){
    const first = document.getElementById('firstNumber').value;
    const second = document.getElementById('secondNumber').value;
    const result = document.getElementById('result')

    if(first.length==0 || second.length==0){
        result.innerHTML=("Proszę uzupełnić  obie liczby")
    }
    else{
        console.log("Jest dobrze")
    }

    
}