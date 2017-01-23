"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
require('rxjs/add/operator/switchMap');
var core_1 = require('@angular/core');
var router_1 = require('@angular/router');
var common_1 = require('@angular/common');
var index_1 = require('../../../service/index');
var OfferDetailComponent = (function () {
    function OfferDetailComponent(service, location, route) {
        this.service = service;
        this.location = location;
        this.route = route;
    }
    OfferDetailComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.route.params.switchMap(function (params) { return _this.service.getOffer(params['selectedoffer']); }).subscribe(function (offer) { return _this.offer = offer; });
    };
    OfferDetailComponent.prototype.goBack = function () {
        this.location.back();
    };
    OfferDetailComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-offer-detail',
            templateUrl: './offer-detail.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, common_1.Location, router_1.ActivatedRoute])
    ], OfferDetailComponent);
    return OfferDetailComponent;
}());
exports.OfferDetailComponent = OfferDetailComponent;
//# sourceMappingURL=offer-detail.component.js.map