import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { DataService, AuthenticationService ,AuthenticationJangoService } from '../../service/index';
import { Customer } from '../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-login',
  templateUrl: './login.component.html'
})
export class LoginComponent implements OnInit {
  constructor(
    private service: DataService,
    private authenticationService: AuthenticationService,
    private authenticationJangoService: AuthenticationJangoService,
    private router: Router) { }

    customer = new Customer(0,"","","","");

    ngOnInit(): void {
      if(this.authenticationService.checkCustomer())
      {
        this.router.navigate(['home']);
      }
    }

    json1;
    json2;
    login() {
      this.authenticationJangoService.login( this.customer.username, +this.customer.password )
      .then(res=>this.json1 = JSON.stringify(res),err=>alert(err));
      this.authenticationJangoService.checkCredentials()
      .then(res=>this.json2 = JSON.stringify(res),err=>alert(err));
      this.authenticationService.login(this.customer);
      location.reload();
    }
  }
