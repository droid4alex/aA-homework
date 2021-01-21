console.log("Hello from the JavaScript console!");

// Your AJAX request here

// Add another console log here, outside your AJAX request
$.ajax({
  // type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("We have your NY weather!")
    console.log(data);
  },
  error() {
    url: "http://home.openweathermap.org/users/sign_up",
    console.error("get new api key");
  },
});

console.log("Hello again from the JavaScript console!");