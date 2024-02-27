<html>
  <head><title>consulta</title></head>
 <body>
  <table border="20">
   <tr>
    <td>Titulo</td>
    <td>Autores</td>
   </tr>
   {
   for $b in doc("books.xml")//book
let $c:= $b/author
return
   <tr>
    <td>{$b/titulo}</td>
    <td>{$b/autores}</td>
   </tr>
   }
  </table>
 </body>
</html>