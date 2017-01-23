import { Component, OnInit } from '@angular/core';
import { Location } from '@angular/common';
import { Router } from '@angular/router';

import { DataService } from '../../../service/index';
import { Order, Menu } from '../../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-address-confirmation',
  templateUrl: './address-confirmation.component.html'
})
export class AddressConfirmation implements OnInit {
  constructor(
    private service: DataService,
    private location: Location) { }

  ngOnInit(): void {
    this.service.checkOrder();
  }

  goBack(): void {
    this.location.back();
  }
}
