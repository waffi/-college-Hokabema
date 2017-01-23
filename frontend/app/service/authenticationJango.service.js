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
var http_1 = require('@angular/http');
var http_2 = require('@angular/http');
var router_1 = require('@angular/router');
require('rxjs/add/operator/map');
require('rxjs/Rx');
var AuthenticationJangoService = (function () {
    function AuthenticationJangoService(router, http) {
        this.router = router;
        this.http = http;
    }
    // let params = new URLSearchParams();
    // params.set('user_name',user_name);
    // params.set('password',password);
    AuthenticationJangoService.prototype.checkCredentials = function () {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.get("http://127.0.0.1:8000/statuslogin/", requestOption)
            .toPromise().then(function (res) { return res.json(); });
    };
    AuthenticationJangoService.prototype.login = function (user_name, password) {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        var params = new http_2.URLSearchParams();
        params.set('user_name', user_name);
        params.set('password', "" + password);
        requestOption = new http_2.RequestOptions({ headers: myHeaders, search: params });
        return this.http.get("http://127.0.0.1:8000/login/", requestOption)
            .toPromise().then(function (res) { return res.json(); });
    };
    AuthenticationJangoService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [router_1.Router, http_2.Http])
    ], AuthenticationJangoService);
    return AuthenticationJangoService;
}());
exports.AuthenticationJangoService = AuthenticationJangoService;
//# sourceMappingURL=authenticationJango.service.js.map