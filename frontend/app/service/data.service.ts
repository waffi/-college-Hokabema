import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import { Menu, Offer, Category, Order } from '../model/index';
import { MENU, OFFER, CATEGORY, ORDER, RECOMENDATION } from '../mock/index';

@Injectable()
export class DataService {

  constructor(
    private router: Router){}

  // menu

  getAllMenu(): Promise<Menu[]> {
    return Promise.resolve(MENU);
  }

  getMenu(name: string): Promise<Menu> {
    return this.getAllMenu()
    .then(allmenu => allmenu.find(menu => menu.name === name));
  }

  // offer

  getAllOffer(): Promise<Offer[]> {
    return Promise.resolve(OFFER);
  }

  getOffer(name: string): Promise<Offer> {
    return this.getAllOffer()
    .then(alloffer => alloffer.find(offer => offer.name === name));
  }

  // category

  getAllCategory(): Promise<Menu[]> {
    return Promise.resolve(CATEGORY);
  }

  getCategory(name: string): Promise<Category> {
    return this.getAllCategory()
    .then(allcategory => allcategory.find(category => category.name === name));
  }

  //order

  getAllOrder(): Promise<Order[]> {

    let allorder: Order[] = [];

    ORDER.splice(0);

    if (localStorage.getItem("order") != null){
      allorder = JSON.parse(localStorage.getItem('order'));

      for (let order of allorder) {
        ORDER.push(order);
      }
    }

    return Promise.resolve(ORDER);
  }

  addToOrder(menu: Menu): void {

    let order: Order ;
    let isFound: boolean = this.increaseQuantity(menu);

    if(!isFound)
    {
      order = {
        id_cart : 1,
        menu : menu,
        quantity : 1
      }
      ORDER.push(order);
      localStorage.setItem('order', JSON.stringify(ORDER));
    }
  }

  increaseQuantity(menu: Menu) : boolean
  {
    let isFound: boolean = false;
    for (var i = 0; i < ORDER.length; i++) {
      if(ORDER[i].menu.id_menu === menu.id_menu)
      {
        ORDER[i].quantity++;
        isFound = true;
      }
    }
    localStorage.setItem('order', JSON.stringify(ORDER));
    return isFound;
  }

  decreaseQuantity(menu: Menu) : boolean
  {
    let isFound: boolean = false;
    for (var i = 0; i < ORDER.length; i++) {
      if(ORDER[i].menu.id_menu === menu.id_menu)
      {
        if(ORDER[i].quantity != 1)
        {
          ORDER[i].quantity--;
          isFound = true;
        }
      }
    }
    localStorage.setItem('order', JSON.stringify(ORDER));
    return isFound;
  }

  removeItem(menu: Menu)
  {
    var index;
    for (var i = 0; i < ORDER.length; i++) {
      if(ORDER[i].menu.id_menu === menu.id_menu)
      {
        index = i;
      }
    }
    ORDER.splice(index, 1)
    localStorage.setItem('order', JSON.stringify(ORDER));
  }

  getSubTotal(): Promise<number> {
    let subTotal : number = 0;
    for (var i = 0; i < ORDER.length; i++) {
        subTotal += ORDER[i].menu.price*ORDER[i].quantity;
    }
    return Promise.resolve(subTotal);
  }

  checkOrder()
  {
   if (ORDER.length === 0){
     this.router.navigate(['checkout/order-confirmation']);
     return false;
   }
   return true;
  }

  // recomendation

  getAllRecomendation(): Promise<Menu[]> {
    return Promise.resolve(RECOMENDATION);
  }
}
