package com.google.android.material.shape;

public class CutCornerTreatment extends CornerTreatment implements Cloneable {
    public CutCornerTreatment(float f) {
        super(f);
    }

    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(0.0f, this.cornerSize * f2, 180.0f, 180.0f - f);
        double sin = Math.sin(Math.toRadians((double) f));
        double d = (double) this.cornerSize;
        Double.isNaN(d);
        double d2 = sin * d;
        double d3 = (double) f2;
        Double.isNaN(d3);
        float f3 = (float) (d2 * d3);
        double sin2 = Math.sin(Math.toRadians((double) (90.0f - f)));
        double d4 = (double) this.cornerSize;
        Double.isNaN(d4);
        Double.isNaN(d3);
        shapePath.lineTo(f3, (float) (sin2 * d4 * d3));
    }
}
