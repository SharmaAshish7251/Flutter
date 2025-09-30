import 'package:flutter/material.dart';
import 'package:medical/menu/drawer_menu.dart';
import 'thank_you.dart';

class CreateAnAccount extends StatefulWidget {
  const CreateAnAccount({super.key});

  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  final TextEditingController dobController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000), // default date
      firstDate: DateTime(1900), // earliest date
      lastDate: DateTime.now(), // latest date
    );
    if (picked != null) {
      setState(() {
        dobController.text =
            "${picked.day}-${picked.month}-${picked.year}"; // format dd-mm-yyyy
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your Account'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      drawer: DrawerMenu(),

      body: ListView(
        children: [
          // 1st Container
          Container(
            height: MediaQuery.sizeOf(context).height * 0.39,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage('https://tinyurl.com/yhk2uu8x'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
          ),

          // 2nd Container
          Container(
            // height: MediaQuery.sizeOf(context).height * 0.6,
            margin: const EdgeInsets.all(12),
            width: MediaQuery.sizeOf(context).width * 1,
            child: Column(
              children: [
                // Heading
                Column(
                  children: const [
                    Text(
                      'Create An Account',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome, please enter your details',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Input Fields
                Container(
                  margin: const EdgeInsets.only(top: 20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Full Name
                      TextField(
                        decoration: InputDecoration(
                          label: const Text('Full Name'),
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),

                      // Date of Birth with Calendar
                      TextField(
                        controller: dobController,
                        readOnly: true, // prevent keyboard
                        onTap: () => _selectDate(context),
                        decoration: InputDecoration(
                          label: const Text('Date of Birth'),
                          prefixIcon: const Icon(Icons.calendar_month),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Mobile No
                      TextField(
                        decoration: InputDecoration(
                          label: const Text('Mobile No.'),
                          prefixIcon: const Icon(Icons.phone_iphone_sharp),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Email
                      TextField(
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      SizedBox(height: 6),
                      // Confirm Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: const Text('Confirm Password'),
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 6),
                          // Signup Button
                          SizedBox(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ThankYou(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.key, color: Colors.white),
                              label: const Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 9),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
