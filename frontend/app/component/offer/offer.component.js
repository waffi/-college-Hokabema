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
var core_1 = require('@angular/core');
var router_1 = require('@angular/router');
var index_1 = require('../../service/index');
var OfferComponent = (function () {
    function OfferComponent(service, httpService, router) {
        this.service = service;
        this.httpService = httpService;
        this.router = router;
    }
    OfferComponent.prototype.ngOnInit = function () {
        //this.service.getAllOffer().then(alloffer => this.alloffer = alloffer);
        var _this = this;
        this.httpService.getJsonBerita().then(function (res) { return _this.jsonBerita = JSON.parse(JSON.stringify(res)); }, function (err) { return alert(err); });
    };
    OfferComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-offer',
            templateUrl: './offer.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.HTTPService, router_1.Router])
    ], OfferComponent);
    return OfferComponent;
}());
exports.OfferComponent = OfferComponent;
//# sourceMappingURL=offer.component.js.map