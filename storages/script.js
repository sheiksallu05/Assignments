document.getElementById("feedbackForm").addEventListener("submit", function(e){

e.preventDefault();

let data={

name:document.getElementById("name").value,

email:document.getElementById("email").value,

reason:document.querySelector('input[name="reason"]:checked')?.value,

rating:document.querySelector('input[name="rating"]:checked')?.value,

ease:document.getElementById("ease").value,

quality:document.getElementById("quality").value,

support:document.getElementById("support").value,

score:document.getElementById("score").value,

comments:document.getElementById("comments").value

};

let improve=[];

document.querySelectorAll(".improve:checked").forEach(function(item){

improve.push(item.value);

});

data.improve=improve;

localStorage.setItem("feedback",JSON.stringify(data));

sessionStorage.setItem("feedback",JSON.stringify(data));

alert("Feedback Saved Successfully");

});