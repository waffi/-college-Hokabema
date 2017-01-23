import { Component, OnInit } from '@angular/core';
import { Location } from '@angular/common';
import { Router } from '@angular/router';

import { DataService , AuthenticationService , HTTPService} from '../../../service/index';
import { Order, Menu , Customer } from '../../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-order-confirmation',
  templateUrl: './order-confirmation.component.html'
})
export class OrderConfirmation implements OnInit {
  constructor(
    private service: DataService,
    private authenticationService: AuthenticationService,
    private httpService: HTTPService,
    private location: Location,
    private router: Router) { }

    allorder: Order[] = [];
    subTotal: number;
    customer: Customer;

  ngOnInit(): void {
    this.service.getAllOrder().then(allorder => this.allorder = allorder);
    this.service.getSubTotal().then(subTotal => this.subTotal = subTotal);

    this.authenticationService.getCustomer().then(customer => this.customer = customer);
  }

  increaseQuantity(menu: Menu): void {
    this.service.increaseQuantity(menu);
    this.service.getSubTotal().then(subTotal => this.subTotal = subTotal);
  }

  decreaseQuantity(menu: Menu): void {
    this.service.decreaseQuantity(menu);
    this.service.getSubTotal().then(subTotal => this.subTotal = subTotal);
  }

  removeItem(menu: Menu): void {
    this.service.removeItem(menu);
    this.service.getSubTotal().then(subTotal => this.subTotal = subTotal);
  }

  goBack(): void {
    this.location.back();
  }

  goAddresConfirmation(): void {
    if(this.allorder.length != 0)
    {
      // this.httpService.postJsonCart(this.customer.id_customer, 1);
      // for(let order of this.allorder)
      // {
      //   this.httpService.postJsonPesanan(1, order.menu.id_menu , order.quantity, order.menu.price*order.quantity )
      // }
      this.router.navigate(['checkout/address-confirmation']);
    }
  }
}
