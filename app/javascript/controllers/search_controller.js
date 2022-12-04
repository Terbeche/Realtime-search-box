import { Controller } from "@hotwired/stimulus"
// import debounce from "debounce"
// import { useDebounce } from 'use-debounce';

// Connects to data-controller="search"
const  debounce = (func, wait) =>{
  let timeout;

  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };

    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
};

export default class extends Controller {

  initialize() {
    this.submit = debounce(this.submit.bind(this), 1000);
  }
  
  connect() {
  }

  submit(e) {
    console.log(e.target.value);
    this.element.requestSubmit()
  }
}
