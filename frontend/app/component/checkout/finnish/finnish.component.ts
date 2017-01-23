import { Component, OnInit } from '@angular/core';
import { Location } from '@angular/common';
import { Router } from '@angular/router';

import { DataService , AuthenticationService , HTTPService} from '../../../service/index';
import { Order, Menu , Customer } from '../../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-finnish',
  templateUrl: './finnish.component.html'
})
export class Finnish implements OnInit {
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
  }

}
