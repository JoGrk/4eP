function calculatePrice() {
  const area = document.getElementById("area");
  const square = document.getElementById("square");
  const rectangle = document.getElementById("rectangle");
  const result = document.getElementById("result");
  let price = 0;

  if (square.checked) {
    price = 70 * area.value;
  } else {
    price = 80 * area.value;
  }

  result.innerHTML = `Koszt kafelkowania ${price} zł `;
}
