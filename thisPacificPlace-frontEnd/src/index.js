const citiesURL = `http://localhost:3000/cities`
const usersURL = `http://localhost:3000/users`
const photosURL = `http://localhost:3000/photos`
const foodsURL = `http://localhost:3000/foods`

const cityList = document.getElementById('list-group');
const cityClass = document.getElementsByClassName('list-group-item');
let cityDetail = document.getElementById('city-detail');
let cityH2 = document.createElement('h2');
let cityImg = document.createElement('img');
let name = document.getElementById('name')
let lowerDiv = document.getElementById('lower')
let loginFormId = document.getElementById('login')
document.addEventListener('DOMContentLoaded', event => {
   
  fetch(citiesURL)
   .then(resp => resp.json())
   .then(cityData => {
       displaycities(cityData);
       login(cityData);
      //  console.log("City Data: ", cityData)
   })


   function displaycities(cityData) {
       for(let oneCity of cityData) {
            console.log("Just one", oneCity)
           let li = document.createElement('li')
           li.setAttribute('class', 'list-group-item')
           li.innerText = oneCity.name;
           cityList.appendChild(li)

           li.addEventListener('click', event => {
             console.log("event", event)
             cityImg.src = oneCity.image_url;
             cityH2.innerText = oneCity.name;
             cityDetail.appendChild(cityImg)
             cityDetail.appendChild(cityH2) 
             displayFoodPhoto(cityData);                                                     
           })
       }
   }
   function login(cityData) {
       loginFormId.addEventListener('submit', event => {
           event.preventDefault();
           let loginValue = name.value;
           console.log(loginValue)
           let data = {
               name: name.value
             }
             let object = {
               method: 'POST',
               headers: {
                 'Accept': 'application/json',
                 'Content-Type': 'application/json'
               },
               body: JSON.stringify(data)
             }
             fetch(usersURL, object)
             .then(response => console.log("response after post: ", response.json()))
           })

   }

   function displayFoodPhoto(cityData) {

    fetch(foodsURL)
      .then(resp => resp.json())
      .then(foodData => {
        // console.log('FOOD DATA :', foodData)
        for (let singleFood of foodData) {
          // console.log("Single Food", singleFood)
        }
      })
   }
})