let shoppingList = document.getElementById("shoppingList");
let products = ["chleb", "cukier", "cytryny", "ocet", "gruszki"];

for (let product of products) {
  addProduct(product);
}

function addProduct(product) {
  let li = document.createElement("li");
  li.innerText = product;
  shoppingList.appendChild(li);
}

console.log("test");
