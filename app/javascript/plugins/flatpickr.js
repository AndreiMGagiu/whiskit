import flatpickr from "flatpickr"
import 'flatpickr/dist/themes/dark.css'

flatpickr(".datepicker", {
  allInput: true,
  allowInput: true,
  enableTime: true,
  noCalendar: true,
  dateFormat: "Y-m-d H:i",
});
