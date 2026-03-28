package com.sa1.app;

import org.libsdl.app.SDLActivity;

/**
 * SA1 Android Activity — extends SDLActivity which handles native library
 * loading, surface management, and input routing (including gamepad).
 */
public class SA1Activity extends SDLActivity {
    @Override
    protected String[] getLibraries() {
        return new String[] {
            "SDL2",
            "main"
        };
    }
}
