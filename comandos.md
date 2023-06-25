# **COMANDOS**

> ## **< p >_texto_< /p >**
La etique p simboliza un parrafo. No permite excribir texto simple.

**Ejem:**
```html
<p>Esto es un texto</p> <!--p: paragraph ()-->
```
**OutPut:**
<p>Esto es un texto</p>

> ## **< h1 >_texto_< /h1 >**
La etiqueta h nos permite escribir textos de distintos tamaños. El tamaño depende del numero que se le asigne.

**Ejem:**
```html
<h1>Esto es un texto en negritas</h1>
<h4>Esto es un texto en negritas</h4>
```
**Output:**

<h1>Esto es un texto en negritas grande</h1>
<h3>Esto es un texto en negritas mas pequeño</h3>

> ## **< a >_texto_< /a >**
Simboliza un vinculo. Nos permite asinar un vinculo a un texto. Esto solo nos da la idea de que es un vinculo. 

**Ejem:**
```html
<a>Esto es un texto con un vinculo en el</a>
```

**OutPut:**

<a>Esto es un texto con un vinculo en el</a>

You can link to another page with the anchor (a) element. For example, <a href='https://freecodecamp.org'></a> would link to freecodecamp.org.

> ## **< b >_texto_*< /b >**
Simboliza un texto en negritas. Nos permite escribir en negritas.

**Ejem:**
```html
<b>Texto en negritas</b>
```
**OutPut:**

<b>Este es un texto en negritas</b>

> ## **Atributo title = "_titulo_"**
Nos permite agregar un titulo al texto. 
### **Codigo:**
```html
<p title = "Esto es un texto que dice hola mundo">Hola mundo</p>
```
### **OutPut:**
<p title = "Esto es un texto que dice hola mundo">Hola mundo</p>
Si uno acerca el mouse al texto anterior se puede ver el titulo que se asigno a el. 

> ## **<! -- -->**
Representa un comentario.
### **Codigo:**
```html
<!--Esto es un comentario-->
``` 

> ## **&**
Permite utilizar simbolos en texto. Nos ayuda a definir las entidades de caracteres.

---

### **Codigo:**
```html
&copy;
&coprod;
&cap;
&aacute;
&lt;
&gt;
```
### **OutPut:**
&copy;
&coprod;
&cap;
&aacute;
&lt;
&gt;

---

> ## **< i >_Texto_< / i >**
Representa un texto en cursiva

---

### **Codigo:**
```html
<i>Esto es un texto en cursiva</i>
```
### **OutPut:**
<i>Esto es un texto en cursiva</i>

---
> ## **< img >**
You can add images to your website by using the img element. img elements have an opening tag without a closing tag. A tag for an element without a closing tag is known as a self-closing tag.

Add an img element below the p element. At this point, no image will show up in the browser.

> ## **The src attribute**
The src attribute in an img element specifies the image's URL (where the image is located).

Se recomienda que el URL se encierre en commillas dobles

Here is an example of an img element with a src attribute pointing to the freeCodeCamp logo:


```javascript
<img src="https://cdn.freecodecamp.org/platform/universal/fcc_secondary.svg">
```

Output:

<img src="https://cdn.freecodecamp.org/platform/universal/fcc_secondary.svg">

> ## **Atributo alt**

All img elements should have an alt attribute. The alt attribute's text is used for screen readers to improve accessibility and is displayed if the image fails to load. For example, < img src="cat.jpg" alt="A cat"> has an alt attribute with the text A cat.

```html
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "A cute orange cat lying on its back">
```
Output: 

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt = "A cute orange cat lying on its back">

> ## **Atribute href**

You can link to another page with the anchor (a) element. 

For example, < a href='https://freecodecamp.org'>< /a> would link to freecodecamp.org.

```html
<a href='https://freecodecamp.org'>freecodecamp</a>
<p>See more <a href = "https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
```
output:
<a href='https://freecodecamp.org'>freecodecamp</a>
<p>See more <a href = "https://freecatphotoapp.com">cat photos</a> in our gallery.</p>

> ## **Atributo target**

Target="_blank", coloquialmente llamado target_blank, es un atributo HTML que se puede colocar en un enlace para indicar que la página de destino hacia la que apunta se abra en otra ventana del navegador.

```html
<p>See more <a target = '_blank' href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
```

OutPut: 
<p>See more <a target = '_blank' href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>

> ## **Link anchor to an image**

Turn the image into a link by surrounding it with necessary element tags. Use https://freecatphotoapp.com as the anchor's href attribute value.
```html
<a href = "https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
```
Ouput:

<a href = "https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

> ## **Atributo section**

Before adding any new content, you should make use of a section element to separate the cat photos content from the future content.

Take your h2, comment, p, and anchor (a) elements and nest them in a section element.

    <main>
      <h1>CatPhotoApp</h1>
        <section>
      <h2>Cat Photos</h2>
      <!-- TODO: Add link to cat photos -->
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
      <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
        </section>

    </main>

> ## **Elemento ul y li**
El elemeto ul sealiza un desplzamiento del texto y el elemento li nos crea una biñeta para la creacion de listas.

> ## **Elemento figure**
El elemento figure representa contenido autónomo y le permitirá asociar una imagen con un título.

Anida la imagen que acabas de agregar dentro de un elemento de figura:

```html
<figure>
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
    Cats love lasagna.
</figure>
```
OutPut:

<figure>
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
    Cats love lasagna.
</figure>

> ## **Elemento figcaption**
A figure caption (figcaption) element is used to add a caption to describe the image contained within the figure element. For example, < figcaption>A cute cat< /figcaption> adds the caption A cute cat.

<figure>
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
    <figcaption>Cats love lasagna.</figcaption>
</figure>   

> ## **Elemento em**

Emphasize the word love in the figcaption element by wrapping it in an emphasis em element.

```html
<figcaption>Cats <em>love</em> lasagna.</figcaption>
```

Output_

<figcaption>Cats <em>love</em> lasagna.</figcaption>


> ## **Elemento ol**

The code for an ordered list (ol) is similar to an unordered list, but list items in an ordered list are numbered when displayed.

After the second section element's last h3 element, add an ordered list with these three list items:

flea treatment thunder other cats

```html
<h3>Top 3 things cats hate:</h3>
<ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
</ol>
```

Output: 
<h3>Top 3 things cats hate:</h3>
<ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
</ol>

> ## **Elemento Form**

Now you will add a web form to collect information from users.

After the Cat Form heading, add a form element.

```html
<h2>Cat Form</h2>
<form></form>
```

<h2>Cat Form</h2>
<form></form>

> ## **Atributo action**

The action attribute indicates where form data should be sent. For example, 

    <form action="/submit-url">
    </form> 

tells the browser that the form data should be sent to the path /submit-url.

Add an action attribute with the value https://freecatphotoapp.com/submit-cat-photo to the form element.

```html
<form action = "https://freecatphotoapp.com/submit-cat-photo">

</form>
```

> ## **Elemento input**

The input element allows you several ways to collect data from a web form. Like img elements, input elements are self-closing and do not need closing tags.

Nest an input element in the form element.

```html
<form action="https://freecatphotoapp.com/submit-cat-photo">
    <input>
</form>
```
<form action="https://freecatphotoapp.com/submit-cat-photo">
    <input>
</form>

> ## **Atributo type**

There are many kinds of inputs you can create using the type attribute. You can easily create a password field, reset button, or a control to let users select a file from their computer.

Create a text field to get text input from a user by adding the type attribute with the value text to the input element.

```html
<input type = "text">
```

Ouput

<input type = "text">

> ## **Atributo name**

In order for a form's data to be accessed by the location specified in the action attribute, you must give the text field a name attribute and assign it a value to represent the data being submitted. For example, you could use the following syntax for an email address text field: 

    <input type="text" name="email">.

Add the name attribute with the value catphotourl to your text field.

```html
<input type="text" name = "catphotourl">
```

ouput

<input type="text" name = "catphotourl">

> ## **Atributo placeholder**

Placeholder (marcadores de lugar) text is used to give people a hint about what kind of information to enter into an input. For example, 
    
    <input type="text" placeholder="Email address">.

Add the placeholder text cat photo URL to your input element.

```html
<input type="text" name="catphotourl" placeholder = "cat photo URL"/>
```

ouput

<input type="text" name="catphotourl" placeholder = "cat photo URL"></input>

> ## **Atributo required**

To prevent a user from submitting your form when required information is missing, you need to add the required attribute to an input element. There's no need to set a value to the required attribute. Instead, just add the word required to the input element, making sure there is space between it and other attributes

<input type="text" name="catphotourl" placeholder="cat photo URL" required>

> ## **Elemento button**

Use the button element to create a clickable button. For example, 

    <button>Click Here</button> 

creates a button with the text Click Here.

Add a button element with the text Submit below the input element. The default behavior of clicking a form button without any attributes submits the form to the location specified in the form's action attribute.

```html
<form action="https://freecatphotoapp.com/submit-cat-photo">
<input type="text" name="catphotourl" placeholder="cat photo URL" required>
<button>Submit</button>
</form>
```

Output
<form action="https://freecatphotoapp.com/submit-cat-photo">
    |<input type="text" name="catphotourl" placeholder="cat photo URL" required>
    <button>Submit</button>
</form>

> ## **Atributo type**

Even though you added your button below the text input, they appear next to each other on the page. That's because both input and button elements are inline elements, which don't appear on new lines.

The button you added will submit the form by default. However, relying on default behavior may cause confusion. Add the type attribute with the value submit to the button to make it clear that it is a submit button.

<button type = "submit">Submit</button>

> ## **Atributo type = "radio"**

You can use radio buttons for questions where you want only one answer out of multiple options.

Here is an example of a radio button with the option of cat: 

    <input type="radio">

cat. Remember that input elements are self-closing.

Before the text input, add a radio button with the option set as:

Indoor

```html
<input type = "radio">Indoor
<input type="text" name="catphotourl" placeholder="cat photo URL" required>
```
<input type = "radio">Indoor
<input type="text" name="catphotourl" placeholder="cat photo URL" required>

> ## **Elemento label**

label elements are used to help associate the text for an input element with the input element itself (especially for assistive technologies like screen readers). For example, 

    <label><input type="radio"> cat</label> 

makes it so clicking the word cat also selects the corresponding radio button.

Nest your radio button inside a label element.

<label><input type="radio"> Indoor</label>

> ## **Atributo id **

The id attribute is used to identify specific HTML elements. Each id attribute's value must be unique from all other id values for the entire page.

Add an id attribute with the value indoor to the radio button. When elements have multiple attributes, the order of the attributes doesn't matter.

<label><input type="radio" id = "indoor"> Indoor</label>

