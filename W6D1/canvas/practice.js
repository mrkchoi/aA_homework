document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');
  canvas.style.height = "500px";
  canvas.style.width = "500px";

  let ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 20, 20);

  ctx.beginPath();
  ctx.arc(100, 100, 25, 0, 2 * Math.PI);
  ctx.stroke();
});
