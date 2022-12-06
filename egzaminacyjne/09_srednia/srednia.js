const person1=document.getElementById('person1')
const person2=document.getElementById('person2')
const person3=document.getElementById('person3')
const button=document.getElementById('button')
const result=document.getElementById('result')

function isGood(data){
    return data.length>0 && !isNaN(data)
}

button.addEventListener('click', ()=>{
    if (isGood(person1.value) && isGood(person2.value) && isGood(person3.value)){
        let a=Number(person1.value)
        let b=Number(person2.value)
        let c=Number(person3.value)
        result.innerHTML=`średnia ocen: ${(a+b+c)/3}`
    }
    else {
        result.innerHTML='wpisz poprawne dane';
    }
})