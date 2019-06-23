import React from 'react';

class Weather extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lat : '',
      long : ''
    }
  }

  componentDidMount() {
    navigator.geolocation.getCurrentPosition((res) => {
      let lat = (res.coords.latitude).toFixed(2);
      let long = (res.coords.longitude).toFixed(2);
      // this.setState({
      //   lat,
      //   long
      // })
      this.fetchWeatherData(lat, long);
    });

  }

  fetchWeatherData(lat, long) {
    $.ajax(`http://api.openweathermap.org/data/2.5/weather?APPID=6f104f520b7edad59d1ad7b67d8fd607&lat=${lat}&lon=${long}`)
      .then(res => {
        console.log(res);
        console.log(res.name);
        // console.log(res.weather.main.description);
      });
  }

  render() {
    return (
      <React.Fragment> 
        <h2>Weather</h2>
        <div className="weather-container">
          <p className="weather_city">San Francisco</p>
          <p className="weather_temp">70</p>
        </div>
      </React.Fragment> 
    )
  }
}

export default Weather;

// 6f104f520b7edad59d1ad7b67d8fd607


// API call by geographic coordinates:
// api.openweathermap.org / data / 2.5 / weather ? lat = { lat } & lon={ lon }

