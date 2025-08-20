import 'package:flutter/material.dart';

class PaymentOption extends StatefulWidget {
  final Widget icon;

  final String name;
  final String groupValue; // valor seleccionado del grupo
  final ValueChanged<String?> onChanged;

  const PaymentOption({
    super.key,
    required this.icon,
    required this.name,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    // inicializamos el estado
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 20,
        top: 15,
        bottom: 15,
      ), // separación interna
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          228,
          226,
          226,
        ), // color dentro de BoxDecoration
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          widget.icon,
          SizedBox(width: 15),
          Text(
            widget.name,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Spacer(),
          Radio<String>(
            value: widget.name, // valor de esta opción
            groupValue: widget.groupValue, // el valor seleccionado en el grupo
            onChanged: widget.onChanged,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const Color(0xFF021B79);
              }
              return Colors.grey; // gris para los no seleccionados
            }),
          ),
        ],
      ),
    );
  }
}
