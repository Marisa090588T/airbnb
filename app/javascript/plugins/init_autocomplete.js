import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('accommodation_location');
  if (locationInput) {
    places({ container: locationInput });
  }
};

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v10'
});

export { initAutocomplete };
