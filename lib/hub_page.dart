import 'package:flutter/material.dart';
import 'package:gai3008/deposit_page.dart';

final List<Map<String, String>> netMap = [
  {
    'name': 'Cash Balance',
    'sub': '8 accounts',
    'amount': "\$23,000,00",
    'CPO': "99%",
  },
  {
    'name': 'Savings',
    'sub': 'Savings',
    'amount': "\$128,375",
    'CPO': "<10%",
  },
  {
    'name': 'Crypto',
    'sub': '2 currencies',
    'amount': "\$28,182",
    'CPO': "50%",
  },
];

class hubExchange extends StatelessWidget {
  const hubExchange({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.grey,
                    child: Flexible(
                      child: Container(
                        // decoration: BoxDecoration(color: Colors.black),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              title: Row(
                                children: [
                                  Text('All accounts •'),
                                  Text('Total balance')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('\$2,456,557',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25.0)),
                                      Text('.00'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('USD'),
                                      Column(
                                        children: <Widget>[
                                          TextButton(
                                            child: const Text('^'),
                                            onPressed: () {/* ... */},
                                          ),
                                          TextButton(
                                            child: const Text('v'),
                                            onPressed: () {/* ... */},
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Text('Total balance: \$10,000'),
                      Column(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => depositFunds()),
                              );
                            },
                            tooltip: 'Deposit',
                            child: Icon(Icons.add),
                          ),
                          Text(
                            'Deposit',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 10.0,
                      ),
                      Column(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {
                              // Withdraw funds
                            },
                            tooltip: 'Withdraw',
                            child: Icon(Icons.remove),
                          ),
                          Text(
                            'Withdraw',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 10.0,
                      ),
                      Column(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {
                              // Transfer funds
                            },
                            tooltip: 'Transfer',
                            child: Icon(Icons.swap_horiz),
                          ),
                          Text(
                            'Transfer',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Net Worth",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: netMap.length,
              itemBuilder: (context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://example.com/image.jpg'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(netMap[index]['name']!),
                      Text(netMap[index]['amount']!),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(netMap[index]['sub']!),
                      Text(netMap[index]['CPO']!)
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
