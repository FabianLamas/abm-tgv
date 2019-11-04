import { Component, OnInit } from '@angular/core';
import axios from 'axios';
import { ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-cursos',
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css']
})
export class CursosComponent implements OnInit {

  misCursos: any = [];
  idModulo = 0;
  isDataLoaded: boolean;

  constructor(private activatedRoute: ActivatedRoute) {
    this.activatedRoute.params.subscribe(params => {
      this.idModulo = params['id'];
      // console.log('el id modulo es: ' + this.idModulo);
      this.listarCursos();
    });
  }

  ngOnInit() {
    console.log('se cargo cursos');
  }

  listarCursos() {
    // console.log("listar " + this.idModulo);
    this.idModulo = parseInt(this.idModulo);
    const url = 'api/Cursos/Listar';
    axios.get(url).then((response) => {
      this.misCursos = response.data.filter(modulo => modulo.idModulo === this.idModulo);
      this.isDataLoaded = true;
    }).catch((error) => {
      console.log(error);
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
          inputValue1 = (<HTMLInputElement>document.getElementById('swal-input1')).value,
          inputValue2 = (<HTMLInputElement>document.getElementById('swal-input2')).value,
          inputValue5 = (<HTMLInputElement>document.getElementById('swal-input3')).value,
          this.llamarPostCuso(inputValue1, inputValue2, inputValue3, inputValue5),
        ];
      }
    });

    if (formValues) {
      Swal.fire('Curso creado con exito!');
    }
  }

  async llamarPostCuso(nombre, descripcion, tipo, horas) {

    let idModulo;
    let logo;

    if (isNaN(horas) || typeof horas !== 'number') {
      horas = parseInt(horas);
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

    const res = await axios.post('api/Cursos/Crear', params);

    console.log(res.data);
    this.listarCursos();
  }


  async botonEditarCurso(id) {
    const myEddit = this.misCursos.filter(modulo => modulo.id === id);

    const myNomb = myEddit[0].nombre;
    const myDesc = myEddit[0].descripcion;
    const myHs = myEddit[0].horas;

    let inputValue1;
    let inputValue2;
    let inputValue3;
    let inputValue5;
    const {value: formValues} = await Swal.fire({
      title: 'Editar curso',
      html:
        '<input id="swal-input1" class="swal2-input" placeholder="nombre" maxlength="100">' +
        '<input id="swal-input2" class="swal2-input" placeholder="descripcion">' +
        '<input id="swal-input3" class="swal2-input" placeholder="horas">',
      onOpen: () => {
        (<HTMLInputElement>document.getElementById('swal-input1')).value = myNomb;
        (<HTMLInputElement>document.getElementById('swal-input2')).value = myDesc;
        (<HTMLInputElement>document.getElementById('swal-input3')).value = myHs;
      },
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
            resolve('hace bien las cosas');
          }
        });
      },
      preConfirm: () => {
        return [
          inputValue1 = (<HTMLInputElement>document.getElementById('swal-input1')).value,
          inputValue2 = (<HTMLInputElement>document.getElementById('swal-input2')).value,
          inputValue5 = (<HTMLInputElement>document.getElementById('swal-input3')).value,
          this.llamarPutCurso(inputValue1, inputValue2, inputValue3, inputValue5, id),
        ];
      }
    });

    


    if (formValues) {
      Swal.fire('Curso editado con exito!');
    }
  }

  async llamarPutCurso(nombre, descripcion, tipo, horas, id) {

    console.log(nombre, descripcion, tipo, horas, id);


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

      axios.put(urlEditarCurso, params)
            .then(res => res.data)
            .catch(err => console.error('No fue posible actualizar la peticion', err));
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
}
