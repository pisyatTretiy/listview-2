import 'package:flutter/material.dart';

const List<String> itemslist = <String>["Первый", "Второй", "Третий", "Четыртый", "Пятый", "Шестой", "Седьмой"];
const List<int> numitems = <int>[1, 2, 3, 4, 5, 6, 7];

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Khrulenko Vladislav', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: itemslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(16),
            elevation: 5, // добавим немного тени для эффекта поднятости
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Center(
                child: Text(
                  'Карточка ${numitems[index]}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
