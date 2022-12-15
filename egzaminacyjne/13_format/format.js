function textFormat(color){
    const textchange = document.getElementById('textchange')
    const textSize = document.getElementById('textSize')
    const result = document.getElementById('result')


    result.style.color=color
    result.style.fontStyle = textchange.value
    result.style.fontSize = textSize.value+'%'
}
