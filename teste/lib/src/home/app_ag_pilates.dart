import 'package:flutter/material.dart';
import 'package:teste/src/config/custom_colors.dart';

class AppAgPilates extends StatelessWidget {
  const AppAgPilates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "SHCore",
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                ),
              ),
              TextSpan(
                text: "Studio",
                style: TextStyle(
                  color: CustomColors.customContrastColors,
                ),
              ),
            ],
          ),
        ),
      ),
      body: AppointmentTable(),
    );
  }
}

class AppointmentTable extends StatelessWidget {
  const AppointmentTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTimeSlot(context, 'Manhã', [
            '7:00',
            '8:00',
            '9:00',
            '10:00',
            '11:00',
          ]),
          _buildTimeSlot(context, 'Tarde', [
            '16:00',
            '17:00',
            '18:00',
            '19:00',
            '20:00',
          ]),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(
      BuildContext context, String period, List<String> slots) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            period,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: slots.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _showConfirmationDialog(context, slots[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(30), // Alterado para circular
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Adiciona efeito 3D
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    slots[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _showConfirmationDialog(BuildContext context, String selectedTime) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmação de Agendamento'),
          content: Text('Deseja confirmar o agendamento para o horário $selectedTime?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Implemente a lógica para confirmar o agendamento aqui
                Navigator.of(context).pop();
              },
              child: const Text('Confirmar'),
            ),
            TextButton(
              onPressed: () {
                // Implemente a lógica para mostrar a mensagem de horário indisponível aqui
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}
