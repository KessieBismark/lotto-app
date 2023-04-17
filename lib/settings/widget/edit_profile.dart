import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../services/widgets/button.dart';
import '../../constants.dart';
import '../component/controller.dart';

final con = Get.find<SettingController>();

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 240, 243),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 25, right: 16),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () async {
                          final ImagePicker picker = ImagePicker();

                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery);
                          con.imgBytes = await image!.readAsBytes();
                          con.img.value = image.name;
                        },
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 10),
                              )
                            ],
                            image: const DecorationImage(
                                image: AssetImage('assets/images/profile1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.purple[800],
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              )),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                buildTextField('Full Name', "James Boateng", false),
                buildTextField('Email', "jamesb1@gmail.com", false),
                buildTextField('Password', "*********", true),
                buildTextField('Location', "Accra, Ghana", false),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MButton(
                      onTap: () => null,
                      type: ButtonType.cancel,
                    ),
                    MButton(
                      onTap: () => null,
                      type: ButtonType.save,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Obx(() => TextField(
            obscureText: con.showPassword.value,
            decoration: InputDecoration(
                suffixIcon: isPasswordTextField
                    ? IconButton(
                        onPressed: () {
                          if (con.showPassword.value) {
                            con.showPassword.value = false;
                          } else {
                            con.showPassword.value = true;
                          }
                        },
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                      )
                    : null,
                contentPadding: const EdgeInsets.only(bottom: 3),
                labelText: labelText,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: placeholder,
                hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45)),
          )),
    );
  }
}
