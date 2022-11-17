

function addProduct(){
    const product=document.getElementById('product');
    const shoppingList = document.getElementById('shoppingList')
    const error = document.getElementById('error')
    
    if(product.value.length>2){
            const listItem = document.createElement('li')
            listItem.innerHTML=product.value;
            shoppingList.appendChild(listItem)
            
    }
    else{
        error.innerHTML="tekst musi miec co najmniej 2 znaki"
    }


   product.value=""


}