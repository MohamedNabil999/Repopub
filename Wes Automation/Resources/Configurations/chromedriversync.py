from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options as ChromeOptions
from selenium.webdriver.chrome.service import Service
from webdriver_manager.firefox import GeckoDriverManager


def get_driver_path_with_browser(browser_name):
    #if browser_name.lower() == 'chrome':
    global driver_path
    #chromeOptions = ChromeOptions()
    #chromeOptions.add_extension('scanner.crx')
    #chrome_options = ChromeOptions()
    #service = Service(ChromeDriverManager().install())
    #chrome_options.add_extension('./Uploads/scanner.crx')
    #driver_path = webdriver.Chrome(service=service, options=chrome_options)
    driver_path = ChromeDriverManager().install()
    # elif browser_name.lower() == 'firefox':
    # driver_path = GeckoDriverManager().install()
    #print(driver_path)
    return driver_path
