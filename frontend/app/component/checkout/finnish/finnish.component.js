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
var Finnish = (function () {
    function Finnish(service, authenticationService, httpService, location, router) {
        this.service = service;
        this.authenticationService = authenticationService;
        this.httpService = httpService;
        this.location = location;
        this.router = router;
        this.allorder = [];
    }
    Finnish.prototype.ngOnInit = function () {
    };
    Finnish = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-finnish',
            templateUrl: './finnish.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.AuthenticationService, index_1.HTTPService, common_1.Location, router_1.Router])
    ], Finnish);
    return Finnish;
}());
exports.Finnish = Finnish;
//# sourceMappingURL=finnish.component.js.map