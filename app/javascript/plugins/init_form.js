  import places from 'places.js';
const initForm = () => {
  const  appId = 'plMXSFG9TCAA'
  const apiKey = 'a9946d0af2d57828a56072c3ba91435f'
  const addressInput = document.getElementById('query');
  const reconfigurableOptions = {
    language: 'en'
  };
  if (addressInput) {
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initForm };
