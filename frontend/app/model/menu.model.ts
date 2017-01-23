export class Menu {
  id_menu: number;
  id_category: number;
  name: string;
  description: string;
  stock: number;
  image: string;
  price: number;
  discount: number;
  calories: number;
  protein: number;
  natrium: number;
  fat: number;
  carbohydrate: number;

  constructor(
    _id_menu : number,
    _id_kategori : number,
    _nama_menu : string,
    _deskripsi_menu : string,
    _stok_menu : number,
    _gambar_menu : string,
    _harga_menu : number,
    _discount : number,
    _kalori : number,
    _protein : number,
    _natrium : number,
    _lemak : number,
    _karbohidrat : number
  ) {
            this.id_menu      = _id_menu;
            this.id_category  = _id_kategori;
            this.name         = _nama_menu;
            this.description  = _deskripsi_menu;
            this.stock        = _stok_menu;
            this.image        = _gambar_menu;
            this.price        = _harga_menu;
            this.discount     = _discount;
            this.calories     = _kalori;
            this.protein      = _protein;
            this.natrium      = _natrium;
            this.fat          = _lemak;
            this.carbohydrate = _karbohidrat;
    }

}
