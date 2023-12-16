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
        sys.stdout.write("\r" + "LOADING... " + animation[i % len(animation)])
        sys.stdout.flush()

def fake_error():
    set_console_title("Spoofer ładowanie...")
    loading_animation()
    time.sleep(3)
    os.system('cls' if os.name == 'nt' else 'clear')  # Czyszczenie konsoli zgodnie z systemem operacyjnym
    set_console_title("Coprything: Projekt Averos")
    print("###################################")
    print("#         Autor: .jvsh.           #")
    print("#            Discord:             #")
    print("#   https://discord.gg/4X5XjDxMf8 #")
    print("###################################")
    time.sleep(5)
    os.system('cls' if os.name == 'nt' else 'clear')
    set_console_title("Serial spoofing...")
    loading_animation()
    time.sleep(1)
    os.system('cls' if os.name == 'nt' else 'clear')
    print('[+] Serial spoofing...')
    time.sleep(3)
    os.system('cls' if os.name == 'nt' else 'clear')
    set_console_title("Serial spoofing")
    print("DONE! Open MTA:SA")

fake_error()
