import os

for pal in os.listdir("graphics/sa2/obj_palettes"):
    if pal.endswith("_vc.gbapal"):
        os.system(f"tools/gbagfx/gbagfx graphics/sa2/obj_palettes/{pal} graphics/sa2/obj_palettes/{pal.replace('gbapal', 'pal')}")
