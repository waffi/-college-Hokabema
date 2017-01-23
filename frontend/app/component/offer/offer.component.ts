import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { DataService ,HTTPService } from '../../service/index';
import { Offer } from '../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-offer',
  templateUrl: './offer.component.html'
})
export class OfferComponent implements OnInit {
  constructor(
    private service: DataService,
    private httpService: HTTPService,
    private router: Router) { }

  //alloffer: Offer[] = [];
  jsonBerita;

  ngOnInit(): void {
    //this.service.getAllOffer().then(alloffer => this.alloffer = alloffer);

    this.httpService.getJsonBerita().then(res=>this.jsonBerita = JSON.parse(JSON.stringify(res)),err=>alert(err));
  }
}
