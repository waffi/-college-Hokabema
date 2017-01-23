"use strict";
var Menu = (function () {
    function Menu(_id_menu, _id_kategori, _nama_menu, _deskripsi_menu, _stok_menu, _gambar_menu, _harga_menu, _discount, _kalori, _protein, _natrium, _lemak, _karbohidrat) {
        this.id_menu = _id_menu;
        this.id_category = _id_kategori;
        this.name = _nama_menu;
        this.description = _deskripsi_menu;
        this.stock = _stok_menu;
        this.image = _gambar_menu;
        this.price = _harga_menu;
        this.discount = _discount;
        this.calories = _kalori;
        this.protein = _protein;
        this.natrium = _natrium;
        this.fat = _lemak;
        this.carbohydrate = _karbohidrat;
    }
    return Menu;
}());
exports.Menu = Menu;
//# sourceMappingURL=menu.model.js.map