import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { DataService, AuthenticationService, AuthenticationJangoService } from '../../service/index';
import { Order, Customer } from '../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-app',
  templateUrl: './app.component.html'
})

export class AppComponent implements OnInit {
  constructor(
    private service: DataService,
    private authenticationService: AuthenticationService,
    private authenticationJangoService: AuthenticationJangoService,
    private router: Router) {}

  allorder: Order[] = [];
  customer: Customer;

  status : boolean;


  ngOnInit(): void {

    // this.authenticationJangoService.checkCredentials()
    // .then(res=>{
    //   let temp = JSON.parse(JSON.stringify(res));
    //   if((temp['status'] === true)){
    //     this.status = true;
    //     this.router.navigate(['home']);
    //   }else{
    //     this.status = false;
    //   }
    // },err=>alert(err));

    this.service.getAllOrder().then(allorder => this.allorder = allorder);
    this.authenticationService.checkCredentials();
    this.authenticationService.getCustomer().then(customer =>{
      this.customer = customer
      if(this.customer.username === 'Guest')
      {
        this.status = false;
        this.router.navigate(['login']);
      }else
      {
        this.status = true;
        if(this.router.url === "login")
        {          
          this.router.navigate(['home']);
        }
      }
    });
  }

  logout(): void {
    this.authenticationService.logout();
    this.authenticationService.getCustomer().then(customer => this.customer = customer);
    location.reload();
  }
}
