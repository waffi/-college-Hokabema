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
var platform_browser_1 = require("@angular/platform-browser");
var forms_1 = require("@angular/forms");
var http_1 = require("@angular/http");
var index_1 = require("./component/app/index");
var index_2 = require("./component/home/index");
var index_3 = require("./component/menu/index");
var index_4 = require("./component/checkout/index");
var index_5 = require("./component/offer/index");
var index_6 = require("./component/login/index");
var index_7 = require("./service/index");
var app_routing_module_1 = require("./app-routing.module");
var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    core_1.NgModule({
        imports: [
            platform_browser_1.BrowserModule,
            forms_1.FormsModule,
            app_routing_module_1.AppRoutingModule,
            http_1.HttpModule
        ],
        declarations: [
            index_1.AppComponent,
            index_2.HomeComponent,
            index_3.MenuComponent,
            index_4.OrderConfirmation,
            index_4.Finnish,
            index_4.AddressConfirmation,
            index_5.OfferComponent,
            index_6.LoginComponent,
            index_3.MenuDetailComponent,
            index_5.OfferDetailComponent
        ],
        providers: [index_7.DataService, index_7.AuthenticationService, index_7.AuthenticationJangoService, index_7.HTTPService],
        bootstrap: [index_1.AppComponent]
    }),
    __metadata("design:paramtypes", [])
], AppModule);
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map