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
var router_1 = require("@angular/router");
var index_1 = require("./component/home/index");
var index_2 = require("./component/menu/index");
var index_3 = require("./component/checkout/index");
var index_4 = require("./component/offer/index");
var index_5 = require("./component/login/index");
var routes = [
    { path: '', redirectTo: '/login', pathMatch: 'full' },
    { path: 'home', component: index_1.HomeComponent },
    { path: 'menu', component: index_2.MenuComponent },
    { path: 'checkout/order-confirmation', component: index_3.OrderConfirmation },
    { path: 'checkout/address-confirmation', component: index_3.AddressConfirmation },
    { path: 'checkout/finnish', component: index_3.Finnish },
    { path: 'offer', component: index_4.OfferComponent },
    { path: 'login', component: index_5.LoginComponent },
    { path: 'menu/detail/:selectedmenu', component: index_2.MenuDetailComponent },
    { path: 'offer/detail/:selectedoffer', component: index_4.OfferDetailComponent }
];
var AppRoutingModule = (function () {
    function AppRoutingModule() {
    }
    return AppRoutingModule;
}());
AppRoutingModule = __decorate([
    core_1.NgModule({
        imports: [router_1.RouterModule.forRoot(routes)],
        exports: [router_1.RouterModule]
    }),
    __metadata("design:paramtypes", [])
], AppRoutingModule);
exports.AppRoutingModule = AppRoutingModule;
//# sourceMappingURL=app-routing.module.js.map