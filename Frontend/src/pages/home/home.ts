import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { Proveedor1Provider} from '../../providers/proveedor1/proveedor1';
import { Subscriber } from 'rxjs/Subscriber';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
//usuarios
contratos
contrato_id
  constructor(public navCtrl: NavController, public proveedor:Proveedor1Provider) {
 }
  ionViewDidLoad(){ //funcion recibir datos api
    this.proveedor.obtenerDatos()
    .subscribe(
      //(data)=>{this.usuarios = data;},
      (data)=>{this.contratos = data;},
      (error)=>{console.log(error);}
    )
        
  }
modificarDatos(contrato_id){
  this.proveedor.updateDatos(contratos.contrato_id)
  .subscribe(

  )
}

}
