/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

// Get the form element
const searchForm = document.querySelector('form');

// Add a submit event listener to the form
searchForm.addEventListener('submit', (event) => {
  event.preventDefault(); // prevent form submission

  // Get the input values
  const bloodGroup = document.querySelector('#blood-group').value;
  const city = document.querySelector('#city').value;
  const state = document.querySelector('#state').value;
//  const pincode = document.querySelector('#pincode').value;

  // TODO: Perform the search using the input values
  // ...

  // Get the search results element
  const searchResults = document.querySelector('.recipient-results');

  // TODO: If search results are found, display them in the element
  // Otherwise, display a "No results found" message
  // ...
});

