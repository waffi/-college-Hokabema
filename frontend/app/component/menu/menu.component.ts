import { Component, OnInit } from '@angular/core';

import { DataService, HTTPService } from '../../service/index';
import { Menu, Category, Order } from '../../model/index';
import { ORDER } from '../../mock/index';

@Component({
  moduleId: module.id,
  selector: 'my-allmenu',
  templateUrl: './menu.component.html'
})
export class MenuComponent implements OnInit {
  constructor(
    private service: DataService,
    private httpService: HTTPService) { }

  //allmenu: Menu[] = [];
  //allcategory: Category[] = [];

  selectedMenu : Menu;
  jsonMenu;
  jsonKategori;

  ngOnInit(): void {
    //this.service.getAllMenu().then(allmenu => this.allmenu = allmenu);
    // this.service.getAllCategory().then(allcategory => this.allcategory = allcategory);

    this.httpService.getJsonMenu().then(res=>this.jsonMenu = JSON.parse(JSON.stringify(res)),err=>alert(err));
    this.httpService.getJsonKategori().then(res=>this.jsonKategori = JSON.parse(JSON.stringify(res)),err=>alert(err));
  }

  addToOrder(menu): void {
    this.selectedMenu = new Menu(
                        menu.id_menu,
                        menu.id_kategori.id_kategori,
                        menu.nama_menu,
                        menu.deskripsi_menu,
                        menu.stok_menu,
                        menu.gambar_menu,
                        menu.harga_menu,
                        menu.discount,
                        menu.kalori,
                        menu.protein,
                        menu.natrium,
                        menu.lemak,
                        menu.karbohidrat);
    this.service.addToOrder(this.selectedMenu);
  }
}
