import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import { Customer } from '../model/index';
import { CUSTOMER } from '../mock/index';

@Injectable()
export class AuthenticationService {

  constructor(
    private router: Router){}

  checkCredentials()
  {
     if (localStorage.getItem("customer") === null)
     {
       let customer = {id_customer : 0, username : "Guest", password : "", email : "", phone_number : ""};
       localStorage.setItem("customer",JSON.stringify(customer));
     }
  }

  checkCustomer()
  {
    let customer : Customer = JSON.parse(localStorage.getItem("customer"));
    if (customer.username === 'Guest')
    {
      return false;
    }
    else
    {
      return true;
    }
  }

  login(customer)
  {
    var authenticated = CUSTOMER.find(c => c.username === customer.username && c.password === customer.password);
    if (authenticated){
      localStorage.setItem("customer", JSON.stringify(authenticated));
      return true;
    }
    return false;
  }

  logout()
  {
    let customer = {id_customer : 0, username : "Guest", password : "", email : "", phone_number : ""};
    localStorage.setItem("customer",JSON.stringify(customer));
  }

   getCustomer() : Promise<Customer> {
      let customer : Customer = JSON.parse(localStorage.getItem("customer"));
      return Promise.resolve(customer);
  }
}
