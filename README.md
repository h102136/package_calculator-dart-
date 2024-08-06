# Calculator by Python

A calculator with limited operation (+, -, *, /, (, ) only) by Python.
Allow users to input an expression (ex: 4 + 5 / 9 * (7 + 5)) to output a result.
Unit test cases (calss and function) and coverage reports included

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Tests](#tests)

## Installation

### Prerequisites

- Git https://github.com/git-guides/install-git
- Flutter https://docs.flutter.dev/get-started/install

### Steps

Clone the repository:<br>
    
- Open CMD or PowerShell and type the command below:<br><br>
```sh
git clone https://github.com/h102136/package_calculator_dart
```
```sh
cd package_calculator_dart/bin
```
<br>

- The path setting of the program located is completed.
    
## Usage

Run the program:<br><br>

- Type the command below on the current path:<br>
```sh
dart run main,dart
```
<br>

- The program will show the info below:<br>
```sh
Enter an expression ex:(7+8.5)*5-9/3 (+, -, *, / only) or Q for quit: 
```
<br>

- Then you are good to input a expression and get a result.

## Tests

### Running Tests

- Set the path to "tests" folder, assuming you are currently in "calculator" folder<br>
```sh
cd ../test
```
<br>

- Run the test:<br>
```sh
dart run calculator_test.dart
dart run input_handler_test.dart
```
<br>