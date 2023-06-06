function validateform(){  
  
  alert("Good job!, Donor Registration!, successfully");

  var name=document.donationForm.name.value;   
  if (name==null || name==""){  
    alert("Name can't be blank");  
    return false;  
  }
  var email=document.donationForm.email.value; 
  var atposition = email.indexOf("@"); 
  var dotposition = email.lastIndexOf(".");

  if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
      alert("Not a valid email address");  
      return false;  
    }

    var phone=document.donationForm.phone.value;
    if(isNaN(phone)){
      document.getElementById.innerHTML="Enter Numeric value only";  
      return false;  
    }else{  
      return true;  
      } 

  }  
  // function popup(){
  // //  swal.fire('Donor registered successfull').then((result) => {
  // // if (result.isConfirmed) {
  // //   return;
  // // }});
  // alert('Donor registered successfull');

  // }


  // Get the reference to the button
  var button = document.getElementById("clickButton");

  // Add an event listener to the button
  button.addEventListener("click", function() {
    // Redirect to another page
    window.location.href = "updatedonor.html";
  });
