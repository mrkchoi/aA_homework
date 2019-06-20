document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  let form = document.querySelector(".list-container form");
  let input = document.querySelector(".favorite-input");
  let listSF = document.querySelector("#sf-places");

  form.addEventListener('submit', addItem);

  function addItem(e) {
    e.preventDefault();
    let value = input.value;
    let li = document.createElement("li");

    li.textContent = value;
    listSF.appendChild(li);
    input.value = '';
  }



  // adding new photos

  // --- your code here!

  let photoBtn = document.querySelector(".photo-show-button");

  photoBtn.addEventListener('click', toggleForm);

  function toggleForm(e) {
    e.preventDefault();

    let photoFormContainer = document.querySelector('.photo-form-container');
    let formClasses = Array.from(photoFormContainer.classList);

    if (formClasses.includes('hidden')) {
      photoFormContainer.className = 'photo-form-container';
    } else {
      photoFormContainer.className = 'photo-form-container hidden';
    }
  }


});
