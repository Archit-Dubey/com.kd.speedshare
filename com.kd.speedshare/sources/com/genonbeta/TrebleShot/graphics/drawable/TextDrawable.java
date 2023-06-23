package com.genonbeta.TrebleShot.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import com.genonbeta.TrebleShot.util.TextUtils;

public class TextDrawable extends ShapeDrawable {
    private static final float SHADE_FACTOR = 0.9f;
    private final Paint mBorderPaint;
    private final int mBorderThickness;
    private final int mColor;
    private final int mFontSize;
    private final int mHeight;
    private final float mRadius;
    private final RectShape mShape;
    private final String mText;
    private final Paint mTextPaint;
    private final int mWidth;

    public interface IBuilder {
        TextDrawable build(String str);
    }

    public interface IConfigBuilder {
        IConfigBuilder bold();

        IShapeBuilder endConfig();

        IConfigBuilder firstLettersOnly(boolean z);

        IConfigBuilder fontSize(int i);

        IConfigBuilder height(int i);

        IConfigBuilder shapeColor(int i);

        IConfigBuilder textColor(int i);

        IConfigBuilder textMaxLength(int i);

        IConfigBuilder toUpperCase();

        IConfigBuilder useFont(Typeface typeface);

        IConfigBuilder width(int i);

        IConfigBuilder withBorder(int i);
    }

    public interface IShapeBuilder {
        IConfigBuilder beginConfig();

        TextDrawable buildRect(String str);

        TextDrawable buildRound(String str);

        TextDrawable buildRoundRect(String str, int i);

        IBuilder rect();

        IBuilder round();

        IBuilder roundRect(int i);
    }

    public int getOpacity() {
        return -3;
    }

    private TextDrawable(Builder builder) {
        super(builder.mShape);
        this.mShape = builder.mShape;
        this.mHeight = builder.mHeight;
        this.mWidth = builder.mWidth;
        this.mRadius = builder.mRadius;
        String upperCase = builder.mToUpperCase ? builder.mText.toUpperCase() : builder.mText;
        if (builder.mTextMaxLength >= 0) {
            if (builder.mFirstLetters) {
                upperCase = TextUtils.getLetters(upperCase, builder.mTextMaxLength);
            } else if (upperCase.length() > builder.mTextMaxLength) {
                upperCase = upperCase.substring(0, builder.mTextMaxLength);
            }
        }
        this.mText = upperCase;
        this.mColor = builder.mColor;
        this.mFontSize = builder.mFontSize;
        Paint paint = new Paint();
        this.mTextPaint = paint;
        paint.setColor(builder.mTextColor);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setFakeBoldText(builder.mIsBold);
        this.mTextPaint.setStyle(Paint.Style.FILL);
        this.mTextPaint.setTypeface(builder.mFont);
        this.mTextPaint.setTextAlign(Paint.Align.CENTER);
        this.mTextPaint.setStrokeWidth((float) builder.mBorderThickness);
        this.mBorderThickness = builder.mBorderThickness;
        Paint paint2 = new Paint();
        this.mBorderPaint = paint2;
        paint2.setColor(getDarkerShade(this.mColor));
        this.mBorderPaint.setStyle(Paint.Style.STROKE);
        this.mBorderPaint.setStrokeWidth((float) this.mBorderThickness);
        getPaint().setColor(this.mColor);
    }

    public static IShapeBuilder builder() {
        return new Builder();
    }

    private int getDarkerShade(int i) {
        return Color.rgb((int) (((float) Color.red(i)) * SHADE_FACTOR), (int) (((float) Color.green(i)) * SHADE_FACTOR), (int) (((float) Color.blue(i)) * SHADE_FACTOR));
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        Rect bounds = getBounds();
        if (this.mBorderThickness > 0) {
            drawBorder(canvas);
        }
        int save = canvas.save();
        canvas.translate((float) bounds.left, (float) bounds.top);
        int i = this.mWidth;
        if (i < 0) {
            i = bounds.width();
        }
        int i2 = this.mHeight;
        if (i2 < 0) {
            i2 = bounds.height();
        }
        int i3 = this.mFontSize;
        if (i3 < 0) {
            i3 = Math.min(i, i2) / 2;
        }
        this.mTextPaint.setTextSize((float) i3);
        canvas.drawText(this.mText, (float) (i / 2), ((float) (i2 / 2)) - ((this.mTextPaint.descent() + this.mTextPaint.ascent()) / 2.0f), this.mTextPaint);
        canvas.restoreToCount(save);
    }

    private void drawBorder(Canvas canvas) {
        RectF rectF = new RectF(getBounds());
        int i = this.mBorderThickness;
        rectF.inset((float) (i / 2), (float) (i / 2));
        RectShape rectShape = this.mShape;
        if (rectShape instanceof OvalShape) {
            canvas.drawOval(rectF, this.mBorderPaint);
        } else if (rectShape instanceof RoundRectShape) {
            float f = this.mRadius;
            canvas.drawRoundRect(rectF, f, f, this.mBorderPaint);
        } else {
            canvas.drawRect(rectF, this.mBorderPaint);
        }
    }

    public void setAlpha(int i) {
        this.mTextPaint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mTextPaint.setColorFilter(colorFilter);
    }

    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    public static class Builder implements IConfigBuilder, IShapeBuilder, IBuilder {
        /* access modifiers changed from: private */
        public int mBorderThickness;
        /* access modifiers changed from: private */
        public int mColor;
        /* access modifiers changed from: private */
        public boolean mFirstLetters;
        /* access modifiers changed from: private */
        public Typeface mFont;
        /* access modifiers changed from: private */
        public int mFontSize;
        /* access modifiers changed from: private */
        public int mHeight;
        /* access modifiers changed from: private */
        public boolean mIsBold;
        /* access modifiers changed from: private */
        public float mRadius;
        /* access modifiers changed from: private */
        public RectShape mShape;
        /* access modifiers changed from: private */
        public String mText;
        /* access modifiers changed from: private */
        public int mTextColor;
        /* access modifiers changed from: private */
        public int mTextMaxLength;
        /* access modifiers changed from: private */
        public boolean mToUpperCase;
        /* access modifiers changed from: private */
        public int mWidth;

        public IConfigBuilder beginConfig() {
            return this;
        }

        public IShapeBuilder endConfig() {
            return this;
        }

        private Builder() {
            this.mText = "";
            this.mColor = -7829368;
            this.mTextColor = -1;
            this.mBorderThickness = 0;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mShape = new RectShape();
            this.mFont = Typeface.create("sans-serif", 0);
            this.mTextMaxLength = -1;
            this.mFontSize = -1;
            this.mIsBold = false;
            this.mToUpperCase = false;
        }

        public IConfigBuilder width(int i) {
            this.mWidth = i;
            return this;
        }

        public IConfigBuilder height(int i) {
            this.mHeight = i;
            return this;
        }

        public IConfigBuilder shapeColor(int i) {
            this.mColor = i;
            return this;
        }

        public IConfigBuilder textColor(int i) {
            this.mTextColor = i;
            return this;
        }

        public IConfigBuilder textMaxLength(int i) {
            this.mTextMaxLength = i;
            return this;
        }

        public IConfigBuilder withBorder(int i) {
            this.mBorderThickness = i;
            return this;
        }

        public IConfigBuilder useFont(Typeface typeface) {
            this.mFont = typeface;
            return this;
        }

        public IConfigBuilder fontSize(int i) {
            this.mFontSize = i;
            return this;
        }

        public IConfigBuilder bold() {
            this.mIsBold = true;
            return this;
        }

        public IConfigBuilder toUpperCase() {
            this.mToUpperCase = true;
            return this;
        }

        public IConfigBuilder firstLettersOnly(boolean z) {
            this.mFirstLetters = z;
            return this;
        }

        public IBuilder rect() {
            this.mShape = new RectShape();
            return this;
        }

        public IBuilder round() {
            this.mShape = new OvalShape();
            return this;
        }

        public IBuilder roundRect(int i) {
            float f = (float) i;
            this.mRadius = f;
            this.mShape = new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, (RectF) null, (float[]) null);
            return this;
        }

        public TextDrawable buildRect(String str) {
            rect();
            return build(str);
        }

        public TextDrawable buildRoundRect(String str, int i) {
            roundRect(i);
            return build(str);
        }

        public TextDrawable buildRound(String str) {
            round();
            return build(str);
        }

        public TextDrawable build(String str) {
            this.mText = str;
            return new TextDrawable(this);
        }
    }
}
