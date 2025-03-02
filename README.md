# 📌 Flutter Counter App using Bloc (Cubit & BlocProvider)

This Flutter application demonstrates state management using **Bloc (Cubit & BlocProvider)**. The app includes:  
✅ **Counter using Cubit** 
✅ **Counter using BLoC** 
✅ **BlocProvider for state management**  
✅ **MultiBlocProvider** for handling multiple states  
✅ **State persistence across multiple screens**  

---

## 📌 Features  
- The **counter value** is managed using **Cubit** and **BlocProvider**.  
- Used **MultiBlocProvider** to handle state globally across the app.  
- **Increment and Decrement** buttons are on **different screens** to showcase global state management.  
- **Navigation between screens** without losing counter state.  

---

## Demo

https://github.com/user-attachments/assets/2f63ffa2-5602-4285-82c8-610e314789fb

## 📂 Project Structure  

```
📦 counter_app_bloc  
├── 📂 lib  
│   ├── 📜 main.dart  
│   ├── 📂 bloc  
│   │   ├── 📜 counter_bloc.dart
│   ├── 📂 cubit 
│   │   ├── 📜 counter_cubit.dart  
│   ├── 📂 screens  
│   │   ├── 📜 home_screen.dart  
│   │   ├── 📜 inc_dec_screen.dart  
└── 📜 pubspec.yaml  
```

---

## 🛠️ Dependencies  

Ensure you have these dependencies in your **pubspec.yaml** file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3
```

Run:  
```sh
flutter pub get
```

---

## 🚀 Getting Started  

1️⃣ **Clone the Repository**  
```sh
git clone https://github.com/Siddiqui145/counter_cubit_bloc.git
cd counter_cubit_bloc
```

2️⃣ **Run the App**  
```sh
flutter run
```

## 🎯 Expected Behavior  

1️⃣ **Home Screen**  
- Displays **counter value** using `BlocBuilder<CounterCubit, int>`.  
- Has button to navigate to **Increment** **Decrement** screen.  

2️⃣ **Increment Screen**  
- Press the button to increase the counter.  
- Navigating back keeps the updated value.  

3️⃣ **Decrement Screen**  
- Press the button to decrease the counter.  
- Navigating back keeps the updated value.  

---

## 📌 Why Use BlocProvider?  

✅ **Global state management** across multiple screens.  
✅ **Efficient state handling** with Cubit.  
✅ **Separation of business logic** from UI.  

---

## 🏆 Conclusion  

This project demonstrates how to use **Cubit & BlocProvider** to handle a global counter state across multiple screens using **MultiBlocProvider**. 🚀  

💡 **Want to contribute?** Feel free to fork and improve!  

---

## 📜 License  

MIT License © 2025  
