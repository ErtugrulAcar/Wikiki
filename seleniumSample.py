from selenium import webdriver
import time
browser = webdriver.Firefox(executable_path="C:/Users/Ertugrul/PycharmProjects/untitled1/geckodriver.exe")
browser.get("http://localhost:8080/")
email = browser.find_element_by_name("email")
password = browser.find_element_by_name("password")

email.click()
email.send_keys("ertugrulacar@hotmail.com")
password.click()
password.send_keys("12345")
button = browser.find_element_by_xpath("/html/body/center/div/div/div[1]/form/input[3]")
button.click()
for i in range(1, 4):
    time.sleep(2)
    browser.get("http://localhost:8080/userProfile" + str(i))

time.sleep(3)
browser.close();