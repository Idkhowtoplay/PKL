const btn = document.getElementById('btn');
btn.addEventListener('click', function(){
    Swal.fire(
        'Good job!',
        'You clicked the button!',
        'success'
      );
})