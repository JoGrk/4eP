
function sendImg(){
    const img = document.getElementById('img');
    const niebo = document.getElementById('niebo');
    const lawka = document.getElementById('lawka');
    const zamek = document.getElementById('zamek');

    if(niebo.checked){
        img.src = 'niebo.jpg';
    }
    else if(lawka.checked){
        img.src='ławka.jpg';
    }
    else{
        img.src='zamek.jpg';
    }
}