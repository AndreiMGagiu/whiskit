import places from 'places.js';
const initAutocomplete = () => {
  const addressInput = document.getElementById('user_address');
  const reconfigurableOptions = {
    language: 'en'
  };
  if (addressInput) {
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initAutocomplete };
