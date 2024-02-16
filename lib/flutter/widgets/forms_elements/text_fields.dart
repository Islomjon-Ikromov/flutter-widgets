import 'package:flutter/material.dart';

// ============================== CustomTextField1 ==============================

// child: CustomTextField1()

class CustomTextField1 extends StatelessWidget {
  const CustomTextField1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.blue,
        textAlign: TextAlign.center,
        maxLength: 30,
        decoration: InputDecoration(
          labelText: 'Search',
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          prefixIcon: const Icon(
            Icons.person_2_outlined,
            color: Colors.blue,
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          counterText: "",
        ),
      ),
    );
  }
}

// ============================== CustomTextField2 ==============================

// child: CustomTextField2()

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: Colors.blue,
        maxLength: 18,
        decoration: InputDecoration(
          errorText: "Error",
          counterText: "",
          errorStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.red,
            fontStyle: FontStyle.normal,
          ),
          contentPadding: const EdgeInsets.only(left: 10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.black12,
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.black12,
              width: 1.2,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.black12,
              width: 1.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1.2,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.2,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
          ),
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Colors.black26,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.black26,
              size: 20,
            ),
          ),
        ),
        onChanged: (value) {},
        onTap: () {},
        onTapOutside: (event) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        onAppPrivateCommand: (p0, p1) {},
        onEditingComplete: () {},
        onSubmitted: (value) {},
      ),
    );
  }
}

// ============================== CustomTextField3 ==============================

// child: CustomTextField3()

class CustomTextField3 extends StatelessWidget {
  const CustomTextField3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: Colors.blue,
        maxLength: 18,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12,
          // errorText: "Error",
          counterText: "",
          helperText: "Input your username",
          hintText: "Alex",
          labelText: "Username",
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black26,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.red,
            fontStyle: FontStyle.normal,
          ),
          contentPadding: const EdgeInsets.only(left: 10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.black12,
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
              width: 1.2,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
              width: 1.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1.2,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.2,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
          ),
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Colors.black26,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.black26,
              size: 20,
            ),
          ),
        ),
        onChanged: (value) {},
        onTap: () {},
        onTapOutside: (event) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        onAppPrivateCommand: (p0, p1) {},
        onEditingComplete: () {},
        onSubmitted: (value) {},
      ),
    );
  }
}
