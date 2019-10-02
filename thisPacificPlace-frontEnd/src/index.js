const citiesURL = `http://localhost:3000/cities`
const usersURL = `http://localhost:3000/users`
const photosURL = `http://localhost:3000/photos`
const foodsURL = `http://localhost:3000/foods`
const activitiesURL = `http://localhost:3000/activities`
const currencyCalcApi = `https://api.exchangeratesapi.io/latest?base=USD&symbols=PHP`
let city;      
// let cityWeatherApi = `https://openweathermap.org/data/2.5/weather?q=${city},ph&appid=edda09851305206e712dc2a0a1f040c9`
// const cityWithFood = "http://localhost:3000/cities/"


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
const activityDetail = document.getElementById('activity-detail')
const listOfActivity = document.getElementById("list-of-activity")
const singleActivityDetail = document.getElementById('single-activity-detail')
const activityPhoto = document.createElement('img')
const activityDescription = document.createElement('p')





document.addEventListener('DOMContentLoaded', event => {
   
 

  currencyCalc()
  fetch(citiesURL)
   .then(resp => resp.json())
   .then(cityData => {
       displaycities(cityData);
       login(cityData);
      //  console.log("City Data: ", cityData)
   })


   function displaycities(cityData) {
       for(let oneCity of cityData) {
          // console.log("one city info", oneCity) 
           let li = document.createElement('li')
           li.setAttribute('class', 'list-group-item')
           li.innerText = oneCity.name;
           cityList.appendChild(li)

           li.addEventListener('click', event => {
            city = oneCity.name
            console.log(city)
            

            //  console.log("my click", li.innerText)
            activityDetail.innerText = ""
            listOfActivity.innerText = ""
            cityDetail.innerText = ""
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
   function login(cityData) {
       loginFormId.addEventListener('submit', event => {
         event.preventDefault();
         let loginValue = name.value;
         //  console.log("Login Value: ", loginValue)
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

   function displayFoodPhoto(oneCity) {

    fetch(foodsURL)
      .then(resp => resp.json())
      .then(foodData => {
        // console.log('FOOD DATA :', foodData)
        let foodh2 = document.createElement('h2')
        foodh2.innerText = "Main Dish"
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
          activityh2.innerText = "ACTIVITIES"
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
        temp.innerHTML = fahrenheit + '&deg';
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

        PHP.innerHTML = `PHP: ${cur.rates.PHP}`
        USD.innerHTML = 'USD: 1'




        



      })
    }
  })






    
  