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
var index_2 = require('../../model/index');
var LoginComponent = (function () {
    function LoginComponent(service, authenticationService, authenticationJangoService, router) {
        this.service = service;
        this.authenticationService = authenticationService;
        this.authenticationJangoService = authenticationJangoService;
        this.router = router;
        this.customer = new index_2.Customer(0, "", "", "", "");
    }
    LoginComponent.prototype.ngOnInit = function () {
        if (this.authenticationService.checkCustomer()) {
            this.router.navigate(['home']);
        }
    };
    LoginComponent.prototype.login = function () {
        var _this = this;
        this.authenticationJangoService.login(this.customer.username, +this.customer.password)
            .then(function (res) { return _this.json1 = JSON.stringify(res); }, function (err) { return alert(err); });
        this.authenticationJangoService.checkCredentials()
            .then(function (res) { return _this.json2 = JSON.stringify(res); }, function (err) { return alert(err); });
        this.authenticationService.login(this.customer);
        location.reload();
    };
    LoginComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-login',
            templateUrl: './login.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.AuthenticationService, index_1.AuthenticationJangoService, router_1.Router])
    ], LoginComponent);
    return LoginComponent;
}());
exports.LoginComponent = LoginComponent;
//# sourceMappingURL=login.component.js.map