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
var AppComponent = (function () {
    function AppComponent(service, authenticationService, authenticationJangoService, router) {
        this.service = service;
        this.authenticationService = authenticationService;
        this.authenticationJangoService = authenticationJangoService;
        this.router = router;
        this.allorder = [];
    }
    AppComponent.prototype.ngOnInit = function () {
        // this.authenticationJangoService.checkCredentials()
        // .then(res=>{
        //   let temp = JSON.parse(JSON.stringify(res));
        //   if((temp['status'] === true)){
        //     this.status = true;
        //     this.router.navigate(['home']);
        //   }else{
        //     this.status = false;
        //   }
        // },err=>alert(err));
        var _this = this;
        this.service.getAllOrder().then(function (allorder) { return _this.allorder = allorder; });
        this.authenticationService.checkCredentials();
        this.authenticationService.getCustomer().then(function (customer) {
            _this.customer = customer;
            if (_this.customer.username === 'Guest') {
                _this.status = false;
                _this.router.navigate(['login']);
            }
            else {
                _this.status = true;
                if (_this.router.url === "login") {
                    _this.router.navigate(['home']);
                }
            }
        });
    };
    AppComponent.prototype.logout = function () {
        var _this = this;
        this.authenticationService.logout();
        this.authenticationService.getCustomer().then(function (customer) { return _this.customer = customer; });
        location.reload();
    };
    AppComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-app',
            templateUrl: './app.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.AuthenticationService, index_1.AuthenticationJangoService, router_1.Router])
    ], AppComponent);
    return AppComponent;
}());
exports.AppComponent = AppComponent;
//# sourceMappingURL=app.component.js.map