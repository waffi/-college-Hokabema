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
var common_1 = require('@angular/common');
var router_1 = require('@angular/router');
var index_1 = require('../../../service/index');
var OrderConfirmation = (function () {
    function OrderConfirmation(service, authenticationService, httpService, location, router) {
        this.service = service;
        this.authenticationService = authenticationService;
        this.httpService = httpService;
        this.location = location;
        this.router = router;
        this.allorder = [];
    }
    OrderConfirmation.prototype.ngOnInit = function () {
        var _this = this;
        this.service.getAllOrder().then(function (allorder) { return _this.allorder = allorder; });
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
        this.authenticationService.getCustomer().then(function (customer) { return _this.customer = customer; });
    };
    OrderConfirmation.prototype.increaseQuantity = function (menu) {
        var _this = this;
        this.service.increaseQuantity(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    OrderConfirmation.prototype.decreaseQuantity = function (menu) {
        var _this = this;
        this.service.decreaseQuantity(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    OrderConfirmation.prototype.removeItem = function (menu) {
        var _this = this;
        this.service.removeItem(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    OrderConfirmation.prototype.goBack = function () {
        this.location.back();
    };
    OrderConfirmation.prototype.goAddresConfirmation = function () {
        if (this.allorder.length != 0) {
            // this.httpService.postJsonCart(this.customer.id_customer, 1);
            // for(let order of this.allorder)
            // {
            //   this.httpService.postJsonPesanan(1, order.menu.id_menu , order.quantity, order.menu.price*order.quantity )
            // }
            this.router.navigate(['checkout/address-confirmation']);
        }
    };
    OrderConfirmation = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-order-confirmation',
            templateUrl: './order-confirmation.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.AuthenticationService, index_1.HTTPService, common_1.Location, router_1.Router])
    ], OrderConfirmation);
    return OrderConfirmation;
}());
exports.OrderConfirmation = OrderConfirmation;
//# sourceMappingURL=order-confirmation.component.js.map