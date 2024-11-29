import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  @override
  State<TipPage> createState() => _TipPageState();
}

class _TipPageState extends State<TipPage> {
  TextEditingController billController = TextEditingController();
  double selectedTip = 0.1; // Default tip percentage
  double totalPerPerson = 0.0;
  int splitCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3F4),
      appBar: AppBar(
        title: const Text('Tip Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/hat.png", width: 90, height: 90),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mr TIP",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Calculator",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Total p/person Container
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Total p/person",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "\$${totalPerPerson.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 10),
                  const Text("Enter Bill to Calculate Tip"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Input Field for Bill
            Container(
              width: 300,
              child: TextField(
                controller: billController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixText: "\$ ",
                  labelText: "Enter Your Bill",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Tip Selection Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Choose your tip: "),
                for (var tip in [0.1, 0.15, 0.2])
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTip = tip;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: selectedTip == tip ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "${(tip * 100).toInt()}%",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20),

            // Split Options Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Split among: "),
                IconButton(
                  onPressed: () {
                    if (splitCount > 1) {
                      setState(() {
                        splitCount--;
                      });
                    }
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  "$splitCount",
                  style: const TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      splitCount++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Calculate Button
            ElevatedButton(
              onPressed: () {
                double bill = double.tryParse(billController.text) ?? 0.0;
                double tipAmount = bill * selectedTip;
                double total = bill + tipAmount;
                setState(() {
                  totalPerPerson = total / splitCount;
                });
              },
              child: const Text("Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}
