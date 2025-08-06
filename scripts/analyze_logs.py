import re

def parse_log(file_path):
    with open(file_path, 'r') as f:
        for line in f:
            if "login attempt" in line or "CMD" in line:
                print(line.strip())

if __name__ == "__main__":
    log_path = "../cowrie/var/log/cowrie/cowrie.log"
    parse_log(log_path)
