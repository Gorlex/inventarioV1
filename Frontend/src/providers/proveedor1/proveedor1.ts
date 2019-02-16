import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';


/*
  Generated class for the Proveedor1Provider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class Proveedor1Provider {

  constructor(public http: HttpClient) {
    console.log('Hello Proveedor1Provider Provider');
  }
  obtenerDatos(){
    return this.http.get('http://localhost:3000/api/v1/contrato');
    //return this.http.get('https://jsonplaceholder.typicode.com/users');
  }
  addDatos(data:any){
    return this.http.post('http://localhost:3000/api/v1/contrato',data);
    }
  //updateDatos(data:any){
   // return this.http.put('http://localhost:3000/api/v1/contrato'+contrato_id,data);
  //}  



}
