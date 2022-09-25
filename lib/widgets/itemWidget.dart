import 'package:codepur_flutter/catalog.dart';
import 'package:flutter/material.dart';

class IteamWidget extends StatelessWidget {
  const IteamWidget({Key? key, required this.item1})
      : assert(item1 != null),
        super(key: key);
  final item item1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.purple,
      child: ListTile(
        onTap: () => print('${item1.name} pressed'),
        leading: Image.network(item1.image),
        title: Text(item1.name),
        subtitle: Text(item1.desc),
        trailing: Text(
          "\$${item1.price.toString()}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
