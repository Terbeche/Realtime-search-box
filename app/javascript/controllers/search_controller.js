import { Controller } from "@hotwired/stimulus"

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
