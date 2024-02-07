import 'package:flutter/material.dart';
import 'package:practice/todo.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Add New Todo',
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
                validator: (String? value) {
                  final v = value ?? '';
                  if (v
                      .trim()
                      .isEmpty) {
                    return 'Enter your title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _descriptionTEController,
                maxLines: 5,
                maxLength: 100,
                decoration: const InputDecoration(
                  hintText: 'Description',
                ),
                validator: (String? value) {
                  if (value
                      ?.trim()
                      .isEmpty ?? true) {
                    return 'Enter your Description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              SizedBox(
                // width: double.infinity,
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Todo todo = Todo(
                            _titleTEController.text.trim(),
                            _descriptionTEController.text.trim(),
                            DateTime.now());
                        Navigator.pop(context, todo);
                      }
                    }, child: const Text('Add')),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
