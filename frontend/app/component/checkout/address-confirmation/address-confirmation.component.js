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
var index_1 = require('../../../service/index');
var AddressConfirmation = (function () {
    function AddressConfirmation(service, location) {
        this.service = service;
        this.location = location;
    }
    AddressConfirmation.prototype.ngOnInit = function () {
        this.service.checkOrder();
    };
    AddressConfirmation.prototype.goBack = function () {
        this.location.back();
    };
    AddressConfirmation = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-address-confirmation',
            templateUrl: './address-confirmation.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, common_1.Location])
    ], AddressConfirmation);
    return AddressConfirmation;
}());
exports.AddressConfirmation = AddressConfirmation;
//# sourceMappingURL=address-confirmation.component.js.map