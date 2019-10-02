const citiesURL = `http://localhost:3000/cities`
const usersURL = `http://localhost:3000/users`
const photosURL = `http://localhost:3000/photos`
const foodsURL = `http://localhost:3000/foods`
const activitiesURL = `http://localhost:3000/activities`
// const cityWithFood = "http://localhost:3000/cities/"

// const queryURL = "https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202487889&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys/";


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
   
  // displayWeather(queryURL);                                                


  fetch(citiesURL)
   .then(resp => resp.json())
   .then(cityData => {
       displaycities(cityData);
       login(cityData);
      //  console.log("City Data: ", cityData)
   })


   function displaycities(cityData) {
       for(let oneCity of cityData) {
          console.log("one city info", oneCity) 
           let li = document.createElement('li')
           li.setAttribute('class', 'list-group-item')
           li.innerText = oneCity.name;
           cityList.appendChild(li)

           li.addEventListener('click', event => {
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


//    function displayWeather(queryURL) {
//       fetch(queryURL)
//       .then(resp => resp.json())
//       .then(datas => {
//         console.log("mydata ", datas)
//       })
//    }
// })








// $.getJSON(queryURL, function (data) {
  
//   var results = data.query.results
//   var firstResult = results.channel.item.condition
//   console.log(firstResult);
  
//   var location = 'Unknown' // not returned in response
//   var temp = firstResult.temp
//   var text = firstResult.text
  
//   $('#output').append('The temperature is ' + temp + '. Forecast calls for '+text);
  
})