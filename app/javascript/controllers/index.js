// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

/*
var laptop_cards = document.querySelectorAll(".laptop-card")

laptop_cards.forEach(laptop_selected => {
    laptop_selected.addEventListener('click', () => {
        laptop_cards.forEach(laptop => {
            if (laptop != laptop_selected) {
                laptop.classList.remove("bg-laptopcard-select")
                laptop.classList.add("bg-whitesmoke-titles")
            }
        })

        laptop_selected.classList.contains("bg-laptopcard-select") 
        ?
        (laptop_selected.classList.remove("bg-laptopcard-select"), 
        laptop_selected.classList.add("bg-whitesmoke-titles")) 
        : 
        (laptop_selected.classList.remove("bg-whitesmoke-titles"), 
        laptop_selected.classList.add("bg-laptopcard-select"));

    });
});
*/
function handleClick(element, object) {
    // Alterar classes da div
    element.classList.add('bg-laptopcard-select');

    // Criar uma div ao lado
    var newDiv = document.createElement('div');
    newDiv.innerText = object.name;
    document.body.appendChild(newDiv);
}