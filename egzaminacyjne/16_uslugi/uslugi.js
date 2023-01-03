const lista = [ 'naprawa komputera', 'odzyskiwanie danych', 'problemy z oprogramowaniem', 'konfiguracja sieci LAN', 'inne'];

const selectListaDiv = document.querySelector('#selectLista');

function addOptionToSelect(text) {
    const optionDiv = document.createElement('option')

    optionDiv.textContent=text
    
    selectListaDiv.appendChild(optionDiv)
}

lista.forEach(item=>{
    addOptionToSelect(item)
})