function kelwin() {
  const celsius = document.getElementById("celsius");
  const resultDiv = document.querySelector("#result");
  if (celsius.value === "" || isNaN(celsius.value)) {
    alert("Błąd danych");
  } else {
    const degrees = parseInt(celsius.value);
    resultDiv.textContent = degrees + 273.15;
  }
}
function fahren() {
  const celsius = document.getElementById("celsius");
  const result = document.getElementById("result");
  if (celsius.value === "" || isNaN(celsius.value)) {
    alert("Błąd danych");
  } else {
    const innaczej = parseInt(celsius.value);
    result.textContent = innaczej * 1.8 + 32;
  }
}
