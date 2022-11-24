function oblicz(){
    const piling = document.getElementById('piling');
    const maska = document.getElementById('maska');
    const mTwarzy = document.getElementById('mTwarzy');
    const rBrwi = document.getElementById('rBrwi');
    const wynik = document.getElementById('wynik')
    let cena=0;
    if(piling.checked){
        cena+=45;
    }
    if(maska.checked){
        cena+=30;
    }
    if(mTwarzy.checked){
        cena+=20;
    }
    if(rBrwi.checked){
        cena+=5;
    }
    wynik.innerHTML = `Cena zabiegów: ${cena}`;
}