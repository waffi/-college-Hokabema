import 'rxjs/add/operator/switchMap';

import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';

import { DataService } from '../../../service/index';
import { Offer } from '../../../model/index';

@Component({
  moduleId: module.id,
  selector: 'my-offer-detail',
  templateUrl: './offer-detail.component.html'
})
export class OfferDetailComponent implements OnInit {
  constructor(
    private service: DataService,
    private location: Location,
    private route: ActivatedRoute) { }

  offer: Offer;

  ngOnInit(): void {
    this.route.params.switchMap((params: Params) => this.service.getOffer(params['selectedoffer'])).subscribe(offer => this.offer = offer);
  }

  goBack(): void {
    this.location.back();
  }
}
