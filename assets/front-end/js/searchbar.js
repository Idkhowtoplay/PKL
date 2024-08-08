function myFunction(){
    let input = document.getElementById('cari_toko').value.trim();
    let x = document.getElementsByClassName('toko');
    let res = document.getElementById('result');
    let noresult = document.getElementById('noresult');
    let resfound = false;
    for(let i = 0 ; i < x.length ; i++){
       if(x[i].innerText.toLowerCase().indexOf(input.toLowerCase()) > -1){
           x[i].style.display="";
           x[i].style.color="red";
           resfound = true;
       }else{
           x[i].style.display="none";
       }
     }
     
     if(resfound) {
        noresult.style.display = "none"
     } else {
        noresult.style.display = "inline-block"
     };
    }