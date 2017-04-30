
$(".show").on("click", function(){

  $.ajax({
    url: 'http://api.openweathermap.org/data/2.5/weather?lat=-37.864&lon=144.982&APPID=e6b9f373890262fb5f87cd9362069823',
    method: 'get'
    }).done(function(data){
      $.ajax  ({
        url: '/show',
        method: 'get',
        data: { description: data.weather[0].description,
                main: data.weather[0].main,
                current_temp: (data.main.temp - 273.15),
                max_temp: (data.main.temp_max - 273.15),
                min_temp: (data.main.temp_min - 273.15)
        }
      }
      )
      console.log(data);
      console.log(data.weather[0].description);
      console.log(data.weather[0].main);
      console.log('Current Temp:' + (data.main.temp - 273.15));
      console.log('Max Temp: ' + (data.main.temp_max - 273.15));
      console.log('Min Temp: ' + (data.main.temp_min - 273.15));

    });



});
