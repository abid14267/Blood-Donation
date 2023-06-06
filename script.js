// LOGIN BUTTON EVENT HANDLER
// const loginButton = document.getElementById("login");
// loginButton.addEventListener("click", function(){
//     const loginArea = document.getElementById("login-area");
//     loginArea.style.display = "none";
//     const transactionArea = document.getElementById("content-area");
//     const emailInfo = document.getElementById("email").value;
//     const passwordInfo = document.getElementById("password").value;
//     if(emailInfo == "boeingb27@gmail.com" && passwordInfo == "boeing"){
//         transactionArea.style.display = "block";
//         alert("Login Successful")
        
//     }
//     else{
//         alert("You have entered wrong password")
//         loginArea.style.display = "block";
//     }
// })


const firstClassTicketIncrease = document.getElementById(
    "firstClass-ticket-increase"
  );
  const firstClassTicketDecrease = document.getElementById(
    "firstClass-ticket-decrease"
  );
  const economyTicketIncrease = document.getElementById(
    "economy-ticket-increase"
  );
  const economyTicketDecrease = document.getElementById(
    "economy-ticket-decrease"
  );
  const bookNow = document.getElementById("book-now");
  
  
  firstClassTicketIncrease.addEventListener("click", function () {
    plusBtnHandler("first-class-input", 150);
  });
  
  firstClassTicketDecrease.addEventListener("click", function () {
    minusBtnHandler("first-class-input", 150);
  });
  
  economyTicketIncrease.addEventListener("click", function () {
    plusBtnHandler("economy-input", 100);
  });
  
  economyTicketDecrease.addEventListener("click", function () {
    minusBtnHandler("economy-input", 100);
  });
  
  bookNow.addEventListener("click", function () {
    const firstClassTicket = document.getElementById("first-class-input").value;
    const economyTicket = document.getElementById("economy-input").value;
    const bookingArea = document.getElementById("booking-area");
    const messageBox = document.getElementById("message-box");
    const confirmationMsg = document.getElementById("confarmation-message");
    if (firstClassTicket == 0 && economyTicket == 0) {
      alert("You have not buy any ticket");
    } else {
      bookingArea.style.display = "none";
      confirmationMsg.style.display = "block";
      document.body.style.backgroundImage = "none";
      document.body.style.background = "#FFFFFF";
      const h4 = document.createElement("h4");
      h4.innerText = `You have booked ${firstClassTicket} first Class and ${economyTicket} economy class tickets`;
      messageBox.appendChild(h4);
    }
  });
  
  
  function plusBtnHandler(inputBar, ticketPrice) {
    const increaseTicketValue = parseInt(document.getElementById(inputBar).value);
    const subtotalPrice = parseInt(document.getElementById("subtotal").innerText);
    const increasing = increaseTicketValue + 1;
    const totalTicketPrice = ticketPrice * 1;
    const addToSubtotal = subtotalPrice + totalTicketPrice;
    const tenPercentVat = addToSubtotal / 10;
    document.getElementById(inputBar).value = increasing;
    document.getElementById("subtotal").innerText = addToSubtotal;
    const totalPriceWithVat = subtotalPrice + ticketPrice + tenPercentVat;
    document.getElementById("total").innerText = totalPriceWithVat;
    document.getElementById("vat").innerText = tenPercentVat;
  }
  
  function minusBtnHandler(inputBar, ticketPrice) {
    const decreaseTicketValue = parseInt(document.getElementById(inputBar).value);
    const subtotalPrice = parseInt(document.getElementById("subtotal").innerText);
    if (decreaseTicketValue <= 0) return;
    const addToSubtotal = subtotalPrice - ticketPrice;
    const decreasing = decreaseTicketValue - 1;
    const tenPercentVat = addToSubtotal / 10;
    const totalTicketPrice = subtotalPrice - ticketPrice + tenPercentVat;
    document.getElementById(inputBar).value = decreasing;
    document.getElementById("subtotal").innerText = subtotalPrice - ticketPrice;
    document.getElementById("vat").innerText = tenPercentVat;
    document.getElementById("total").innerText = totalTicketPrice;
  }
  