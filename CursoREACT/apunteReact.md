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
## **Componentes**
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
            <label>
                Email
                <input name="email" type="email" required placeholder="misael.360@ejemplo.com"></input>
            </label>
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


# **DUDAS**
> Que es un pluggin

> Que son los --presets

# **NOTAS RAPIDAS**
> Que es npx: npx es un comando que viene con npm que permite correr cierto programas que instalo con npm. 

> SI vamos a crear una aplicacion tenemos que unir todos los componentes para que funcionen juntos. 

> Se pueden mandar a llamar componentes con {NombreDeFuncion()} o incluso `<NombreDeLaFuncion/>`
