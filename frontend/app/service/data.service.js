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
var DataService = (function () {
    function DataService(router) {
        this.router = router;
    }
    // menu
    DataService.prototype.getAllMenu = function () {
        return Promise.resolve(index_1.MENU);
    };
    DataService.prototype.getMenu = function (name) {
        return this.getAllMenu()
            .then(function (allmenu) { return allmenu.find(function (menu) { return menu.name === name; }); });
    };
    // offer
    DataService.prototype.getAllOffer = function () {
        return Promise.resolve(index_1.OFFER);
    };
    DataService.prototype.getOffer = function (name) {
        return this.getAllOffer()
            .then(function (alloffer) { return alloffer.find(function (offer) { return offer.name === name; }); });
    };
    // category
    DataService.prototype.getAllCategory = function () {
        return Promise.resolve(index_1.CATEGORY);
    };
    DataService.prototype.getCategory = function (name) {
        return this.getAllCategory()
            .then(function (allcategory) { return allcategory.find(function (category) { return category.name === name; }); });
    };
    //order
    DataService.prototype.getAllOrder = function () {
        var allorder = [];
        index_1.ORDER.splice(0);
        if (localStorage.getItem("order") != null) {
            allorder = JSON.parse(localStorage.getItem('order'));
            for (var _i = 0, allorder_1 = allorder; _i < allorder_1.length; _i++) {
                var order = allorder_1[_i];
                index_1.ORDER.push(order);
            }
        }
        return Promise.resolve(index_1.ORDER);
    };
    DataService.prototype.addToOrder = function (menu) {
        var order;
        var isFound = this.increaseQuantity(menu);
        if (!isFound) {
            order = {
                id_cart: 1,
                menu: menu,
                quantity: 1
            };
            index_1.ORDER.push(order);
            localStorage.setItem('order', JSON.stringify(index_1.ORDER));
        }
    };
    DataService.prototype.increaseQuantity = function (menu) {
        var isFound = false;
        for (var i = 0; i < index_1.ORDER.length; i++) {
            if (index_1.ORDER[i].menu.id_menu === menu.id_menu) {
                index_1.ORDER[i].quantity++;
                isFound = true;
            }
        }
        localStorage.setItem('order', JSON.stringify(index_1.ORDER));
        return isFound;
    };
    DataService.prototype.decreaseQuantity = function (menu) {
        var isFound = false;
        for (var i = 0; i < index_1.ORDER.length; i++) {
            if (index_1.ORDER[i].menu.id_menu === menu.id_menu) {
                if (index_1.ORDER[i].quantity != 1) {
                    index_1.ORDER[i].quantity--;
                    isFound = true;
                }
            }
        }
        localStorage.setItem('order', JSON.stringify(index_1.ORDER));
        return isFound;
    };
    DataService.prototype.removeItem = function (menu) {
        var index;
        for (var i = 0; i < index_1.ORDER.length; i++) {
            if (index_1.ORDER[i].menu.id_menu === menu.id_menu) {
                index = i;
            }
        }
        index_1.ORDER.splice(index, 1);
        localStorage.setItem('order', JSON.stringify(index_1.ORDER));
    };
    DataService.prototype.getSubTotal = function () {
        var subTotal = 0;
        for (var i = 0; i < index_1.ORDER.length; i++) {
            subTotal += index_1.ORDER[i].menu.price * index_1.ORDER[i].quantity;
        }
        return Promise.resolve(subTotal);
    };
    DataService.prototype.checkOrder = function () {
        if (index_1.ORDER.length === 0) {
            this.router.navigate(['checkout/order-confirmation']);
            return false;
        }
        return true;
    };
    // recomendation
    DataService.prototype.getAllRecomendation = function () {
        return Promise.resolve(index_1.RECOMENDATION);
    };
    DataService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [router_1.Router])
    ], DataService);
    return DataService;
}());
exports.DataService = DataService;
//# sourceMappingURL=data.service.js.map