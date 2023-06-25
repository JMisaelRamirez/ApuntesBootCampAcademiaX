
* HTML permite estructura un pagina WEB
* Algunos atributos no llevan valor. Solo significan true. Ejem: loop autoplay
# **APUNTES DE HTML**
## **1. Set Up**


### **Extension _HTML Preview de George Oliveira**
Esta extension nos permite vizualizar el codigo HTML dentro de VSC

### **Extension Live Server de Ritwick Dey**
Nos evita refrescar la pagina web ya que lo hace de forma automatica. 
### **Etiquetas**
Las etiquetas se simbolizan de la siguiente manera <_letra_></_letra_>. Cada una de las etiquetas en HTML simbolizan algo.

Hay etiquetas que se cierran directamente. 
### **Elementos**

Los elementos (elements) en HTML se escriben entre etiquetass (< >) y pueden tener atributos que les proporcionan propiedades adicionales. Por ejemplo, el elemento (element) < p > se utiliza para crear un párrafo de texto, mientras que el elemento < img > se utiliza para insertar imágenes en una página.

Cada elemento en HTML tiene una sintaxis específica y un propósito determinado.
### **Atributos**
Tienen caracteristicas especiales en las etiquetas. Los atributos nos permiten hacer cosas diferentes dentro de una etiqueta. 

### **Entidades de caracteres**
Claro que sí, una entidad de carácter en HTML es un código especial que se utiliza para representar caracteres que de otra manera no se podrían incluir directamente en una página web.

Por ejemplo, si quisieras incluir el signo de mayor que (>) en tu página HTML, no podrías hacerlo simplemente escribiéndolo directamente en tu código, ya que ese símbolo se utiliza para cerrar etiquetas. En su lugar, tendrías que utilizar una entidad de carácter como ">" para que el símbolo sea interpretado correctamente por el navegador.

Las entidades de carácter se escriben comenzando con el símbolo "&", seguido del nombre o número de la entidad, y terminando con el símbolo ";". Por ejemplo, "<" es la entidad para el signo de menor que (<), "&" es la entidad para el símbolo "&", y "€" es la entidad para el símbolo del euro (€)

### **Document object module (DOM)**
Es la representacion del HTML en la pagina. Es como un arbol que tiene etiquetas dentro de etiquetas. Ejemplo: 

```html
<p> Parrafo
    <i>i
        <b>B</b>
    </i>
    <i>i
        <b>B</b>
    </i>
    <i>i
        <b>B</b>
    </i>
</p>
```
**OutPut:**
<p> Parrafo
    <i>i
        <b>B</b>
    </i>
    <i>i
        <b>B</b>
    </i>
    <i>i
        <b>B</b>
    </i>
</p>

## **2. Textos**
* HTML se trata de dar estructura a la pagina WEB
* ¿Cual es la diferencia de la etiqueta < i > y < em >?
* ¿Cual es la diferencia entre linea y bloque?





* Agregar el comando em
* Agregar que significa la letra de las etiquetas: Ejem->b : Bold
* Agregar a comandos la etiqueta strong. Representa mayor importancia, seriedad, o urgencia por su contenido y el elemento b es para llamar la antencion
* Elemeto small en una etiqueta: Representa menos impotancion. No es de mucha importancia. 
* El elemento span no significa nada, se utiliza dentro de un bloque y solo define lo que esta dentro de span como su hijo.

* Agregar la palabra reservada &nbsp;
---
```html
<p>Este es un texto <span>de un animal</span></p>
```
output:
<p>Este es un texto <span>de un animal</span></p>

---
---

Otra forma de indicar un hijo de otra etiqueta es: 
```html
<p>Este es un texto <p>de un animal</p></p>
```
output:
<p>Este es un texto <p>de un animal</p></p>

---

LA diferencia de span no realiza un salto de parrafo a comparacion de p y en la forma en la que estan definos ambas expresiones, las dos forman generan un hijo de un padre.

*La entidad de caracter &nbsp: 
Esta entidad de caracter nos permite agregar espacios a un texto. Agregando espacios a un texto con esta entidad nos ayuda a mantener riguido el texto al momento de mover el tamaño de la venta.

# Notas

* When you add a lower rank heading element to the page, it's implied that you're starting a new subsection.

After the h3 element with the Things cats love: text, add an unordered list (ul) element. Note that nothing will be displayed at this point.

        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
        <ul></ul>

Use list item (li) elements to create items in a list. Here is an example of list items in an unordered list:

<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
Within the ul element nest three list items to display three things cats love:

cat nip, laser pointers, lasagna

## **3. Encabezados**

Los header son encabezados. La seleccion de el tipo de _h_ no se hace para dar dirente tipo de estilos, para eso se utiliza css, mas bien, se hace para dar dirente significado a la estructura de html

```html
<h1>Titulo</h1><!--header (encabezado)-->
<h2>Subtitulo</h2>
<h3>Subtitulo</h3>
<h4>Subtitulo</h4>
<h5>Subtitulo</h5>
<h6>Subtitulo</h6>
```
OutPut:

<h1>Titulo</h1>
<h2>Subtitulo</h2>
<h3>Subtitulo</h3>
<h4>Subtitulo</h4>
<h5>Subtitulo</h5>
<h6>Subtitulo</h6>

> Cuando se utiliza _h1_ lo que se le esta diciendo a la pagina es que este es el titulo de la pagina. 

## **4. Listas**
### **Listas desordenadas (Unorder list)**
Una lista desordenada esta indicada por biñetas (bullet list)

```html
<p>Mis hablidades blandas</p>
<ul><!--ul: unorder list-->
    <li></li> <!--li: list-->
    <li></li>
</ul>
```
Output:
<p>Mis hablidades blandas</p>
<ul>
    <li>Amable</li>
    <li>Paciente</li>
    <li>Tolerante</li>
</ul>

### **Listas ordenadas (Order Lists)**
Una lista ordenada esta enumerada. Ejemplo:

```html
<ol> <!--ol: Order List-->
    <li>Abrir la puerta</li>
    <li>Sacar la basura</li>
    <li>Cerrar la puerta</li>
</ol>
```

OutPut:

<ol>
    <li>Abrir la puerta</li>
    <li>Sacar la basura</li>
    <li>Cerrar la puerta</li>
</ol>

### **Listas de definicion (Definition Lists)**
Una lista de definicion sirve para definir palabras. Ejem:

```html
<dl><!--dl: Definition List-->
    <dt>HTML</dt><!--dt: Defintion Text. Define la palabra a definir-->
    <dd>Es un lenguaje de marcado de texto.</dd><!--dd: Do Definition-->
    <dd>Se utiliza para el desarrollo de paginas de internet.</dd>
</dl>
```

OutPut:

<dl><!--dl: Definition List-->
    <dt>HTML</dt><!--dt: Defintion Text. Define la palabra a definir-->
    <dd>Es un lenguaje de marcado de texto.</dd>
    <dd>Se utiliza para el desarrollo de paginas de internet.</dd>
</dl>

## **5. Formatos**

### **Agregar codigo en HTML**
El elemento code nos permite agregar codigo de cualquier lenguaje en HTML

```html
<p>Este es un codigo de CSS:
    <code>{backgroud: blue;}</code>
</p>
<p>Utiliza este codigo de HTML
    <code></code>
</p>
```

OutPut:

<p>Este es un codigo de CSS:
    <code>{backgroud: blue;}</code>
</p>

### **Rupura de linea (Line Break)**
Este elemento nos permite colocar el texto en otra linea.

```html
<p> <!--br: Break. Tambien dice: Aqui termina esta linea-->
    Quiero que<br />este texto<br />este en<br />varias lineas.
</p>
```

OutPut:
<p>
    Quiero que<br />este texto<br />este en<br />varias lineas.
</p>


### **Subindice y Superindice**

```html
<!--Subindice. sub: Sub Indice-->
<p>CO<sub>2</sub></p>
<!--Superindice. sup: Super Indice-->
<p>n<sup>3</sup></p>
```
Ouput:
<!--Subindice. sub: Sub Indice-->
<p>CO<sub>2</sub></p>
<!--Superindice. sup: Super Indice-->
<p>n<sup>3</sup></p>

## **6. Citas**

### **Citas de bloque**
```html
<blockquote> <!--blockquote: Cita de bloque-->
    <p>La piedra angular del crecimiento es el dolor</p>
    <cite>Bill Wilson</cite><!--cite: Cita-->
</blockquote>
```

Output:

<blockquote>
    <p>La piedra angular del crecimiento es el dolor</p>
    <cite>Bill Wilson</cite>
</blockquote>

### **Citas con comillas**

```html
<p>Bill Wilson, dijo:
    <q>El dolor es la piedra angular del crecimiento. La humildad es el reconocimineto de que y quienes somos en la realidad seguido de un esfuerzo sincero de querer cambiar.</q>
</p>
```

OutPut:

<p>Bill Wilson, dijo:
    <q>El dolor es la piedra angular del crecimiento. La humildad es el reconocimineto de que y quienes somos en la realidad seguido de un esfuerzo sincero de querer cambiar.</q>
</p>

## **7. Time**
Los elementos de tiempo, en este caso,**&lt;time&gt;** nos permiten brindarle informacion a Google de alguna fecha importante que deseemos destacar dentro de nuestra pagina web, asi cuando los usuarios busque algun evento publicado en nuestra pagina, google lo podra buscar. 

El atributo **datetime** nos ayuda a definir la hora o fecha de algun evento. Puede ser que se coloque la fecha por separado o incluso junto.


```html
<!--Ejemplo 1: -->
<p>Nos vemos el 
    <time datetime = "2024-04-20">sabado</time> <!--time: tiempo, datetime-->
    a las
    <time datetime = "16:20:00.5-08:00">4:20</time>
</p>
<!--Ejemplo 2: -->
<p>Nos vemos a las
    <time datetime = "2024-04-20 10:00-0800">10</time>
</p>
```

OutPut:

<p>Nos vemos el 
    <time datetime = "2024-04-20">sabado</time> <!--time: tiempo, datetime-->
    a las
    <time datetime = "16:20:00.5-08:00">4:20</time>
</p>
<!--Ejemplo 2: -->
<p>Nos vemos a las
    <time datetime = "2024-04-20 10:00-0800">10</time>
</p>

## **8. Vinculos**

Los vinculos son etiquetas que te prermiten ir a otras paginas o direcciones. Se utiliza el atributo **href** el cual se le asigna un vinculo o direccion. 

```html
<p>Da click en la palabra 
    <a href = "facebook.com">Facebook</a> para dirigirte a Facebook
</p> <!--href: HyperLink Reference-->
```
Output:

<p>Da click en la palabra <a href = "facebook.com">Facebook</a> para dirigirte a Facebook</p>

## **9. Rutas**

### **Vinculo relativo**
Un vinculo relativo es cuando se coloca un slash (barra inclinada) y se coloca . para que se dirija a la carpeta actual, .. para que se dirija a la carpeta padre. 

```html
<p>Diriguete al siguiente 
    <a href = "./codigoPruebaHTML.html">Link</a>,
    <a href = "../codigoPruebaHTML.html">Link 2</a>
</p>
```

OutPut:

<p>Diriguete al siguiente 
    <a href = "./codigoPruebaHTML.html">Link</a>,
    <a href = "../codigoPruebaHTML.html">Link 2</a>
</p>

### **Vinculo Absoluto**
Este tipo de vinculos incluye la direccion completa para ir a un lugar.

```html
<p>Dirigite a Google con el siguiente
    <a href = "https://www.google.com/">Link</a>
</p>
```

OutPut:

<p>Dirigite a Google con el siguiente
    <a href = "https://www.google.com/">Link</a>
</p>

## **10. Navegacion**
Una pagina Web esta constituida por diferentes archivos HTML. Para navegar entre los archivos HTMl se utilizan las rutas (Vinculos). En realidad, cuando creamos archivos de HTML podremos navegar entre estos, pero, si quisieramos que mas gente acceda a nuestra pagina web, estas personas deberan de tener los archivos HTML para aceder a esta lo cual nos indica que seria imposible pasarle nuestros archivos HTML a cada persona, para ello, es comveniente comprar un servidor, que son computadoras que contienen nuestros archivos, y ademas, un dominio, por ejemplo www._nombreDelDominio_.com para que cada vez que las personas accedan a nuestro dominio los servidores proporcionen cada archivo HTML cuando las personas requieran acceder a este. 

## **11. Barras**
### **Barras de Navegacion**
Nos permite navegar sobre todo el dominio o nuestra pagina web. 

```html
<nav role = "navigation" aria-label = "menu principal"> <!--nav: Navegation. Nos indica una area de navigation. Indica una area que contendra varios vinculos
aria.label: Indica el nombre de la seccion de navegacion.
role: Roll. Nos indica el roll que tendra el area de navegacion-->
    <a hre= "/">Home</a>
    <a href = "/blog.html">blog</a>
    <a href = "/sections/Acerca de">acerca de</a>
</nav>
<!--El HTML anterior es igual a:-->
<nav role = "navigation" aria-label = "menu principal">
    <a href = "nombreDelDomino.com"></a>
    <a href = "nombreDelDomino.com/blog.html">blog</a>
    <a href = "nombreDelDomino.com/sections/Acerca de">acerca de</a>
</nav>
```

OutPut:
<nav role = "navigation" aria-label = "menu principal">
    <a hre= "/">Home</a>
    <a href = "/blog.html">blog</a>
    <a href = "/sections/Acerca de">acerca de</a>
</nav>
<!--El HTML anterior es igual a:-->
<nav role = "navigation" aria-label = "menu principal">
    <a href = "nombreDelDomino.com">Home</a>
    <a href = "nombreDelDomino.com/blog.html">blog</a>
    <a href = "nombreDelDomino.com/sections/Acerca de">acerca de</a>
</nav>

### **Pie de pagina**
Es comun, actualmente, que se utilice el pie de pagina para agregar vinculos de navegacion. 

```html
<footer> <!--footer: Pie de pagina. Indica una area de pie de pagina-->
    <a hre= "/">Home</a>
    <a href = "/blog.html">blog</a>
    <a href = "/sections/Acerca de">acerca de</a>
</footer>
```

OutPut:
<footer> <!--footer: Pie de pagina. Indica una area de pie de pagina-->
    <a hre= "/">Home</a>
    <a href = "/blog.html">blog</a>
    <a href = "/sections/Acerca de">acerca de</a>
</footer>

## **12. Imagenes**
Los elementos &lt;img&gt; se auto cierran (No requiere cerrarse la etiqueta con &lt;/img&gt;)

```html
<!--Con src correcto-->
<b>Con src correcto</b>
<br>
<img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "Orange Cat lying on its back">

<!--con src incorrecto-->
<b>Con src incorrecto</b>
<br>
<img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jp" alt = "Orange Cat lying on its back">
<!--alt: alternative (alternativo).Describe a la imagen. Sirve igual cuando por alguna razon no podemos ver la imagen mostrara esa descripcion.-->
<!--src: Source (Fuente). Indica la fuente de la imagen-->
<!--width: Ancho. Representa en pixeles el ancho de la imagen -->
<!--height: Altura. Representa la altura de la iagen en pixeles-->
<!--Si quisieramos mantener la escala de la foto es necesario solo utilizar height o width para que la imagen se escale de forma automatica.-->
<!---- En la actualidad ya no se ocupa wigth o lenght, se ocupa CSS como remplazo>
```
OutPut: 

<!--Con src correcto-->
<b>Con src correcto</b>
<br>
<img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "Orange Cat lying on its back">

<!--con src incorrecto-->
<b>Con src incorrecto</b>
<br>
<img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jp" alt = "Orange Cat lying on its back">

## **13. Resolucion**
Con el atributo _srcset_ se pude mostrar imagenes del tamaño que es mejor para la resolucion (tamaño) de nuestra pantalla. Cabe recalcar que aun si se usa el atributo _srcset_ tambien es necesario utlizar _src_. _src_ debera igualarse a la imagen con tamaño menor (default). 
```html
<img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jp" alt = "Orange Cat lying on its back" srcset = "rutaDeLaImagen1 2X,rutaDeLaImagen2 4x, rutaDeLaImagen3 6x">
```
## **14. Figura**
La etiqueta **&lt;figcaption&gt;** ayuda a la semantica para los buscadores. Por que incluir una descripcion de alguna imgane puede dar muchos detalles acerca de la imagen. Si se hace una busqueda de esa imagen en google sera mas facil ser encontrada gracias a esa descripcion. 

```html
<figure> <!--Se inicia con esta etiqueta figure (figura)-->
    <img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "Gatito acostado de espaldas">
    <figcaption>Este es un gato acostado de espaldas</figcaption>
</figure>
<!--figcaption: figure caption -> pie de figura-->
```

OutPut:
<figure>
    <img src = "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "Gatito acostado de espaldas">
    <figcaption>Este es un gato acostado de espaldas</figcaption>
</figure>

## **15. Foto (Picture)**
Esta etiqueta nos permite indicar diferentes fuentes de donde viene nuestra imagen. Estos atributos pueden ser muy utiles, pero hay que recordar que tambien podemos utilizar css para el mismo objetivo por que este es mas relacionado con los estilos. En HTML se utiliza para optimizar, ya que el navegar va a leer primero el HTML y basado en el HTML va a descargar las imagenes. 
```html
<picture>
    <source media = "(min - width:1200px)" srcset = "./1200.jpg">
    <!--La fuente de la primer imagen es ./1200.jpg. Media nos indica en que tamaño del navegador vamos a mostrar esta imagen, en este caso : (min - width:1200px)-->
    <source media = "(min - width:600px)" srcset = "./600.jpg">
    <img src= "./FotosPrueba/greninja-300.jpg" alt = "Greminja el Pokemon de Ash" width = "600">
    <!--Aca se coloca la imagen por defecto-->
</picture>
```
## **16. Audio**
### **Formato Simple**
Esta etiqueta de audio nos permetira utilizar audio en nuestra pagina Web.
```html
<audio controls src = "./AudioPruebas/pruebaAudio.mp3" loop autoplay></audio> <!--controls: Nos permite visualizar los controles. loop autoplay: Nos permite repetir la cancion.-->
```
<audio controls src = "./AudioPruebas/pruebaAudio.mp3" loop autoplay></audio>

### **Diversos Formatos**

```html
<audio controls loop autoplay >
    <source src = "./AudioPruebas/pruebaAudio.mp3" type = "audio/mpeg">
    <source src = "./AudioPruebas/pruebaAudio.mp3" type = "audio/ogg; code = opus">
    Lo sentimos. Tu navegador no soporta  este formato
</audio>
```
OutPut:

<audio controls loop autoplay >
    <source src = "./AudioPruebas/pruebaAudio" type = "audio/mpeg">
    <source src = "./AudioPruebas/pruebaAudio" type = "audio/ogg; code = opus">
    Lo sentimos. Tu navegador no soporta  este formato
</audio>

## **17. iFrame**
Esta etiqueta nos permite colocar contenido de otros sitios web en la pagina. Muchas paginas de internet ya contienen este bloque de HTML
```html
<!--Ejem: Google Maps-->
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d963836.4699350597!2d-99.60497885!3d19.32640465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2smx!4v1681166438772!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

<!--Ejem: Youtube-->
<iframe width="560" height="315" src="https://www.youtube.com/embed/8mPOxNnXBSU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
```
## **18. Contenedores**
 Para que sirve envolver el contenido. A lo mejor queremos agregar un estilos a un grupo de etiquetas y sepueden pueden colocar en un div o un span.
### **Contenedor en linea**
```html
<div>Soy un div</div>
<div>Soy un div</div>
<div>Soy un div</div>
```
Output:
<div>Soy un div</div>
<div>Soy un div</div>
<div>Soy un div ☰</div>

### **Contenedor en bloque**
```html
<span>Soy un span</span>
<span>Soy un span</span>
<span>Soy un span</span>
```
Output:
<span>Soy un span</span>
<span>Soy un span</span>
<span>Soy un span</span>

## **19. Atributos globales**
Hay atributos que son unicos para cierto tipo de etiquetas. Aun que, existen atributos globales. Estos atributos se pueden colocar en cada etiqueta. La identificacion

* id: (Identification - > Identificacion) Sirve para identificar una etiqueta. Se utiliza mucho para ientificar una etiqueta. Se le puede dar cualquier nombre o numero. La identificacion no es util por si sola, empieza hacer util cuando se trabaja igual con CSS por que asi podremos identificar que estilos colocar a cierta identificacion
**Ejem:**
```html
<p id = "Esto es un mensaje de bienvenida">Hola como estas</p>
```
* class: Clase. Tambien es una tipo de identificacion. A diferencia del id, el mimso valor del valor del atributo class puede ser el mismo para varias etiquetas.
* contenteditable: Contenido editable. Nos indica y nos permite editar el contenido entre la etiqueta. 
```html
<p contenteditable = "True">Este texto se puede editar</p>
```
Output:
<p contenteditable = "True">Este texto se puede editar</p>

* lang: Lenguage (lenguaje). Este atributo define que el texto o cual vinculo esta escrito o esta en ingles. Esto le permite navegador o a google buscar y ofrecer contenido mas rapido.
```html
<p leng = "es-MX">Este texto esta en español de mexico</p>
<p leng = "es">Este texto esta en español</p>
```
* dir: Direction (Direccion): Nos permite indicar en que direccion se escribe o se muestra el contenido. 

```html
<p dir = "rtl">Este texto podria ser un texto en arabe</p>
```

Output:
<p dir = "rtl">Este texto podria ser un texto en arabe</p>

## **20. Accesibilidad**
Sirve para que las personas con discapacidades puedan acceder a la pagina web utilizando herramientas para discapacitados. GRacias a lo siguiente, podremos usar eso. 
<div aria-label = "H20">
    <div aria-hidden = "true">
        <span>H</span>
        <span>2</span>
        <span>0</span>
    </div>
</div>

## **21. Lenguaje**
La etiqueta HTML nos permite envolver toda una paggina web. Siempre tendremos que definir en que lenguaje estara nuestra pagina web. Lo recomendable es agregar el lenguaje en la etiqueta que va a envolver a todo el archivo de HTML o cuando una palabra se defina en otro lenguaje al que estamos trabajando. 

```html
<!--Ingles de USA-->
<html lang = "en-US"></html>
<!--Ingles de GranBretaña-->
<html lang = "en-GB"></html>
<!--Español de mexico-->
<html lang = "es-MX"></html>
```

## **22. Tablas**
Como nota importante. No deberemos utilizar esto para crear estructura de las pagonas, solo para organizar datos tabulares. 
```html
<table>
    <tr>
        <th>Tecnologia Web</th>
        <th>Funcion</th>
        <th>Logo</th>
    </tr>
    <tr>
        <td>HTML</td>
        <td>Estructuracion</td>
        <td><img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/HTML5_Badge.svg/1024px-HTML5_Badge.svg.png"  width="30"></td>
    </tr>
    <tr>
        <td>CSS</td>
        <td>Estilo</td>
        <td><img src = "https://cdn.worldvectorlogo.com/logos/css-3.svg" width = "30"></td>
    </tr>
    <tr>
        <td>JavaScript</td>
        <td>Interactividad</td>
        <td><img src = "https://b.kisscc0.com/20180815/zlq/kisscc0-computer-icons-logo-brand-javascript-angle-js-5b741783856f77.0690615715343348515466.png" width = "30"></td>
    </tr>
</table>
<!--table: Representa una tabla-->
<!--tr: Table road. Filas de la tabla. Representa las filas-->
<!--th: table head. Encabezado de la tabla-->
<!--td: table data. Datos de la tabla. Representa un contenido de la tabla entre una fila y un encabezado-->
```

OutPut:

<table>
    <tr>
        <th>Tecnologia Web</th>
        <th>Funcion</th>
        <th>Logo</th>
    </tr>
    <tr>
        <td>HTML</td>
        <td>Estructuracion</td>
        <td><img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/HTML5_Badge.svg/1024px-HTML5_Badge.svg.png"  width="30"></td>
    </tr>
    <tr>
        <td>CSS</td>
        <td>Estilo</td>
        <td><img src = "https://cdn.worldvectorlogo.com/logos/css-3.svg" width = "30"></td>
    </tr>
    <tr>
        <td>JavaScript</td>
        <td>Interactividad</td>
        <td><img src = "https://b.kisscc0.com/20180815/zlq/kisscc0-computer-icons-logo-brand-javascript-angle-js-5b741783856f77.0690615715343348515466.png" width = "30"></td>
    </tr>
</table>
<!--table: Representa una tabla-->
<!--tr: Table road. Filas de la tabla. Representa las filas-->
<!--th: table head. Encabezado de la tabla-->
<!--td: table data. Datos de la tabla. Representa un contenido de la tabla entre una fila y un encabezado-->

## **21. Documento**
¿Como se estructura una pagina web de principio a fin?

1. Primero se crea un archivo Html.html
2. Normalmente a las paginas que navegaremos se llaman index.html (Pagina Principal del proyecto) En el, escribimos lo siguiente. 

```html
<!doctype html> <!--Le indica al navegador que tipo de archivo es este. La etiqueta no incluye etiqueta de cierre. -->
<html lang = "es" dir = "rtl" charset = "UTF-8"> <!--Nos representa la raiz del documento. Aqui agregaremos todo el HTML que vamos a escribir. En una buena practica escribir ciertos atributos globales en esta etiqueta. charset: Formato de codificacion de caracteres. Es similar a ASCII (128 caracteres), pero el UTF-8(130,000) tiene mayor caracteres  -->

<!--Informacion no visible que el navegador necesita-->
<head></head>

<!-- Todo el contenido visible para los usuarios-->
<body><body>

</html>

```

## **22. Head**
¿Que incluimos entre la etiqueta &lt;head&gt;&lt;/head&gt;? 
Lo primero que podemos incluir es el elemento &lt;meta&gt;

```html
<head>
    <meta charset = "UTF-8"/> <!--Es un tag que permite incluir informacion sobre la pagina dependiendo del atributo. si se incluye aqui no se requiere incluirlo en la etiqueta HTML-->
    <title>Mi Pagina Web</title> <!--Aqui se incluye el titulo de la pagina Web. Este titulo se muestra en la pestañita que se abre en cada navegador-->
    <link rel = "stylesheet" href = "css/style.css" /><!--rel: Indica que tipo de recurso es este. Ademas href indica el archivo css que utilizaremos -->
    <script src = "js/script.js" ></script><!--Esta va a cargar un archivo javascript. Script se utiliza para importar archivos de javascript-->
    <!--Cuando entramos a un navegador lo primero que se baja de un servidor es el arcgivo HTML y una vez que se baje la pagina se va a leer linea por linea. En este ejemplo, primero va a leer que el charset es de UFT-8, despues que el titulo de la pagina se llama Mi Pagina Web. Despues va a leer que necesita un recurso de CSS y despues que tambien necesita uno de java script. Cabe recalcar que si los archivos css y js estan muy pesados el navegador demorara mucho en descargarlos, por lo tanto, es comveniente que estos archivos sean pequeños o se agregue lo mas importante primero y despues lo demas -->
    <meta name = "viewport" content = "width=device-width, initial-scale = 1"/> <!--Esta linea lo que hace es ajustar la pagina a la pantalla-->

    <!--Las siguientes etiquetas contienen mas informacion de la pagina-->

    <meta name = "description" content = "Pagina de ejemplo sobre aprendizaje en HTML"/>
    <meta name = "application-name" content = "Aplicacion de HTML"/> <!--En caso de que la pagina se comporte como una aplicacion-->
    <meta name = "msapplication-TileImage" content = "/img/mstile-144x144.png"/><!--El anterior se utiliza cuando se quiere utilizar un icono de l apagina en windows-->
    <meta name = "theme-color" content = "#000000"/> <!--Indica al navegador que utilice un color especifico para el navegador-->

    <link rel = "manifest" href = "/manifest.json"/> <!--En ese archivo se incluira la version de la pagina, el nombre, el autor, una descripcion y demas informacion-->
    <link rel = "icon" href = "/favicon.ico"/> <!--Es el icono que se ve cuando navegamos sobre una pagina web -->
    <link rel = "preload" href = "/font.woff2" as = "font" type = ""> <!----incluye un archivo .woff2 el cual es un archivo de tipo grafia que incluye diferentes estilos de texto. Algunos estilos no estan incluidos en el navegador asi que deberan incluirse. >

    <meta >


</head>
```

## **23. Body**
> Cuando no escribimos la etiqueta **body** el navegador lo va crear de forma automatica. Es necesario siempre definir la etiqueta body. 

> Tenemos que agurarnos de incluir el atributo **charset** para trabajar con una variedad de carcateres. El atributo se puede incluir en la etiqueta html o en una etiqueta meta entre la etiqueta head. 
 
¿Que es lo que se suguiere incluir en la etiqueta **body**? Ejemplo:

```html
<!-- Estructura semantica -->
<body>
    <!-- Elementos de navegacion -->
    <nav>

    </nav>
    <!-- Encabezado -->
    <head>
        <h1></h1><!-- El titulo -->
        <!-- Informacion de la pagina -->
    </head>
    <!-- Contenido principal de la pagina -->
    <main>
        <!-- Aticulo: Unidad de informacion -->
        <article></article>
        <!-- Secciones de contenido -->
        <section></section>
        <!-- Contenido de lado -->
        <aside></aside>
    </main>
</body>
```
No es extrictamente necesario seguir la estructura semantica del ejemplo anterior. Es necesario saber como organizar adecuadamente las etiquetas de estructuracion

## **24. Inputs**
Existen diversos tipos de inputs. Todos se definen con la etiqueta **input** el tipo de input cambiara de acuerdo al valor que se le asigne al atributo **_type_**. El elemnto **Input** es una etiqueta de cierre automatico **Ejem:**

```html
<input type = "password" placeholder = "Password" />
<input type = "search" placeholder = "Search"/>
<input type = "text" placeholder = "Text"/>
<input type = "phone" placeholder = "55-11-09-34-67"/>
<input type = "data" />
<input type="date" value="2023-04-11" />
<input type = "color" />
<input type = "file" accept = "image/*" multiple/>
<!-- multiple: multiple. Permite seleccionar multiples archivos. -->
<!-- accept: acepto. Indica que tipo de archivos acepta. -->
<!-- Con JS seremos capaces de manipular los archivos que los usuarios subiran -->
<input type = "checkbox" value = "El checkbox esta marcado"  checked/>
<!-- Este tipo de input contiene un valor atras de el. El valor esta definido con el atributo value. Se puede establecer el atributo checked para establecer que por defecto esta verificada (checked). -->
```
<input type = "password" placeholder = "Password" required/>
<!--  required: requerido. Indica que el valor es requerido para acceder.-->
<input type = "search" placeholder = "Search"/>
<input type = "text" placeholder = "Text"/>
<input type = "phone" placeholder = "55-11-09-34-67"/>
<input type = "data" />
<input type="date" value="2023-04-11" />
<input type = "color" />
<input type = "file" accept = "image/*" multiple/>
<!-- multiple: multiple. Permite seleccionar multiples archivos. -->
<!-- accept: acepto. Indica que tipo de archivos acepta. -->
<!-- Con JS seremos capaces de manipular los archivos que los usuarios subiran -->
<input type = "checkbox" value = "El checkbox esta marcado"  checked/>
<!-- Este tipo de input contiene un valor atras de el. El valor esta definido con el atributo value. Se puede establecer el atributo checked para establecer que por defecto esta verificada (checked). -->
<input type = "radio">
<!-- radio: Biñeta -->

## **25. FieldSet (Conjunto de campos)**
Esta etiqueta permite agrupar diferentes tipos de inputs. El FielSet es bueno utilizarlo cuando se estan creando formularios

> La diferencia entre el radio y el checkbox es que cuando se selecciona el radio ya no se puede remover la seleccion y el checkbox si. 

```html
<!-- Ejemplo de FreeCodeCamp.com -->
<fieldset>
    <legend>CheckBoxesFreeCodeCamp</legend> <!--legend: legenda. -->
    <label><input type = "checkbox" value = "Uno"/>Uno</label>
    <label><input type = "checkbox" value = "Dos"/>Dos</label>
    <label><input type = "checkbox" value = "Tres"/>Tres</label>
</fieldset>
<br/>
<!-- Ejemplo de Academia X -->
<fieldset>
    <legend>CheckBoxesAcademiaX</legend>
    <input id = "uno" type = "checkbox" value = "Uno">
    <label for = "uno" >Uno</label>
    <input id = "dos" type = "checkbox" value = "Dos">
    <label for = "dos" >Dos</label>
    <input id = "tres" type = "checkbox" value = "Tres">
    <label for = "tres" >Tres</label>
</fieldset>
<!-- id: identification.  -->
<!-- for: para -->
```
Output:
<!-- Ejemplo de FreeCodeCamp.com -->
<fieldset>
    <legend>CheckBoxesFreeCodeCamp</legend> <!--legend: legenda. -->
    <labelin><input type = "checkbox" value = "Uno"/>Uno</label>
    <label><input type = "checkbox" value = "Dos"/>Dos</label>
    <label><input type = "checkbox" value = "Tres"/>Tres</label>
</fieldset>
<br/>
<!-- Ejemplo de Academia X -->
<fieldset>
    <legend>CheckBoxesAcademiaX</legend>
    <input id = "uno" type = "checkbox" value = "Uno">
    <label for = "uno" >Uno</label>
    <input id = "dos" type = "checkbox" value = "Dos">
    <label for = "dos" >Dos</label>
    <input id = "tres" type = "checkbox" value = "Tres">
    <label for = "tres" >Tres</label>
</fieldset>
<!-- id: identification.  -->
<!-- for: para -->

## **27. Form (Formulario)**
Ahora vamos a ver una de las formas en la que una aplicacion da acceso a los usuarios y esto es creando un aforma de _login_ (ingreso). 
> Para ingresar la informacion de los inputs al servidor se utiliza la etiqueta _&lt;form&gt;_ 

```html
<form action = "https://freecatphotoapp.com/submit-cat-photo" method = "POST">
    <!-- action: Acccion. Indica a donde debera mandarse los datos del formulario. -->
    <!--method. Indica el metodo que tendra el formulario hacia la referencia indicada en el atributo action. Existen 3 diferentes metodos. GET, POST and dialog-->
        <label>
        <h2>Sign In</h2>
        <h3>to continued to Gmail</h3>
            Name
            <input type = "text" name = "name" placeholder = "Julio Misael"/>
        </label>
        <br/>
        <a>Forget email?</a>
        <br />
        <label>
            E-mail
            <input type = "email" name = "email" placeholder = "myemail@gmail.com" required/>
        </label>
        <!--Ademas, para ingresar los datos del form utilizaremos un botton-->
        <br />
        <button>Sing In</button>
    </form>
```

<form action = "https://freecatphotoapp.com/submit-cat-photo" method = "POST">
    <!-- action: Acccion. Indica a donde debera mandarse los datos del formulario. -->
    <!--method. Indica el metodo que tendra el formulario hacia la referencia indicada en el atributo action. Existen 3 diferentes metodos. GET, POST and dialog-->
        <label>
        <h2>Sign In</h2>
        <h3>to continued to Gmail</h3>
            Name
            <input type = "text" name = "name" placeholder = "Julio Misael"/>
        </label>
        <br/>
        <a>Forget email?</a>
        <br />
        <label>
            E-mail
            <input type = "email" name = "email" placeholder = "myemail@gmail.com" required/>
        </label>
        <!--Ademas, para ingresar los datos del form utilizaremos un botton-->
        <br />
        <button>Sing In</button>
    </form>

## **28. Depuracion**
Es posible que aveces encontremos errores cuando se trabaja con HTML. Si uno comete un error al en el HTML el navegador intentara corregir ese error. 
