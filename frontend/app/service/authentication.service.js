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
var index_1 = require('../mock/index');
var AuthenticationService = (function () {
    function AuthenticationService(router) {
        this.router = router;
    }
    AuthenticationService.prototype.checkCredentials = function () {
        if (localStorage.getItem("customer") === null) {
            var customer = { id_customer: 0, username: "Guest", password: "", email: "", phone_number: "" };
            localStorage.setItem("customer", JSON.stringify(customer));
        }
    };
    AuthenticationService.prototype.checkCustomer = function () {
        var customer = JSON.parse(localStorage.getItem("customer"));
        if (customer.username === 'Guest') {
            return false;
        }
        else {
            return true;
        }
    };
    AuthenticationService.prototype.login = function (customer) {
        var authenticated = index_1.CUSTOMER.find(function (c) { return c.username === customer.username && c.password === customer.password; });
        if (authenticated) {
            localStorage.setItem("customer", JSON.stringify(authenticated));
            return true;
        }
        return false;
    };
    AuthenticationService.prototype.logout = function () {
        var customer = { id_customer: 0, username: "Guest", password: "", email: "", phone_number: "" };
        localStorage.setItem("customer", JSON.stringify(customer));
    };
    AuthenticationService.prototype.getCustomer = function () {
        var customer = JSON.parse(localStorage.getItem("customer"));
        return Promise.resolve(customer);
    };
    AuthenticationService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [router_1.Router])
    ], AuthenticationService);
    return AuthenticationService;
}());
exports.AuthenticationService = AuthenticationService;
//# sourceMappingURL=authentication.service.js.map