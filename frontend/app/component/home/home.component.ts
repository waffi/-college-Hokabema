import { Component, OnInit } from '@angular/core';

import { DataService } from '../../service/index';
import { Menu } from '../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-home',
  templateUrl: './home.component.html'
})
export class HomeComponent implements OnInit {
  constructor(
    private service: DataService) { }

  allrecomendation: Menu[] = [];

  ngOnInit(): void {
    this.service.getAllRecomendation().then(allrecomendation => this.allrecomendation = allrecomendation);
  }

  addToOrder(menu: Menu): void {
    this.service.addToOrder(menu);
  }
}
