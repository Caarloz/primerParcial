import 'package:flutter/material.dart';

class fulParcial extends StatefulWidget {
  fulParcial({Key? key}) : super(key: key);

  @override
  State<fulParcial> createState() => _parcialState();
}

class _parcialState extends State<fulParcial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parcial I"), //Encabezado
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/fondo.jpg"), fit: BoxFit.cover)),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titulo(),
          SizedBox(
            height: 40,
          ),
          campoUsuario(),
          campoNombre(),
          campoApellido(),
          campoDireccion(),
          campoPass(),
          campoRePass(),
          campoTelefono(),
          campoCorreo(),
          filaBotones(),
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Text(
    "Informacion del usuario",
    style: TextStyle(color: Colors.white, fontSize: 30),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}

Widget campoNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Nombre",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.short_text_outlined),
      ),
    ),
  );
}

Widget campoApellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Apellido",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.short_text_outlined),
      ),
    ),
  );
}

Widget campoDireccion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      maxLines: 5,
      decoration: InputDecoration(
        hintText: "Direccion",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.location_on),
      ),
    ),
  );
}

Widget campoPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.password),
      ),
    ),
  );
}

Widget campoRePass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Confirmar contraseña",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.password),
      ),
    ),
  );
}

Widget campoTelefono() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Telefono",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.phone),
      ),
    ),
  );
}

Widget campoCorreo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      maxLines: 3,
      decoration: InputDecoration(
        hintText: "Correo",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.email),
      ),
    ),
  );
}

Widget filaBotones() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    botonAceptar(),
    SizedBox(
      width: 40,
    ),
    botonCancelar()
  ]);
}

Widget botonCancelar() {
  return FlatButton(
    onPressed: () {},
    child:
        Text("Cancelar", style: TextStyle(color: Colors.white, fontSize: 20)),
    color: Colors.redAccent,
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  );
}

Widget botonAceptar() {
  return FlatButton(
    onPressed: () {},
    color: Colors.blueAccent,
    child: Text(
      "Aceptar",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  );
}
