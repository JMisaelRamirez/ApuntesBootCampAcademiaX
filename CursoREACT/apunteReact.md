# **COMANDOS**

## **PRIMEROS PASOS**
## **Configuracion**
> Links necesarios para insertar dentro de un archivo html y usar React(se obtine de https://legacy.reactjs.org/docs/cdn-links.html):
```html
<script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>
<script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
```

> Links necesarios para tuilizar JSX dentro de html (se obtienen del siguiente link: https://babeljs.io/docs/babel-standalone)

```html
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
```

## **JSX**
> Crear una variable, escribiento etiquetas en html:
```jsx
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prueba JSX</title>
    <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>
    <script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
</head>
<body>
    <div id="root">

    </div>
    <script type="text/babel">
        const usuario = {
            name: 'Julio',
            edad: 25
        };
        let h1 = <h1 class='saludo'>Hello Misael!</h1>;
        ReactDOM.render(h1,document.getElementById('root'));
    </script>
</body>
</html>
```

> Usar sintaxys JavaScript en JSX:
```jsx
const usuario = {
    name: 'Julio',
    apellido: 'Ramirez',
    edad: 25
};

let h1 = <h1 class='saludo'>Hello {usuario.name}!</h1>; // Se utiliza {} si queremos utilizar java script dentro de una etiqueta 
ReactDOM.render(h1,document.getElementById('root'));
```

> Llamar una funcion en JSX dentro de una etiqueta:
```jsx
const usuario = {
name: 'Julio',
apellido: 'Ramirez',
edad: 25,
nickName: 'MichDroid'
};

function crearNombreCompleto (usuario) {
    return usuario.name + ' ' + usuario.apellido;
}

let obtenerUsuario = (usuario) => {
    return usuario.nickName;
};
let h1 = <h1 class={obtenerUsuario(usuario)}>Hello {crearNombreCompleto(usuario)}!</h1>; // Se utiliza {} si queremos utilizar java script dentro de una etiqueta 
ReactDOM.render(h1,document.getElementById('root'));
```

> Como convertir lenguaje de JSX a JavaScript Puro con ayuda de babel. Para esto nos vamos a babel compiler dentro de google y utlizamos la herramienta, asiendo la comversion tenemos que: 
```jsx
    let h1 = <h1 class='saludo'>Hello Misael!</h1>;
        ReactDOM.render(h1,document.getElementById('root'));
```
es igual a:

```js
let h1 = /*#__PURE__*/React.createElement("h1", {class: "saludo"}, "Hello Misael!");
ReactDOM.render(h1, document.getElementById('root'));
```

> Haciendo la conversion de lenguaje JSX a JAVASCRIPT corriendo BABEL localmente:
1. Abrimos una terminal en VSCODE.
2. Iniciamos npm init. Esto crea un archivo de package.json.
3. Instalamos BABEL. Utilizamos el siguiente comando `npm install babel-cli@6 babel-preset-react-app@3` DOnde `babel-cli@6`: Es la linea de interfaz de linea de comando para BABEL, ``babel-preset-react-app@3`: Es un pluggin para REACT para hacer esa transformacion de JSX a JS. Esto va a generar 2 dependencias en el archivo package.json -> `babel-cli: "^6.26.0"` y `"babel-preset-react-app": "3.1.2"`. Asi tambien se crea la carpeta `node.modules` que va a venir con el compilador.
4. Compilamos el archivo `jsx.j`. Escribimos en consola -> `npx babel --watch 01\ Primeros\ Pasos/jsx/ --out-dir dist --presets react-app/prod`. Donde `npx babel`
: Indica que ejecutaremos babel, `--watch`: Nos indica que observara el archivo y nos notificara cuando exista una modificacion, `01\ Primeros\ Pasos/jsx/`: La ruta donde estan los archivos, en este caso jsx, el cuala van a observarse y se van a compilar,  `--out-dir`: Nos indica que posteriormente indicaremos donde se guardaran los archivos creados, en este caso, se creara la carpte dist, `dist`: Nombre de la carpeta `--presets`: Nos indica que posteriormente mencionaremos el preset que utilizaremos, `react-app/prod`: Nombre del preset.
5. Por ultimo de creara un archivo .js con el mismo nombre pero en lenguaje JAVASCRIPT dentro de la carpeta destino, en este caso dist. 
**NOTA**: babel puede transformar un archivo .js con lengujae JSX a un archivo .js con lenguaje JAVASCRIPT 

## **COMPONENTES**
## **Componentes con funciones**
En REACT hay dos formas de crear componentes: 
1. Por medio de funciones.
2. Por medio de clases.

> Creando un componente: 
```jsx
function Saludo () { // Los componentes se nombrar iniciando con Mayusculas
    return <h1>Welcome Home!</h1> // Siempre se retorna la etiqueta. 
}

let h1 = Saludo();

ReactDOM.render(h1, document.getElementById('root'));
// Tambien podemos hacer lo siguiente para renderisar: 
//ReactDOM.render(<Saludo />, document.getElementById('root'));
// <Saludo /> - > Es una etiqueta llamando la funcion Saludo
```

> Creando una mini aplicaicon:
```jsx
function Saludo () {
    return <h1>Hello World!</h1>;
};

function App () {
    return (
        <div>
            <Saludo />
            <Saludo />
            <Saludo />
        </div>
    ); // El Parentesis no indicara que seran varias etiquetas. 
}

ReactDOM.render(<App />, document.getElementById('root'))
```

> Reto: 

![02 Reto](./srcReact/01%20Reto.png)

Solucion: 
```jsx
function Previa () {
    return (
        <div class='principal'>
            <div>
                <img src='#' alt='Shrek2'/>
            </div>
            <div>
                <svg></svg>
                <h2>95% de coincidencia</h2>
                <h2>2004</h2>
            </div>
            <div>
                <p></p>
            </div>

        </div>
    );
}
```

## **Propiedades**
> Agregar atributos cuando se mandan a llamar a las funciones con etiquetas < NombreDeFuncion />

```jsx
function Saludo (props) { // Para obtener propiedades como atributos de una etiqueta se utliza la palabra props.
    return <h1>Hello {props.name} {props.apellido}</h1>
}

function App () {
    return (
        <div>
            <Saludo name="Misael" apellido="Ramirez"/>
            <Saludo name="Jencita" apellido="Lopez"/>
            <Saludo name="Sonia" apellido="Cortes"/>
        </div>
    );
}

ReactDOM.render(<App />, document.getElementById('root'));
```

> Crear un aaplicacion con formulario:
```jsx
function Saludo (props) { // Para obtener propiedades como atributos de una etiqueta se utliza la palabra props.
    return <h1>Hello {props.name} {props.apellido}</h1>
}

function Login (props) {
    return (
        <form action="/action.php" method="POST">
            <label for="name" >Nombre</label>
            <input id="name" name="name" value={props.name}></input>
            <br />
            <br />
            <label>
                Email
                <input name="email" type="email" required placeholder="misael.360@ejemplo.com"></input>
            </label>
            <br />
            <br />
            <button>Iniciar Sesion</button>
        </form>
    );
}

function App () {
    return (
        <div>
            <Saludo name="Misael" apellido="Ramirez" />
            <Login name="Jencita" />
        </div>
    );
}

ReactDOM.render(<App />, document.getElementById('root'));
```
Nosotros podriamos crear nuestro propios componente y utilizarlos. Incluso, existen librerias de react en  `Material UI .com` en el cual podemos utilizar en nuestro proyectos. 

> Reto:
![Reto2](../CursoREACT/srcReact/02%20Reto.png)

```jsx
let nombre = 'Jenniffer';
let grupo = 'Ventas El Molino';


let Notificacion = (props) => {
    return (
        <div class='contenedor'>
            <a href='#'>
                <div>
                    <img src='#' alt='Foto de Perfil'/>
                </div>
                <div>
                    <span>
                        <b>{nombre}</b> te menciono en un comentario en <b>{grupo}</b>
                    </span>
                </div>
            </a>
        </div>
    );
};

let App = () => {
    return (
        <div>
            <Notificacion />
            <Notificacion />
            <Notificacion />
        </div>
    );    
};

ReactDOM.render(<App />, document.getElementById('root'));
```

## **Funciones con clasees***
El dia de hoy ya no se ocupan los componentes creados con clases. Todas las clase tienen un metodo que se llama render.
> Creando un componentes con clase: 
```jsx
class Bienvenido extends React.Component {
    render() {
        return <h1>Welcome {this.props.name}!</h1>
    }
}

ReactDOM.render(<Bienvenido name='Misael'/>, document.getElementById('root'));
```
A diferencia de los componentes con funciones estos componentes tienen ciclos de vida.

> Reto 3:

![Reto 3](../CursoREACT/srcReact/03%20Reto.png)

```jsx
class Nota extends React.Component {
    render() {
        return (
            <div class='contenedor'>
                <div class='titulo'>
                    <h1>{this.props.titulo}</h1>
                </div>
                <div class='contenido'>
                    <p>{this.props.contenido}</p>
                </div>
                <div class='hora'>
                    <p>
                        <b>{this.props.hora}</b>
                    </p>
                </div>
            </div>

        );
    }
}

ReactDOM.render(<Nota titulo='PASEAR AL PERRO' contenido='Pasear al perro de la vecina llamado Tomy' hora='17:00 hrs'/>, document.getElementById('root'));
```
## **Eventos en React**
> Crear un evento en react utilizando el atributo onclick='() => alert{"Alerta!"}' en html. En este caso, React reacciona a onclick de la siguiente manera `onClick`

```jsx
function Alertando (props) {
    let alerta = () => alert(props.mensaje);
    return <button onClick={alerta}>Click!</button>

}
// Definiendo un evento en componente clase
/*
class Alertando extends React.Component {
    render () {
        let alerta = () => alert(this.props.mensaje);
        return <button onClick={alerta}>Click!</button>
    }
}
*/

ReactDOM.render(<Alertando mensaje='Te Amo mucho, Jencita Bonita!!! <3'/>, document.getElementById('root'));

// Ahora
```

> Obtener el evento por medio de una variable, en este caso un evento de mouse:
```jsx
function Alertando (props) {
    let alerta = (e) => console.log("Alerta!", e); // Aqui esta la magia
    return <button onClick={alerta}>Click!</button>

}

ReactDOM.render(<Alertando mensaje='Te Amo mucho, Jencita Bonita!!! <3'/>, document.getElementById('root'));
```
La salida en consola es: 

![Evento](/CursoREACT/srcReact/evento.JPG)

> Reto:
![Reto 4](/CursoREACT/srcReact/04%20Reto.png)

```jsx
function cambiarCorreo () {

}

function cambiarClave () {

}


function Formulario () {

}
```

## **Estados**
Cada componente en React va a tener un estado.Por ejemplo el estado de un checkbox. Por ejemplo un input, cuando cambiamos syu estado al cambiar el valor dentro de el. 
> Estableciendo un HOOK:
```jsx
function Contador () {
    const [cuenta, setCuenta] = React.useState(0); // Inicializamos el state en 0

    return (
        <div>
              <h1>{cuenta}</h1>
              <input type='email'></input>
              <button onClick={() => {setCuenta(cuenta + 1)}}>Click!</button>
        </div>
    );
}

// Ahora, un gancho en componente de clase:
/*
class Contador extends React.Component {
    constructor (props) {
        super(props);
        this.state = {cuenta: 1}
    }
    
    render() {
        return (
            <div>
              <h1>{this.state.cuenta}</h1>
              <input type='email'></input>
              <button onClick={() => this.setState((state, props) => ({cuenta: state.cuenta + 1 }))}>Click!</button>
            </div>

        );

        
    }
}
*/

ReactDOM.render(<Contador/>, document.getElementById('root'))
```

>Reto: 
![Reto 5](/CursoREACT/srcReact/05%20Reto.png)

```jsx
function SelectorDeProducto () {
    const [producto, setProducto] = React.useState(0);

    const sumaProducto = () => {
        setProducto(producto + 1);
    }

    const restaProducto = () => {
        if(producto > 0){
            setProducto(producto - 1);
        }  
    }

    return (
        <div>
            <h1>{producto}</h1>
            <button class='botonResta' onClick={() => restaProducto()} >-</button>
            <button class='botonSuma'  onClick={() => sumaProducto()}>+</button>
        </div>
        
    );

}

ReactDOM.render(<SelectorDeProducto />, document.getElementById('root'));
```
## **Condicionales**
Se puede utilizar en logica como, si el usuario esta autorizado muestra este componente, si no esta autorizado mueestra este otro componente. Se puede utilizar esta logica para mostrar parte de la aplicacion solo a usuarios autorizados.

> Establecinedo un acondicion basica y comun:

```jsx
function Condicionales (props) {
    if (props.autorizado) return <h1>Bienvenido</h1> // props.autorizado ? true
    else return <h1>No Autorizado</h1>
}

ReactDOM.render(<Condicionales autorizado/>, document.getElementById('root'));
// Para ser no autorizado quitamos la propiedad y retorna No Autorizado.
// ReactDOM.render(<Condicionales />, document.getElementById('root'));
// Si simplemente definimos el nombre de la propiedad, se establece como que si autorizado fuese true. Por eso, el return retorna `Bienvenido`
```

> Simplificando el codigo anterior sin utilizar if y utilizando otro tipo de condicional:
```jsx
function Condicionales (props) {
    return props.autorizado ? <h1>Bienvenido</h1> : <h1>No Autorizado</h1>;
    // El comando anterior se lee: props.autorizado es true? Si si, se ejecuta ->
    // <h1>Bienvenido</h1> d elo contrario -> <h1>No Autorizado</h1>
} 

ReactDOM.render(<Condicionales autorizado/>, document.getElementById('root'));
```

> Haciendo que un componente retore nulo:

```jsx
function Condicionales (props) {
     return props.acceso ? <h1>Bienvenido</h1> : null;
    // Si quisieramos utilizar null, como en este caso, hay un truco dentro de javascript:
    // return props.acceso && <h1>Bienvenido</h1>; 
    // En el comando anterior, si props.acceso es true -> true && <h1>Bienvenido</h1>, por lo que la salida sera <h1>Bienvenido</h1>.

}

ReactDOM.render(<Condicionales acceso/>, document.getElementById('root'));
```

> Usando la comparacion utilizando null como en los ejemplos anteriores. Aplicaremos lo anterios a una aplicacion con un gancho

```jsx
function Condicionales (props) {   
     return props.acceso ? <h1>Autorizado</h1> : <h1>Sin Autorizacion</h1>;
}

function App () {
    const [autorizacion, setAutorizacion] = React.useState(false)
    return (
        <div>
            <h1>Bienvenido</h1>
            <button class='botonAutorizar' onClick={() => (setAutorizacion(true))}>Autorizar</button>
            <Condicionales acceso = {autorizacion}/>    
        </div>
    );
}

ReactDOM.render(<App />, document.getElementById('root'));
```

> Reto:

![Reto 6](/CursoREACT/srcReact/06%20Reto.png)

```jsx
function SignUp (props) {
    if(props.sesion) {
        return ( 
                 <form>
                    <h1>Formulario</h1>
                    <input type='email' placeHolder='nombre.360@ejemplo.com' required></input>
                    <br/>
                    <input type='password' required placeHolder='password'></input>
                    <button>Summit</button>
                </form>
        );
    }
    else return null;
}

function App () {
    const [sesion, setSesion] = React.useState(false);
    return (
        <div>
            <button onClick = {() => (setSesion(true))}>SignUp</button>
            <SignUp sesion = {sesion}/>   
        </div>
    );
}

ReactDOM.render(<App sesion/>, document.getElementById('root'));
```

## **Listas**

> Crear una lista con React: 
```jsx
function Series () {
    const series = ['Silicon Valley', 'Mr. Robot', 'Black Mirror'];
    return (
        <ul>
            {series.map(s => (<li>{s}</li>))}
        </ul>
    );
}

ReactDOM.render(<Series />, document.getElementById('root'));
```
> Pasando la lista como propiedad:
```jsx
function Series (props) {
    
    return (
        <ul>
            {props.series.map(s => (<li>{s}</li>))}
        </ul>
    );
}
const series = ['Silicon Valley', 'Mr. Robot', 'Black Mirror'];

ReactDOM.render(<Series series={series}/>, document.getElementById('root'));
```
 Hay un requerimiento adicional cuando se trabaja con listas. Si vamos a la consola del navegador al ejecutar la lista, menciona que una lista debe de tener una popiedad unica de key (llave). Esto es, por qu ereact quiere que cada una de estas listas tenga un identificacion unica, esto es por si cambia la lista react solo va a cambiar lo que se cambio por la lista. 

 > Estableciendo una identificacion unica (key) a la lista generada anteriormente:

 ```jsx
 function Series (props) {
    
    return (
        <ul>
            {props.series.map(s => (<li key={s}>{s}</li>))} 
            
        </ul>
    );
}
// La identificacion se estableci dentro de la etiqueta <li> con la palabra reservada key=''
const series = ['Silicon Valley', 'Mr. Robot', 'Black Mirror'];

ReactDOM.render(<Series series={series}/>, document.getElementById('root'));
 ```




# **DUDAS**
> Que es un pluggin

> Que son los --presets

> Estudiar mas eventos con clases y hooks y mas sobre clases y herencia polimorfismo etc, 

# **NOTAS RAPIDAS**
> Que es npx: npx es un comando que viene con npm que permite correr cierto programas que instalo con npm. 

> SI vamos a crear una aplicacion tenemos que unir todos los componentes para que funcionen juntos. 

> Se pueden mandar a llamar componentes con {NombreDeFuncion()} o incluso `<NombreDeLaFuncion/>`

> `<input type='email' onChange={getCorreo}></input>` -> onChange nos permite detectar un evento de cambio de valor de input el cual podemos utilizar. 

## **PENDIENTES***

> Reto 4



