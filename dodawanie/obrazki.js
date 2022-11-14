let imgList = [ 'jesien1.png', 'jesien2.png', 'jesien3.png', 'jesien4.png']

let kolekcja=document.getElementById("kolekcja");

for(let imgName of imgList){
    let img=document.createElement("img");
    img.src=imgName;
    kolekcja.appendChild(img);
}

const lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."