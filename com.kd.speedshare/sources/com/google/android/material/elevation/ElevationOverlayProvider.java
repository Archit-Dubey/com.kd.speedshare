package com.google.android.material.elevation;

import android.content.Context;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;

public class ElevationOverlayProvider {
    private static final float ELEVATION_OVERLAY_MULTIPLIER = 4.5f;
    private final int colorSurface;
    private final float displayDensity;
    private final int elevationOverlaysColor;
    private final boolean elevationOverlaysEnabled;

    public ElevationOverlayProvider(Context context) {
        this.elevationOverlaysEnabled = MaterialAttributes.resolveBooleanAttribute(context, R.attr.elevationOverlaysEnabled);
        this.elevationOverlaysColor = MaterialColors.getColor(context, R.attr.elevationOverlaysColor, 0);
        this.colorSurface = MaterialColors.getColor(context, R.attr.colorSurface, 0);
        this.displayDensity = context.getResources().getDisplayMetrics().density;
    }

    public int layerOverlayIfNeeded(int i, float f) {
        return (!this.elevationOverlaysEnabled || !isSurfaceColor(i)) ? i : layerOverlay(i, f);
    }

    public int layerOverlay(int i, float f) {
        return MaterialColors.layer(i, this.elevationOverlaysColor, calculateOverlayAlphaFraction(f));
    }

    public int calculateOverlayAlpha(float f) {
        return Math.round(calculateOverlayAlphaFraction(f) * 255.0f);
    }

    public float calculateOverlayAlphaFraction(float f) {
        float f2 = this.displayDensity;
        if (f2 <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min((((float) Math.log1p((double) (f / f2))) * ELEVATION_OVERLAY_MULTIPLIER) / 100.0f, 1.0f);
    }

    public boolean isOverlaysEnabled() {
        return this.elevationOverlaysEnabled;
    }

    public int getOverlaysColor() {
        return this.elevationOverlaysColor;
    }

    public int getColorSurface() {
        return this.colorSurface;
    }

    private boolean isSurfaceColor(int i) {
        return ColorUtils.setAlphaComponent(i, 255) == this.colorSurface;
    }
}
