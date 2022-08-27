
# Seclobe sample project

apks for diffrent platforms

* [arm64-v8a](https://drive.google.com/file/d/11abLXK2Tr3aLHYdg9chFFHqHzaK8QAlS/view?usp=sharing)


* [armeabi-v7a](https://drive.google.com/file/d/1Y8RrF5v1phEWdoeo6kyZN84A-gh5WBid/view?usp=sharing)

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/VISHNUSANKARPV/seclobe_sample_project.git

```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch

