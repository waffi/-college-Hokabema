import 'rxjs/add/operator/switchMap';

import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';

import { DataService, HTTPService } from '../../../service/index';
import { Menu, Order } from '../../../model/index';
import { ORDER } from '../../../mock/index';

@Component({
  moduleId: module.id,
  selector: 'my-menu-detail',
  templateUrl: './menu-detail.component.html'
})
export class MenuDetailComponent implements OnInit {

  constructor(
    private service: DataService,
    private route: ActivatedRoute,
    private location: Location,
    private httpService: HTTPService) {}

  menu: Menu;
  order: Order;

  ngOnInit(): void {
    //this.route.params.switchMap((params: Params) => this.service.getMenu(params['selectedmenu'])).subscribe(menu => this.menu = menu);
    this.route.params.switchMap((params: Params) =>
    this.httpService.getJsonMenuDetail(params['selectedmenu'])).subscribe(res => this.menu = res);
  }

  goBack(): void {
    this.location.back();
  }

  addToOrder(menu: Menu): void {
    this.service.addToOrder(menu);
  }
}
