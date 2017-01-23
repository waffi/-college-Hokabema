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
require('rxjs/add/operator/map');
require('rxjs/Rx');
var index_1 = require('../model/index');
var HTTPService = (function () {
    function HTTPService(http) {
        this.http = http;
    }
    HTTPService.prototype.postJsonCart = function (id_pelanggan, id_alamat) {
        var body = JSON.stringify({
            "tanggal": null,
            "status_telah_dipesan": null,
            "status_verifikasi": null,
            "status_pembayaran": null,
            "status_pengiriman": null,
            "total_keseluruhan": null,
            "pajak": null,
            "id_pelanggan": id_pelanggan,
            "id_alamat": id_alamat
        });
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.post("http://127.0.0.1:8000/postcart/", body, requestOption)
            .toPromise();
    };
    ;
    HTTPService.prototype.postJsonPesanan = function (id_cart, id_menu, jumlah_pesanan, total_harga) {
        var body = JSON.stringify({
            "jumlah_pesanan": jumlah_pesanan,
            "total_harga": total_harga,
            "id_menu": id_menu,
            "id_cart": id_cart
        });
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.post("http://127.0.0.1:8000/Pesanan/", body, requestOption)
            .toPromise();
    };
    ;
    HTTPService.prototype.getJsonMenu = function () {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.get("http://127.0.0.1:8000/GetMenu/", requestOption)
            .toPromise().then(function (res) { return res.json(); });
    };
    HTTPService.prototype.getJsonMenuDetail = function (selectedMenu) {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        var params = new http_2.URLSearchParams();
        params.set('nama_menu', selectedMenu);
        requestOption = new http_2.RequestOptions({ headers: myHeaders, search: params });
        var menu;
        return this.http.get("http://127.0.0.1:8000/GetMenu/", requestOption)
            .map(function (responseData) { return responseData.json(); })
            .map(function (menu) {
            var result;
            if (menu) {
                result = new index_1.Menu(menu.results[0].id_menu, menu.results[0].id_kategori.id_kategori, menu.results[0].nama_menu, menu.results[0].deskripsi_menu, menu.results[0].stok_menu, menu.results[0].gambar_menu, menu.results[0].harga_menu, menu.results[0].discount, menu.results[0].kalori, menu.results[0].protein, menu.results[0].natrium, menu.results[0].lemak, menu.results[0].karbohidrat);
            }
            return result;
        });
    };
    HTTPService.prototype.getJsonKategori = function () {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.get("http://127.0.0.1:8000/kategori/", requestOption)
            .toPromise().then(function (res) { return res.json(); });
    };
    HTTPService.prototype.getJsonBerita = function () {
        var requestOption;
        var myHeaders = new http_1.Headers();
        myHeaders.append('Content-type', 'application/json');
        requestOption = new http_2.RequestOptions({ headers: myHeaders });
        return this.http.get("http://127.0.0.1:8000/Berita/", requestOption)
            .toPromise().then(function (res) { return res.json(); });
    };
    HTTPService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [http_2.Http])
    ], HTTPService);
    return HTTPService;
}());
exports.HTTPService = HTTPService;
//# sourceMappingURL=http.service.js.map