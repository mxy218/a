.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V
    .registers 14

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 64
    iput-object p3, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    iget-object v1, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 68
    and-int/lit8 v1, v1, -0x2

    .line 69
    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_75

    .line 70
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v5, v5, v2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 72
    const/16 v6, 0x46

    const/16 v7, 0x66

    const/16 v8, 0x41

    const/16 v9, 0x61

    if-lt v4, v9, :cond_4a

    if-gt v4, v7, :cond_4a

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0xa

    goto :goto_55

    .line 73
    :cond_4a
    if-lt v4, v8, :cond_53

    if-gt v4, v6, :cond_53

    add-int/lit8 v4, v4, -0x41

    add-int/lit8 v4, v4, 0xa

    goto :goto_55

    .line 74
    :cond_53
    add-int/lit8 v4, v4, -0x30

    .line 75
    :goto_55
    if-lt v5, v9, :cond_5e

    if-gt v5, v7, :cond_5e

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0xa

    goto :goto_69

    .line 76
    :cond_5e
    if-lt v5, v8, :cond_67

    if-gt v5, v6, :cond_67

    add-int/lit8 v5, v5, -0x41

    add-int/lit8 v5, v5, 0xa

    goto :goto_69

    .line 77
    :cond_67
    add-int/lit8 v5, v5, -0x30

    .line 78
    :goto_69
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    rsub-int v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v3, v3, 0x2

    goto :goto_25

    .line 80
    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 85
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-static {p3, v1, v1, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 88
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 93
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 94
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 96
    iget v0, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    invoke-static {p3, v3, v2, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 98
    iget v0, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v3, 0x3

    mul-int/2addr v0, v3

    invoke-static {p3, v3, v2, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 100
    const/4 v0, 0x4

    const/high16 v3, -0x50000000

    invoke-static {p3, v0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 102
    const/4 v3, 0x5

    const v4, 0x60ffffff

    invoke-static {p3, v3, v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 104
    const/4 v4, 0x6

    const/4 v5, 0x7

    invoke-static {p3, v4, v2, v5, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 106
    const/16 v5, 0x8

    invoke-static {p3, v5, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 108
    const/16 v6, 0x9

    invoke-static {p3, v6, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result p2

    .line 111
    iget-object p3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v4

    int-to-float v3, v5

    int-to-float p2, p2

    invoke-virtual {p3, v2, v3, p2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 114
    const/4 p2, 0x0

    .line 116
    :try_start_f5
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p3, "WatermarkSurface"

    .line 117
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v1, v1}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p3, -0x3

    .line 119
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    .line 121
    iget-object p1, p0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 122
    const p1, 0xf4240

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 123
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 124
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->show()V

    .line 125
    iget-object p1, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_127
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_f5 .. :try_end_127} :catch_128

    .line 127
    goto :goto_129

    .line 126
    :catch_128
    move-exception p1

    .line 128
    :goto_129
    iput-object p2, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 129
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 12

    .line 141
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v0, :cond_5c

    .line 142
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 143
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 145
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 146
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    const/4 v4, 0x0

    .line 149
    :try_start_11
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_17} :catch_1a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_17} :catch_18

    .line 152
    :goto_17
    goto :goto_1c

    .line 151
    :catch_18
    move-exception v3

    goto :goto_1c

    .line 150
    :catch_1a
    move-exception v3

    goto :goto_17

    .line 153
    :goto_1c
    if-eqz v4, :cond_5c

    .line 154
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 157
    iget v3, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 161
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v6, v0, v5

    div-int/2addr v6, v2

    .line 162
    add-int/2addr v5, v0

    mul-int/2addr v6, v2

    sub-int/2addr v5, v6

    .line 163
    div-int/lit8 v6, v2, 0x4

    .line 164
    if-lt v5, v6, :cond_37

    sub-int v6, v2, v6

    if-le v5, v6, :cond_3a

    .line 165
    :cond_37
    div-int/lit8 v5, v2, 0x3

    add-int/2addr v2, v5

    .line 168
    :cond_3a
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v5, v5

    .line 169
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v6, v6

    .line 170
    :cond_40
    :goto_40
    iget v7, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v7, v1

    if-ge v5, v7, :cond_57

    .line 171
    iget-object v7, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v8, v6

    int-to-float v9, v5

    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    add-int/2addr v6, v2

    .line 173
    if-lt v6, v0, :cond_40

    .line 174
    iget v7, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v7, v0

    sub-int/2addr v6, v7

    .line 175
    add-int/2addr v5, v3

    goto :goto_40

    .line 178
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 181
    :cond_5c
    return-void
.end method

.method positionSurface(II)V
    .registers 4

    .line 132
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 133
    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 134
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 136
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 138
    :cond_14
    return-void
.end method
