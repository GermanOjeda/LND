for $baile in doc("bailes.xml")//bailes/baile
where $baile/sala[text()=1 and ../precio/@moneda="euro" and ../number(precio)<35]
return $baile/nombre/text()