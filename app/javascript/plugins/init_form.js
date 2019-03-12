import places from 'places.js';
const initForm = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({ container: addressInput,
    language: "en" });
  }
};
// var options = {
//       container: location_input,
//       language: "en"
//     }
// var placesAutocomplete = places(options);
export { initForm };
