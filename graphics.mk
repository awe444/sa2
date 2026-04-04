tileset_%.4bpp: tileset_%.png
	$(GFX) $< $@ -ignore_trailing
    
tiles.8bpp: tiles.png
	$(GFX) $< $@ -ignore_trailing

ifeq ($(PLATFORM),win32)
    # For experimental OpenGL renderer
    GFX_CVT_FLAGS :=
else
    GFX_CVT_FLAGS := -split_into_oam_shapes
endif

graphics/sa2/obj_tiles/4bpp/%.4bpp: graphics/sa2/obj_tiles/4bpp/%.png
	$(GFX) $< $@ $(GFX_CVT_FLAGS)

graphics/sa2/obj_tiles/8bpp/%.8bpp: graphics/sa2/obj_tiles/8bpp/%.png
	$(GFX) $< $@ $(GFX_CVT_FLAGS)

graphics/sa1/obj_tiles/4bpp/%.4bpp: graphics/sa1/obj_tiles/4bpp/%.png
	$(GFX) $< $@ $(GFX_CVT_FLAGS)

graphics/sa1/obj_tiles/8bpp/%.8bpp: graphics/sa1/obj_tiles/8bpp/%.png
	$(GFX) $< $@ $(GFX_CVT_FLAGS)
