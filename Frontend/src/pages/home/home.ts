import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { Proveedor1Provider} from '../../providers/proveedor1/proveedor1';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
//usuarios
contratos
  constructor(public navCtrl: NavController, public proveedor:Proveedor1Provider) {
 }
  ionViewDidLoad(){
    this.proveedor.obtenerDatos()
    .subscribe(
      //(data)=>{this.usuarios = data;},
      (data)=>{this.contratos = data;},
      (error)=>{console.log(error);}
    )
  }


}
