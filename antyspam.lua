import sys 
import os 
import time 
import ctypes 

def set_console_title(title): 
   ctypes.windll.kernel32.SetConsoleTitleW(title) 

def loading_animation(): 
    animation = "|/-\\" 
    for i in range(20): 
        time.sleep(0.1) 
        sys.stdout.write("\r" + "ŁADOWANIE... " + animation[i % len(animation)])  # Poprawiona linijka
        sys.stdout.flush() 

def fake_error(): 
    set_console_title("Spoofer ładowanie...") 
    loading_animation() 
    time.sleep(3) 
    os.system('cls') 
    set_console_title("Coprything: Projekt Averos") 
    print ("###################################") 
    print ("#         Autor: .jvsh.           #") 
    print ("#            Discord:             #") 
    print ("#   https://discord.gg/4X5XjDxMf8 #") 
    print ("###################################") 
    time.sleep(5) 
    os.system('cls') 
    set_console_title("Podrabianie serialu...") 
    loading_animation() 
    time.sleep(1) 
    os.system('cls') 
    print ('[+] Podrabianie serialu...') 
    time.sleep(3) 
    os.system('cls') 
    set_console_title("Podrobiony serial") 
    print("ZROBIONE!") 

fake_error()
