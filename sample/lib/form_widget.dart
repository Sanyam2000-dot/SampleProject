import 'package:flutter/material.dart';
import 'package:sample/recruiter.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> formData = {
    'name': null,
    'phone': null,
    'icompany': null,
    'cgpa': null,
    'activities': null,
    'bio': null,
  };
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              onSaved: (value) {
                formData['name'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your name',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                formData['phone'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your phone number',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter number';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                formData['icompany'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your previous internship company',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the name of the company';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                formData['cgpa'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your CGPA',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your CGPA';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                formData['activities'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your extra curricular activities',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter extra curricular activities';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                formData['bio'] = value;
              },
              scrollPadding: const EdgeInsets.all(4),
              decoration: const InputDecoration(
                hintText: 'Enter your extra short bio',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter extra short bio';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recruiter()),
                  );
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save(); //onSaved is called!
                    print(formData);
                    print("Thank You");

                    // Process data.
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
