  import places from 'places.js';
const initAutocomplete = () => {
  const  appId = 'plMXSFG9TCAA'
  const apiKey = 'a9946d0af2d57828a56072c3ba91435f'
  const addressInput = document.getElementById('user_address');
  const reconfigurableOptions = {
    language: 'en'
  };
  if (addressInput) {
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initAutocomplete };
