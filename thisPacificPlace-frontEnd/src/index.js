const citiesURL = `http://localhost:3000/cities`
const usersURL = `http://localhost:3000/users`
const photosURL = `http://localhost:3000/photos`
const foodsURL = `http://localhost:3000/foods`
const activitiesURL = `http://localhost:3000/activities`
const currencyCalcApi = `https://api.exchangeratesapi.io/latest?base=USD&symbols=PHP`
const favoritesURL = `http://localhost:3000/favorites`
let city;      
const cityList = document.getElementById('list-group');
const cityClass = document.getElementsByClassName('list-group-item');
const cityDetail = document.getElementById('city-detail');
const cityH2 = document.createElement('h2');
const cityImg = document.createElement('img');
const name = document.getElementById('name')
const lowerDiv = document.getElementById('lower')
const loginFormId = document.getElementById('login')
const foodName = document.createElement('h3')
const foodsPhoto = document.createElement('img')
const cityDetailHead = document.getElementById('city-detail-head')
const activityDetail = document.getElementById('activity-detail')
const listOfActivity = document.getElementById("list-of-activity")
const singleActivityDetail = document.getElementById('single-activity-detail')
const activityPhoto = document.createElement('img')
const activityDescription = document.createElement('p')
const loginForm = document.querySelector("#login-form")
const loginFormDiv = document.querySelector("#login-form-div")
const userNameField = document.querySelector("#login-field")
let user;
let signedIn = false;
let currentUser;

const adapter = {
  getUsers: () => {
    return fetch(`${usersURL}`)
    .then(res=>res.json())
  },
  createUser: (user) => {
      // console.log(user)
      let data = {
        name: user
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
      .then(response => response.json())
      .then(resp => {
        console.log('resp', resp)
        currentUser = resp
        
      })
  }        
}
document.addEventListener('DOMContentLoaded', event => {
  // l√
  let musicId = document.getElementById('music');
  musicId.setAttribute('src', `https://www.youtube.com/embed/pnSZbl8fTHM?autoplay=1`);

  currencyCalc()
  
  function fetchCities() {
    fetch(citiesURL)
    .then(resp => resp.json())
    .then(cityData => {
      displaycities(cityData);
    })
  }
  function displaycities(cityData) {
       for(let oneCity of cityData) {
          // console.log("one city info", oneCity) 
           let li = document.createElement('li')
           li.setAttribute('class', 'list-group-item')
           li.innerText = oneCity.name;
          
          let favButton = document.createElement('button')
          favButton.innerText = "♥"
          favButton.setAttribute("class", "fav-button")
          cityList.appendChild(li)
          cityList.appendChild(favButton)

          
              favButton.addEventListener('click', event => {
                console.log("city", oneCity.id)
                console.log("user", currentUser.id)
                event.target.style.color = "red"
                
                let data = {
                  user_id: currentUser.id,
                  city_id: oneCity.id
                }
          
                let object = {
                  method: 'POST',
                  headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                  },
                  body: JSON.stringify(data)
                }
          
                fetch(favoritesURL, object)
                .then(response => response.json())
                .then(resp => {
                  console.log('resp SUCCESS', resp)
                  
                  
                })
              })
      
          
          li.addEventListener('click', event => {
            city = oneCity.name
            console.log(city)
            
            
            activityDetail.innerText = ""
            listOfActivity.innerText = ""
            cityDetail.innerText = ""
            cityDetailHead.innerText = ""
            cityDetailHead.innerText = "City Info"
            cityImg.src = oneCity.image_url;
            cityH2.innerText = oneCity.name;
            cityDetail.appendChild(cityH2) 
            cityDetail.appendChild(cityImg)
            
            displayFoodPhoto(oneCity);
            displayActivities(oneCity);
            weatherFetching(oneCity);     
           })
       }
   }
  
   function displayFoodPhoto(oneCity) {
    fetch(foodsURL)
      .then(resp => resp.json())
      .then(foodData => {
        let foodh2 = document.createElement('h2')
        foodh2.innerText = "Main Dish:"
        cityDetail.appendChild(foodh2)
        for (let singleFood of foodData) {
          // console.log("Single Food", singleFood)
          if (singleFood.city_id === oneCity.id) {
            foodName.innerText = singleFood.name
            foodsPhoto.src = singleFood.image_url
            cityDetail.appendChild(foodName)
            cityDetail.appendChild(foodsPhoto)
          }
        }
      })
      
   }
    
    function displayActivities(oneCity) {
      fetch(activitiesURL)
      .then(resp => resp.json())
        .then(activityData => {
          // console.log('activity DATA :', activityData)
          
          let activityh2 = document.createElement('h2')
          activityh2.innerText = "ACTIVITIES:"
          activityDetail.appendChild(activityh2)
          for (let singleActivity of activityData) {
            // console.log("Single Activity", singleActivity)
            if (singleActivity.city_id === oneCity.id) {
              
              let activityName = document.createElement('li')
              activityName.innerText = singleActivity.name
              listOfActivity.appendChild(activityName)
              activityDetail.appendChild(listOfActivity)
              
              
              activityName.addEventListener('click', event => {
                  
                  displayActivityPhoto(singleActivity)
                  singleActivityDetail.appendChild(activityPhoto)
                  singleActivityDetail.appendChild(activityDescription)
                  listOfActivity.appendChild(singleActivityDetail)
                  activityName.appendChild(singleActivityDetail)
                  
                })
              
              
              }
            }
        })
    }
    function displayActivityPhoto(singleActivity) {
      //  console.log("photo: ", singleActivity)
      fetch(photosURL)
      .then(resp => resp.json())
      .then(photoData => {
          for (let singlePhotoData of photoData) {
            if (singlePhotoData.activity_id === singleActivity.id) {
              
              activityDescription.innerText = singleActivity.description 
              activityPhoto.src = singlePhotoData.image_url
            
            
            }
          }
        })
    }
    function weatherFetching(oneCity){
      let cityWeatherApi = `https://api.openweathermap.org/data/2.5/weather?q=${city},ph&appid=edda09851305206e712dc2a0a1f040c9`
      fetch(cityWeatherApi)
      .then(resp => resp.json())
      .then(oneWeather => {
        let celcius = Math.round(parseFloat(oneWeather.main.temp)-273.15);
        let fahrenheit = Math.round(((parseFloat(oneWeather.main.temp)-273.15)*1.8)+32); 
        
        let desc = document.getElementById('description')
        let temp = document.getElementById('temp')
        let loc = document.getElementById('location')
        desc.innerText = oneWeather.weather[0].description
        temp.innerHTML = fahrenheit + 'f&deg';
        loc.innerHTML = oneWeather.name;
      })
      .catch (error => {
        console.log(error)
      })
      
    }
    function currencyCalc(oneCity) {
      fetch(currencyCalcApi)
      .then(resp => resp.json())
      .then(cur => {
        let PHP = document.getElementById('PHP')
        let USD = document.getElementById('USD')
        let phpValue = cur.rates.PHP
        let phpValueFixed = phpValue.toFixed(2);
        PHP.innerHTML = `PHP: ${phpValueFixed}`
        USD.innerHTML = 'USD: 1'
      })
    }
  
    loginForm.addEventListener('submit', e=> {
      e.preventDefault()
      user = userNameField.value
      user = capitalizeWord(user)
      // console.log('user', user)
      let body = user
      if(user){
        
        adapter.createUser(body)
          signedIn = true;
          fetchCities();
          removeFormDiv()
          let loginName = document.createElement('p')
          loginName.innerText = `You are login: ${user}` 
          loginForm.appendChild(loginName)     
          //create and show logout button when user is logged in
          const logout = document.createElement('a')
          logout.href = "javascript:window.location.reload(true)"
          logout.className = "item"
          logout.id = "logout-icon"
          logout.innerHTML = `<i class="frown icon"></i>Logout` 
          loginForm.appendChild(logout)
      } else {
        alert("Please enter a name")
      }
    });
    function capitalizeWord(string) {
      const s = string.toLowerCase()
      return s.charAt(0).toUpperCase() + s.slice(1)
    }
    function removeFormDiv() {
      while (loginForm.hasChildNodes()) {
        loginForm.removeChild(loginForm.firstChild)
      }
    }
  })
  