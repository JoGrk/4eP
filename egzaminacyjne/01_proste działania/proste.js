function calculate(sign){
    let first = document.getElementById('firstNumber').value;
    let second = document.getElementById('secondNumber').value;
    const result = document.getElementById('result')

    if(first.length==0 || second.length==0){
        result.innerHTML=("Proszę uzupełnić  obie liczby")
    }
    else{
        first = parseInt(first)
        second = parseInt(second)
        
        switch(sign){
            case '+':
                result.innerHTML=` ${first}+ ${second}=${first+second}`
                break;
            case '-':
                result.innerHTML = `${first} - ${second} = ${first-second}`
                break;
            case '*':
                result.innerHTML = `${first} * ${second} = ${first*second}`
                break;
            case '/':
                if(second == 0){
                    result.innerHTML='nie wolno dzielic przez zero'
                }else{
                    result.innerHTML = `${first} / ${second} = ${first/second}`
                }
                break;
        }
        

    }

    
}