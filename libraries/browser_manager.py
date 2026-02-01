from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

def open_chrome():
    options = webdriver.ChromeOptions()   # Set Chrome options if needed
    driver = webdriver.Chrome(ChromeDriverManager().install(), options=options)  # Auto-install Chrome driver
    return driver                         # Return driver instance for use