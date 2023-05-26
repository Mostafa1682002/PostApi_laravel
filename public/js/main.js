var allAlerts=document.querySelectorAll('.close-alert');


allAlerts.forEach((e)=>{
    e.addEventListener('click',()=>{
        e.parentElement.remove();
    })
})
