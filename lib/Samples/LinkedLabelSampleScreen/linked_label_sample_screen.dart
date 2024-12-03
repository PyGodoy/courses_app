import 'package:courses_app/DesignSystem/components/LinkedLabel/linked_label.dart';
import 'package:courses_app/DesignSystem/components/LinkedLabel/linked_label_view_model.dart';
import 'package:flutter/material.dart';

class LinkedLabelPage extends StatelessWidget {
  const LinkedLabelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linked Label Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container com margem esquerda de 20
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // RadioButton
                  Radio<int>(
                    value: 1,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                  // Espaçamento de 20 entre os componentes
                  const SizedBox(width: 20),
                  // LinkedLabel
                  LinkedLabel.instantiate(
                    viewModel: LinkedLabelViewModel(
                      fullText: "texto com link",
                      linkedText: "com link",
                      onLinkTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}