import 'package:flutter/material.dart';

class NewPet extends StatefulWidget {
  const NewPet({super.key});

  @override
  State<NewPet> createState() => _NewPetState();
}

class _NewPetState extends State<NewPet> {
  final _formKey = GlobalKey<FormState>();  // Form Key for validation
  final _petController = TextEditingController();
  final _tierController = TextEditingController();
  final _passiveController = TextEditingController();

  @override
  void dispose() {
    _petController.dispose();
    _tierController.dispose();
    _passiveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Add New Pet",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,  // Assign the _formKey to the Form widget
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Pet Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),

              // Pet Name
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _petController,
                  decoration: InputDecoration(
                    labelText: 'Pet Name',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter a Name';
                    }
                    return null;
                  },
                ),
              ),

              // Tier
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _tierController,
                  decoration: InputDecoration(
                    labelText: 'Tier',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter a Tier';
                    }
                    return null;
                  },
                ),
              ),

              // Passive
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _passiveController,
                  decoration: InputDecoration(
                    labelText: 'Passive',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter a Passive';
                    }
                    return null;
                  },
                ),
              ),

              // Submit Button
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Form is validated!');
                          // You can now use the input values:
                          print("Pet Name: ${_petController.text}");
                          print("Tier: ${_tierController.text}");
                          print("Passive: ${_passiveController.text}");
                        }
                      },
                      child: Text('Add'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
