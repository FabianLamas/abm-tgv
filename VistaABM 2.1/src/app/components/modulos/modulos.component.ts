import { Component, OnInit } from '@angular/core';
import axios from 'axios';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-modulos',
  templateUrl: './modulos.component.html',
  styleUrls: ['./modulos.component.css']
})
export class ModulosComponent implements OnInit {

  misModulos: any = [];
  idCarrera = 0;
  isDataLoaded: boolean;

  constructor(private activatedRoute: ActivatedRoute) {
    this.activatedRoute.params.subscribe(params => {
      console.log('mi parametro es ' + params['id']);
      
      this.idCarrera = params['id'];
      this.listarModulos();
    });
  }

  ngOnInit() {
    console.log('se cargo modulos');
  }

  listarModulos() {
    this.idCarrera = parseInt(this.idCarrera);
    const url = 'api/Modulos/Listar';
    axios.get(url).then((response) => {
      this.misModulos = response.data.filter(modulo => modulo.idCarrera === this.idCarrera);
      //this.misModulos = response.data;
      this.isDataLoaded = true;
    }).catch((error) => {
      console.log(error);
    });
  }

}
