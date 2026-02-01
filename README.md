# WebAppLoginTest

This project contains automated login tests for a demo website using **Robot Framework** and **SeleniumLibrary**. It covers positive and negative login scenarios.

## Project Structure

```
project1/
├── tests/               # Robot test cases
├── resources/           # Custom keywords and variables
├── data/                # Test data (JSON, optional)
└── README.md            # This file
```

## Requirements

- Python 3.10+
- Robot Framework 6.1.3
- SeleniumLibrary 6.2.1
- Selenium 4.10+
- webdriver-manager 5.5+
- requests 2.30+

Install dependencies:

```bash
pip install -r requirements.txt
```

## Running Tests Locally

```bash
robot --outputdir results tests/
```

- Test reports (HTML, XML, log) will be saved in the `results/` folder.  
- Open `results/report.html` in a browser to view the full test report.

## Test Cases Covered

1. **Valid Login** — successful login with correct username/password.  
2. **Invalid Password** — login fails with an incorrect password.  
3. **Invalid User** — login fails with an incorrect username.  

## Notes

- The project uses [https://practicetestautomation.com/practice-test-login/](https://practicetestautomation.com/practice-test-login/) as a demo site.  
- All credentials in the tests are for demo purposes only.  
- Comments are added in test cases, keywords, and variables for clarity.