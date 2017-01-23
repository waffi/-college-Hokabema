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
var core_1 = require("@angular/core");
var common_1 = require("@angular/common");
var index_1 = require("../../../service/index");
var CheckoutComponent = (function () {
    function CheckoutComponent(service, location) {
        this.service = service;
        this.location = location;
        this.allorder = [];
    }
    CheckoutComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.service.getAllOrder().then(function (allorder) { return _this.allorder = allorder; });
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    CheckoutComponent.prototype.increaseQuantity = function (menu) {
        var _this = this;
        this.service.increaseQuantity(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    CheckoutComponent.prototype.decreaseQuantity = function (menu) {
        var _this = this;
        this.service.decreaseQuantity(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    CheckoutComponent.prototype.removeItem = function (menu) {
        var _this = this;
        this.service.removeItem(menu);
        this.service.getSubTotal().then(function (subTotal) { return _this.subTotal = subTotal; });
    };
    CheckoutComponent.prototype.goBack = function () {
        this.location.back();
    };
    return CheckoutComponent;
}());
CheckoutComponent = __decorate([
    core_1.Component({
        moduleId: module.id,
        selector: 'my-checkout',
        templateUrl: './order-confirmation.component.html'
    }),
    __metadata("design:paramtypes", [index_1.DataService,
        common_1.Location])
], CheckoutComponent);
exports.CheckoutComponent = CheckoutComponent;
//# sourceMappingURL=checkout.component.js.map