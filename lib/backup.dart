import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';

void main (){
  double estimatedBill = 0.0;

  void computeConsumption(int watts, int hours){
    estimatedBill = (watts / 1000) * hours * 30 * 15;
    print(estimatedBill);
  }
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TextFormField(
                style: 
                  const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 24),
                keyboardType: TextInputType.number,
                maxLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 20),
                prefixIcon: const Icon(
                  Icons.electric_bolt,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),fontSize: 24)
                ,
                hintText: "Watts",
                fillColor: Colors.white30,

                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                style: 
                  const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 24),
                keyboardType: TextInputType.number,
                maxLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 20),
                prefixIcon: const Icon(
                  Icons.hourglass_bottom,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),fontSize: 24)
                ,
                hintText: "Consumed Hours",
                fillColor: Colors.white30,

                ),
              ),
              ElevatedButton(
                onPressed: () {
                  computeConsumption(300, 8);

                }, 
                child: const Text("Compute", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
      ),
    )));
}
