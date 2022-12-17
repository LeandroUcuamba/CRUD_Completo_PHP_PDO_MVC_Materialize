<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Resources/css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col m12">
               <div class="card black z-depth-3 white-text center-align">
                  <h2>Lista de sapatos</h2>
               </div>
            </div>
        </div>
        <div class="row">
            <div class="col m12">
                <table class ="table-responsive z-depth-3">
                     <tr class="black">
                        <th class="white-text center-align">Id</th>
                        <th class="white-text center-align">Preço</th>
                        <th class="white-text center-align">Cor</th>
                        <th class="white-text center-align">Estilo</th>
                        <th class="white-text center-align">Tamanho</th>
                        <th class="white-text center-align">Genero</th>
                        <th class="white-text center-align">Quantidade</th> 
                        <th class="white-text center-align">Eliminar</th>
                        <th class="white-text center-align">Atualizar</th>
                     </tr>
                     <?php foreach ($this->MODEL->listar() as $k) : ?>
                        <tr>
                            <td><?php echo $k->id_zapato; ?></td>
                            <td><?php echo $k->precio; ?></td>
                            <td><?php echo $k->color; ?></td>
                            <td><?php echo $k->estilo; ?></td>
                            <td><?php echo $k->talla; ?></td>
                            <td><?php echo $k->genero; ?></td>
                            <td><?php echo $k->cantidad; ?></td>
                            <td>
                                <a href="?c=eliminar&id=<?php echo $k->id_zapato; ?>" class="btn red z-depth-3" >Eliminar</a>
                            </td>     
                            <td>
                                <a href="?c=nuevo&id=<?php echo $k->id_zapato; ?>" class="btn green z-depth-3" >Actualizar</a>
                            </td>  
                        </tr>
                     <?php endforeach; ?>
                </table>
                <a href="?c=nuevo" class="btn btn-block black z-depth-3">Novo</a>
            </div>
        <div>
    </div>
</body>
</html>