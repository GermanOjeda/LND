<html>
  <head><title>consulta</title></head>
 <body>
  <table border="20">
   <tr>
    <td>Baile</td>
    <td>Precio</td>
   </tr>
   {
    for $baile in doc("bailes.xml")//bailes
   /baile
    where $baile/number(precio) > 20
    return
      <tr>
        <td>{$baile/nombre}</td>
        <td>{$baile/string(precio)}</td>      
      </tr>
   }
  </table>
 </body>
</html>