import 'package:flutter/material.dart';
import 'package:motordoc/src/ui/widgets/menus/widget_sparepart.dart';

class WidgetSpareparts extends StatelessWidget {
  List<WidgetSparepartItem> _buttons;

  WidgetSpareparts() {
      _buttons = [
        WidgetSparepartItem(
          name: "Aki", 
          imageUri: Uri.parse("https://cdn.monotaro.id/media/catalog/product/cache/6/image/b5fa40980320eb406ba395dece54e4a8/P/1/P102180723-1.jpg"),
          lokasi: "Bandung", 
          harga: "Rp650000"
        ),
        WidgetSparepartItem(
          name: "Drive Chain", 
          imageUri: Uri.parse("https://lh3.googleusercontent.com/proxy/ypz__xTl45H-TndFgYnDdTx_TDUePP4pz95Ky3dL1czsXfduQ7s5P0awTROdjJllxnqj-_cVwWLEmlf5D80gmZvBLF4EmLL3aQNyjRx89wRzEKnzyz2oS-LR8ItgJE0yTWwn7w"),
          lokasi: "Bandung", 
          harga: "Rp650000"
        )
      ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _buttons.length,
        itemBuilder: (BuildContext context, int index) {
          return WidgetSparepartItem(
            name: _buttons[index].name,
            imageUri: _buttons[index].imageUri,
            lokasi: _buttons[index].lokasi,
            harga: _buttons[index].harga,
            );
        });
  }
}
