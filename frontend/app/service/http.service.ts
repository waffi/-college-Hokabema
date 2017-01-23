import {Injectable} from '@angular/core';
import {Headers} from '@angular/http';
import {Http, RequestOptions, URLSearchParams} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/Rx';

import { Menu } from '../model/index';

@Injectable()
export class HTTPService{
  constructor(private http:Http){}

  postJsonCart(id_pelanggan : number, id_alamat : number){

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

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    requestOption = new RequestOptions({headers: myHeaders});

    return this.http.post("http://127.0.0.1:8000/postcart/",body, requestOption)
    .toPromise();
  };

  postJsonPesanan(id_cart : number, id_menu : number, jumlah_pesanan : number, total_harga : number ){

    var body = JSON.stringify({
      "jumlah_pesanan": jumlah_pesanan,
      "total_harga": total_harga,
      "id_menu": id_menu,
      "id_cart": id_cart
    });

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    requestOption = new RequestOptions({headers: myHeaders});

    return this.http.post("http://127.0.0.1:8000/Pesanan/",body, requestOption)
    .toPromise();
  };

  getJsonMenu(){

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    requestOption = new RequestOptions({headers: myHeaders});

    return this.http.get("http://127.0.0.1:8000/GetMenu/", requestOption)
    .toPromise().then(res=>res.json());
  }

  getJsonMenuDetail( selectedMenu : string ){

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    let params = new URLSearchParams();
    params.set('nama_menu',selectedMenu);

    requestOption = new RequestOptions({headers: myHeaders, search: params});

    let menu : Menu;

    return this.http.get("http://127.0.0.1:8000/GetMenu/", requestOption)
    .map((responseData)=>{return responseData.json();})
    .map((menu) =>{
      let result:Menu;
      if (menu) {
                  result = new Menu(
                          menu.results[0].id_menu,
                          menu.results[0].id_kategori.id_kategori,
                          menu.results[0].nama_menu,
                          menu.results[0].deskripsi_menu,
                          menu.results[0].stok_menu,
                          menu.results[0].gambar_menu,
                          menu.results[0].harga_menu,
                          menu.results[0].discount,
                          menu.results[0].kalori,
                          menu.results[0].protein,
                          menu.results[0].natrium,
                          menu.results[0].lemak,
                          menu.results[0].karbohidrat);
          }
          return result;
      });
  }

  getJsonKategori(){

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    requestOption = new RequestOptions({headers: myHeaders});

    return this.http.get("http://127.0.0.1:8000/kategori/", requestOption)
    .toPromise().then(res=>res.json());
  }

  getJsonBerita(){

    let requestOption: RequestOptions;
    let myHeaders    : Headers = new Headers();
    myHeaders.append('Content-type', 'application/json');

    requestOption = new RequestOptions({headers: myHeaders});

    return this.http.get("http://127.0.0.1:8000/Berita/", requestOption)
    .toPromise().then(res=>res.json());
  }
}
