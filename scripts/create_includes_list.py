import glob

for file in glob.glob('./include/game/sa2/stage/enemies/*'):
    if file.endswith(".h"):
        print(f"#include \"{file.replace('./include/', '')}\"")
    