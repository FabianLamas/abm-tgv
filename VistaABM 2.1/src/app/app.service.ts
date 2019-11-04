import { Injectable } from '@angular/core';
import axios from 'axios';

@Injectable({
  providedIn: 'root'
})

export class AppService {

  misModulos: any = [];
  modulosFiltrados = [];
  isListaModuloLoaded: boolean;

  constructor() { }

  cargarListaDeModulos() {
    const url = 'api/Modulos/Listar';

    axios.get(url).then((response) => {
      console.log(response.data);
      this.misModulos = response.data;
      this.isListaModuloLoaded = true;
    }).catch((error) => {
      console.log(error);
    });
  }

  async postCursos(params){
    // let res = await axios.post('api/Cursos/Crear', params);

    // console.log(res.data);
    // this.listarCursos();
  }

}
