import "bootstrap";
import "mapbox-gl/dist/mapbox-gl.css";
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete'
import {initForm} from '../plugins/init_form'

initMapbox();
initAutocomplete();
initForm();
