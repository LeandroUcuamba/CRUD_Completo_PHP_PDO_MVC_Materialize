<!DOCTYPE html>
<hmtl>
<head>
    <title></title>
      <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Resources/css/materialize.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <div class="container">
     <form method="post" action="?c=guardar">
           
        <div class="row">
            <div class="col m12">
               <div class="card black z-depth-3 white-text center-align">
                  <h2>Lista de sapatos</h2>
               </div>
            </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Preço : </div>
            <div class="col m3"> 
               <input  type="hidden" name="txtID" value="<?php echo $alm->id_zapato; ?>">
               <input  type="text" name="txtPrecio" value="<?php echo $alm->precio; ?>">
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Cor : </div>
            <div class="col m3"> 
               <input  type="text" name="txtColor" value="<?php echo $alm->color; ?>">
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Estilo : </div>
            <div class="col m3"> 
               <select name="cmbEstilo">
                 <?php foreach ($this->MODEL->cargarEstilo() as $k) : ?>
                    <option value="<?php echo $k->id_estilo ?>"> <?php echo $k->estilo ?>
                    </option>
                 <?php endforeach; ?>
               </select>
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Tamanho : </div>
            <div class="col m3"> 
               <select name="cmbTalla">
                 <?php foreach ($this->MODEL->cargarTalla() as $k) : ?>
                    <option value="<?php echo $k->id_talla ?>"> <?php echo $k->talla ?>
                    </option>
                 <?php endforeach; ?>
               </select>
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Genero : </div>
            <div class="col m3"> 
               <select name="cmbGenero">
                 <?php foreach ($this->MODEL->cargarGenero() as $k) : ?>
                    <option value="<?php echo $k->id_genero ?>"> <?php echo $k->genero ?>
                    </option>
                 <?php endforeach; ?>
               </select>
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m3">Quantidade : </div>
            <div class="col m3"> 
               <input  type="text" name="txtCantidad" value="<?php echo $alm->cantidad; ?>">
            </div>
            <div class="col m3"> </div>
        </div>
        <div class="row">
            <div class="col m3"> </div>
            <div class="col m6"> 
                <input type="submit" name="ntym" value="Guardar" class=" btn red z-depth-3">
            </div>
            <div class="col m3"> </div>
        </div>

     </form>
    </div>
    <script type="text/javascript" src="Resources/js/jquery.js"></script>
    <script type="text/javascript" src="Resources/js/materialize.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('select').formSelect();
        });
    </script>

</body>
</html>