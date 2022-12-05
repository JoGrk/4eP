const calcButton = document.getElementById('calculate')
const area = document.getElementById('area');
const rooms = document.getElementById('rooms');
const tile = document.getElementById('tile');
const result =document.getElementById('result')
calcButton.addEventListener('click', ()=>{

   let valueArea=Number(area.value)
   let valueRooms=Number(rooms.value)

   let price=valueArea*4000+valueRooms*1000;
   if(tile.checked){
    price+=2000
   }
   result.innerHTML=`KOSZT MIESZKANIA: ${price}zł`
})