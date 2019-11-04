import { Component, OnInit } from '@angular/core';
import axios from 'axios';
import { AppService } from '../../app.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})

export class NavbarComponent implements OnInit {

  isDataLoaded: boolean;
  cargarCursos: boolean;
  misCarreras: any = [];
  misModulos: any = [];
  misCursos: any = [];
  modulosFiltrados: any = [];
  cursosFiltrados: any = [];
  idCarrera = 1;

  miAlerta: string;
  constructor() {

  }

  ngOnInit() {
     this.llamar();
     this.isDataLoaded = true;
  }

  llamar() {
    const urlCarreras = 'api/Carreras/Listar';

    axios.get(urlCarreras).then((response) => {
      // console.log(response.data);
      this.misCarreras = response.data;
    }).catch((error) => {
      console.log(error);
    });

    // const urlModulos = 'api/Modulos/Listar';

    // axios.get(urlModulos).then((response) => {
    //   this.misModulos = response.data;
    // }).catch((error) => {
    //   console.log(error);
    // });

    // this.listarCursos();
  }

  listarCursos() {
    const url = 'api/Cursos/Listar';
    axios.get(url).then((response) => {
      console.log(response.data);
      this.misCursos = response.data;
      this.listarModulosCarrera(this.idCarrera);
    }).catch((error) => {
      console.log(error);
    });
  }

  listarModulosCarrera(id) {
    this.modulosFiltrados = this.misModulos.filter(modulo => modulo.idCarrera === id);
    console.log('listado');
    console.log(this.modulosFiltrados);
    this.isDataLoaded = true;
    this.cargarCursos = false;
  }

  listarCursosModulo(modulo) {
    let id = 0;
    switch (modulo) {
      case 'java':
        id = 7;
        break;
      case '.NET':
        id = 8;
        break;
      case 'PHP':
        id = 9;
        break;
      default:
        id = 1;
        break;
    }
    this.cursosFiltrados = this.misCursos.filter(curso => curso.idModulo === id);
    this.cargarCursos = true;
    console.log('cargo los cursos');
  }

  async botonEditarCurso(id) {

    let inputValue1;
    let inputValue2;
    let inputValue3;
    let inputValue5;
    const {value: formValues} = await Swal.fire({
      title: 'Agregar curso',
      html:
        '<input id="swal-input1" class="swal2-input" placeholder="nombre" maxlength="100">' +
        '<input id="swal-input2" class="swal2-input" placeholder="descripcion">' +
        '<input id="swal-input3" class="swal2-input" placeholder="horas">',
        input: 'select',
        inputOptions: {
          'net': '.NET',
          'java': 'Java',
          'php': 'PHP',
        },
        inputPlaceholder: 'Selecciona un modulo',
        showCancelButton: true,
      focusConfirm: false, inputValidator: (value) => {
        return new Promise((resolve) => {
          if (value != null) {
            inputValue3 = value;
            resolve();
          } else {
            resolve('hace bien las cosas')
          }
        });
      },
      preConfirm: () => {
        return [
          inputValue1 = (<HTMLInputElement>document.getElementById('swal-input1')).value,
          inputValue2 = (<HTMLInputElement>document.getElementById('swal-input2')).value,
          inputValue3,
          inputValue5 = (<HTMLInputElement>document.getElementById('swal-input3')).value,
          this.llamarPutCurso(inputValue1, inputValue2, inputValue3, inputValue5, id),
        ];
      }
    });

    if (formValues) {
      Swal.fire(JSON.stringify(formValues))
    }
  }

  async llamarPutCurso(nombre, descripcion, tipo, horas, id){

    if (nombre !== '' && descripcion !== '') {
      let idModulo;
      let logo;

      switch (tipo) {
        case 'java':
            idModulo = 7;
            logo = 'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg';
            break;
        case 'net':
            idModulo = 8;
            logo = 'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg';
            break;
        case 'php':
            idModulo = 9;
            logo = 'https://www.educacionit.com/images/cursos/r/curso-de-php.jpg';
            break;

        default:
            idModulo = 1;
            logo = 'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg';
            break;
      }

      const params = {
        id,
        nombre,
        descripcion,
        logo,
        horas,
        idModulo
      };

      console.log(params);

      const urlEditarCurso = 'api/Cursos/Actualizar';
      // let res = await axios.put(urlEditarCurso, params);

      axios.put(urlEditarCurso, params)
            .then(res => res.data)
            .catch(err => console.error('No fue posible actualizar la peticion', err));

      // console.log(res.data);
      this.listarCursos();
    }
  }

  botonBorrarCurso(id) {
    Swal.fire({
      title: 'Estas Seguro?',
      text: 'Esta accion no se puede revertir!',
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Si, deseo borrarlo!'
    }).then((result) => {
      if (result.value) {
        Swal.fire(
          'Borrado!',
          'El archivo a sido borrado.',
          'success',
        );
        this.borrarCurso(id);
      }
    });
  }

  borrarCurso(myId) {
    const urlBorrarCurso = ('api/Cursos/Eliminar/' + myId);
    axios.delete(urlBorrarCurso).then(() => {
      this.listarCursos();
    });
  }

  async agregarCurso() {
    var inputValue1: any;
    var inputValue2: any = '';
    var inputValue3: any = '';
    var inputValue4: any = '';
    var inputValue5: any = '';
    const {value: formValues} = await Swal.fire({
      title: 'Agregar curso',
      html:
        '<input id="swal-input1" class="swal2-input" placeholder="nombre" maxlength="100">' +
        '<input id="swal-input2" class="swal2-input" placeholder="descripcion">' +
        '<input id="swal-input3" class="swal2-input" placeholder="horas">' +
        '<input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg">',
        input: 'select',
        inputOptions: {
          'net': '.NET',
          'java': 'Java',
          'php': 'PHP',
        },
        inputPlaceholder: 'Selecciona un modulo',
        showCancelButton: true,
      focusConfirm: false, inputValidator: (value) => {
        return new Promise((resolve) => {

          if (value === 'java' || value === 'net' || value === 'php') {
            inputValue3 = value;
            resolve();
          } else {
            resolve('Seleccione un modulo!');
          }
        });
      },
      preConfirm: () => {
        return [
          inputValue1 = 'todo salio bien!',
          //this.llamarPostCuso(inputValue1, inputValue2, inputValue3, inputValue5),
        ];
      }
    });

    if (formValues) {
     // Swal.fire(JSON.stringify(formValues));
      Swal.fire('Curso creado con exito!');
    }
  }

  async llamarPostCuso(nombre, descripcion, tipo, horas) {

    let idModulo;
    let logo;

    if (isNaN(horas) || typeof horas !== 'number') {
      horas = 1;
    }

    switch (tipo) {
      case 'java':
          idModulo = 7;
          logo = 'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg';
          break;
      case 'net':
          idModulo = 8;
          logo = 'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg';
          break;
      case 'php':
          idModulo = 9;
          logo = 'https://www.educacionit.com/images/cursos/r/curso-de-php.jpg';
          break;

      default:
          idModulo = 1;
          logo = 'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg';
          break;
    }

    const params = {
      nombre,
      descripcion,
      logo,
      horas,
      idModulo
    };

    // this.service.postCursos(params);
    const res = await axios.post('api/Cursos/Crear', params);

    console.log(res.data);
    this.listarCursos();
  }
}
