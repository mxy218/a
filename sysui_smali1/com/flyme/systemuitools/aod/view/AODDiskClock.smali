.class public Lcom/flyme/systemuitools/aod/view/AODDiskClock;
.super Landroid/view/View;
.source "AODDiskClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;,
        Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException;
    }
.end annotation


# instance fields
.field private final M12:Ljava/lang/String;

.field private final M24:Ljava/lang/String;

.field private mAODController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

.field private mBg1:Landroid/graphics/Bitmap;

.field private mBg2:Landroid/graphics/Bitmap;

.field private mBg3:Landroid/graphics/Bitmap;

.field private mColorLong:I

.field private mColorShort:I

.field private mDimColor:I

.field private mDot:Landroid/graphics/Bitmap;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHourPointColor:I

.field private mHourPointWidth:F

.field private mHourhand1:Landroid/graphics/Bitmap;

.field private mHourhand2:Landroid/graphics/Bitmap;

.field private mMinuteHand1:Landroid/graphics/Bitmap;

.field private mMinuteHand2:Landroid/graphics/Bitmap;

.field private mMinutePointColor:I

.field private mMinutePointWidth:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointEndLength:F

.field private mPointRadius:I

.field private mRadius:F

.field private mRes:Landroid/content/res/Resources;

.field private mSecondPointColor:I

.field private mSecondPointWidth:F

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "hh:mm"

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M12:Ljava/lang/String;

    const-string p1, "kk:mm"

    .line 40
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M24:Ljava/lang/String;

    const p1, -0x666667

    .line 72
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "hh:mm"

    .line 39
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M12:Ljava/lang/String;

    const-string v1, "kk:mm"

    .line 40
    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M24:Ljava/lang/String;

    const v2, -0x666667

    .line 72
    iput v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    .line 80
    invoke-direct {p0, p2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->obtainStyledAttrs(Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->init()V

    .line 83
    new-instance p2, Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;

    invoke-direct {p2, p0}, Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;-><init>(Lcom/flyme/systemuitools/aod/view/AODDiskClock;)V

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_34

    move-object v0, v1

    .line 87
    :cond_34
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mFormat:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mAODController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "hh:mm"

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M12:Ljava/lang/String;

    const-string p1, "kk:mm"

    .line 40
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->M24:Ljava/lang/String;

    const p1, -0x666667

    .line 72
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    return-void
.end method

.method public static Dp2Px(Landroid/content/Context;F)F
    .registers 3

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private DptoPx(I)F
    .registers 2

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->Dp2Px(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public static Sp2Px(Landroid/content/Context;F)F
    .registers 3

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private SptoPx(I)F
    .registers 2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->Sp2Px(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemuitools/aod/view/AODDiskClock;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mFormat:Ljava/lang/String;

    return-object p1
.end method

.method private doAnimation()V
    .registers 2

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getCommonAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    .line 154
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->disk_clock_bg_01:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg1:Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->disk_clock_bg_02:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg2:Landroid/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->disk_clock_bg_03:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg3:Landroid/graphics/Bitmap;

    .line 157
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->hour_hand_01:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourhand1:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->minute_hand_01:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinuteHand1:Landroid/graphics/Bitmap;

    .line 159
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->hour_hand_02:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourhand2:Landroid/graphics/Bitmap;

    .line 160
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->minute_hand_02:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinuteHand2:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->disk_clock_circle_01:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDot:Landroid/graphics/Bitmap;

    return-void
.end method

.method private obtainStyledAttrs(Landroid/util/AttributeSet;)V
    .registers 9

    const/high16 v0, -0x10000

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 99
    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/R$styleable;->DiskClock:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 100
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_padding:I

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPadding:F

    .line 101
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_text_size:I

    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->SptoPx(I)F

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mTextSize:F

    .line 102
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_hour_pointer_width:I

    const/high16 v5, 0x40a00000  # 5.0f

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointWidth:F

    .line 103
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_minute_pointer_width:I

    const/high16 v5, 0x40400000  # 3.0f

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointWidth:F

    .line 104
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_second_pointer_width:I

    invoke-direct {p0, v1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mSecondPointWidth:F

    .line 105
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_pointer_corner_radius:I

    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointRadius:I

    .line 106
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_pointer_end_length:I

    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointEndLength:F

    .line 108
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_scale_long_color:I

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mColorLong:I

    .line 109
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_scale_short_color:I

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mColorShort:I

    .line 110
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_hour_pointer_color:I

    iget v5, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointColor:I

    .line 111
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_minute_pointer_color:I

    iget v5, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    invoke-virtual {v4, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointColor:I

    .line 112
    sget p1, Lcom/android/systemui/R$styleable;->DiskClock_wb_second_pointer_color:I

    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mSecondPointColor:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_92} :catch_97
    .catchall {:try_start_8 .. :try_end_92} :catchall_95

    if-eqz v4, :cond_e0

    goto :goto_dd

    :catchall_95
    move-exception p0

    goto :goto_e1

    .line 115
    :catch_97
    :try_start_97
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPadding:F

    .line 116
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->SptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mTextSize:F

    const/4 p1, 0x5

    .line 117
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointWidth:F

    const/4 p1, 0x3

    .line 118
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointWidth:F

    .line 119
    invoke-direct {p0, v1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mSecondPointWidth:F

    .line 120
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointRadius:I

    .line 121
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointEndLength:F

    const/16 p1, 0xe1

    const/4 v1, 0x0

    .line 123
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mColorLong:I

    const/16 p1, 0x7d

    .line 124
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mColorShort:I

    const/high16 p1, -0x1000000

    .line 125
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointColor:I

    .line 126
    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mSecondPointColor:I
    :try_end_db
    .catchall {:try_start_97 .. :try_end_db} :catchall_95

    if-eqz v4, :cond_e0

    .line 129
    :goto_dd
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_e0
    return-void

    :goto_e1
    if-eqz v4, :cond_e6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_e6
    throw p0
.end method

.method private paintPointer(Landroid/graphics/Canvas;)V
    .registers 9

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 244
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 245
    rem-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x168

    div-int/2addr v1, v2

    mul-int/lit8 v0, v3, 0x1e

    div-int/lit8 v0, v0, 0x3c

    add-int/2addr v1, v0

    mul-int/lit16 v3, v3, 0x168

    .line 246
    div-int/lit8 v3, v3, 0x3c

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v1

    .line 249
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 250
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f400000  # 0.75f

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->Dp2Px(Landroid/content/Context;F)F

    move-result v0

    .line 255
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    neg-float v2, v0

    .line 256
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v4, 0x31

    .line 257
    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v5, 0x32

    .line 258
    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 262
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 267
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v3

    .line 268
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointWidth:F

    neg-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    const/16 v3, 0x49

    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointWidth:F

    div-float/2addr v4, v2

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointEndLength:F

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 270
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mMinutePointWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 277
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private paintPointer2(Landroid/graphics/Canvas;)V
    .registers 12

    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mFormat:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0xb

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 285
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 286
    rem-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    div-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x1e

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    mul-int/lit16 v0, v0, 0x168

    .line 287
    div-int/lit8 v0, v0, 0x3c

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42280000  # 42.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v4, "system/fonts/Roboto-Bold.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 296
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3da80000  # -54.0f

    const v5, 0x43ac8000  # 345.0f

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v2

    .line 301
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 302
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 303
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    const v2, -0x55086be3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x1

    .line 308
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v3

    neg-float v3, v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 309
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v3

    neg-float v3, v3

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x2

    .line 310
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    const/16 v8, 0x26

    invoke-direct {p0, v8}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v6, 0x2a

    .line 312
    invoke-direct {p0, v6}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    invoke-direct {p0, v8}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    invoke-direct {p0, v7}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 316
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 317
    iget-object v6, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v8, 0x40600000  # 3.5f

    invoke-static {v6, v8}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->Dp2Px(Landroid/content/Context;F)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    iget-object v6, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v9, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    .line 334
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 335
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mHourPointWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 340
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 341
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p0, v7}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 343
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    neg-float v1, v1

    const/16 v6, 0x3a

    invoke-direct {p0, v6}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x3e

    .line 344
    invoke-direct {p0, v1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    invoke-direct {p0, v6}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    invoke-direct {p0, v7}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 347
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    invoke-direct {p0, v5}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v1

    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 349
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 432
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 433
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mAODController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isDiskClockType(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->doAnimation()V

    goto :goto_1c

    :cond_17
    const/16 v0, 0x8

    .line 437
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->DptoPx(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_30

    .line 217
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg1:Landroid/graphics/Bitmap;

    goto :goto_3b

    :cond_30
    if-ne v0, v2, :cond_35

    .line 219
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg2:Landroid/graphics/Bitmap;

    goto :goto_3b

    :cond_35
    if-ne v0, v1, :cond_3a

    .line 221
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mBg3:Landroid/graphics/Bitmap;

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    .line 223
    :goto_3b
    invoke-virtual {p0, p1, v4}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->paintCircle(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    if-ne v0, v3, :cond_44

    .line 230
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->paintPointer(Landroid/graphics/Canvas;)V

    goto :goto_4f

    :cond_44
    if-ne v0, v2, :cond_4a

    .line 232
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->paintPointer2(Landroid/graphics/Canvas;)V

    goto :goto_4f

    :cond_4a
    if-ne v0, v1, :cond_4f

    .line 234
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->paintPointer(Landroid/graphics/Canvas;)V

    .line 237
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 166
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 171
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 172
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    const/16 v4, 0x28a

    if-eq p1, v3, :cond_2e

    if-eqz p1, :cond_2e

    if-eq p2, v3, :cond_2e

    if-eqz p2, :cond_2e

    const/high16 p2, 0x40000000  # 2.0f

    if-ne p1, p2, :cond_27

    .line 183
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_27
    if-ne v2, p2, :cond_3b

    .line 186
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3b

    .line 177
    :cond_2e
    :try_start_2e
    new-instance p1, Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException;

    const-string/jumbo p2, "宽度高度至少有一个确定的值,不能同时为wrap_content"

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException;-><init>(Lcom/flyme/systemuitools/aod/view/AODDiskClock;Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catch Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException; {:try_start_2e .. :try_end_37} :catch_37

    :catch_37
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mRadius:F

    const/4 p1, 0x0

    .line 198
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPointEndLength:F

    return-void
.end method

.method public paintCircle(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mDimColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 204
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateTime()V
    .registers 1

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
