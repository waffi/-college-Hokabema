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
var index_1 = require('../../service/index');
var index_2 = require('../../model/index');
var MenuComponent = (function () {
    function MenuComponent(service, httpService) {
        this.service = service;
        this.httpService = httpService;
    }
    MenuComponent.prototype.ngOnInit = function () {
        //this.service.getAllMenu().then(allmenu => this.allmenu = allmenu);
        // this.service.getAllCategory().then(allcategory => this.allcategory = allcategory);
        var _this = this;
        this.httpService.getJsonMenu().then(function (res) { return _this.jsonMenu = JSON.parse(JSON.stringify(res)); }, function (err) { return alert(err); });
        this.httpService.getJsonKategori().then(function (res) { return _this.jsonKategori = JSON.parse(JSON.stringify(res)); }, function (err) { return alert(err); });
    };
    MenuComponent.prototype.addToOrder = function (menu) {
        this.selectedMenu = new index_2.Menu(menu.id_menu, menu.id_kategori.id_kategori, menu.nama_menu, menu.deskripsi_menu, menu.stok_menu, menu.gambar_menu, menu.harga_menu, menu.discount, menu.kalori, menu.protein, menu.natrium, menu.lemak, menu.karbohidrat);
        this.service.addToOrder(this.selectedMenu);
    };
    MenuComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-allmenu',
            templateUrl: './menu.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.DataService, index_1.HTTPService])
    ], MenuComponent);
    return MenuComponent;
}());
exports.MenuComponent = MenuComponent;
//# sourceMappingURL=menu.component.js.map