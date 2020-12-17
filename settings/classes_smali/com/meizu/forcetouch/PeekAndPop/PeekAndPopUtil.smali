.class public Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;
.super Ljava/lang/Object;
.source "PeekAndPopUtil.java"


# static fields
.field private static mBoostPerformance:Ljava/lang/reflect/Method; = null

.field private static mConvertFromTranslucent:Ljava/lang/reflect/Method; = null

.field private static mCurPressure:F = 0.0f

.field private static mElapsedTime:J = 0x0L

.field private static mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method; = null

.field private static mGetIWindowManager:Ljava/lang/reflect/Method; = null

.field private static mGetMoveWinInstance:Ljava/lang/reflect/Method; = null

.field private static mGetMovedWinPoint:Ljava/lang/reflect/Method; = null

.field private static mGetWindowService:Ljava/lang/reflect/Method; = null

.field private static mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService; = null

.field private static mInitMotionX:F = 0.0f

.field private static mInitMotionY:F = 0.0f

.field private static mIntent:Landroid/content/Intent; = null

.field private static mIsSplitMode:Ljava/lang/reflect/Method; = null

.field private static mPerfSchedulerManager:Ljava/lang/reflect/Method; = null

.field private static mScreenshotLiveWallpaper:Ljava/lang/reflect/Method; = null

.field private static mServiceConnection:Landroid/content/ServiceConnection; = null

.field private static mStartForcePress:Z = false

.field private static mTouchSlop:I = -0x1

.field private static mWindowManager:Ljava/lang/Object;

.field private static sStatusBarHeight:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/flyme/systemui/smarttouch/ISmartTouchService;
    .registers 1

    .line 39
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/smarttouch/ISmartTouchService;)Lcom/flyme/systemui/smarttouch/ISmartTouchService;
    .registers 1

    .line 39
    sput-object p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    return-object p0
.end method

.method public static boostPerformance()V
    .registers 6

    .line 635
    :try_start_0
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mBoostPerformance:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const-string v0, "android.os.PerfSchedulerManager"

    .line 636
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInstance"

    new-array v4, v2, [Ljava/lang/Class;

    .line 637
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mPerfSchedulerManager:Ljava/lang/reflect/Method;

    const-string v3, "boostPerformance"

    new-array v4, v1, [Ljava/lang/Class;

    .line 638
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mBoostPerformance:Ljava/lang/reflect/Method;

    .line 640
    :cond_24
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mPerfSchedulerManager:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 641
    sget-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mBoostPerformance:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "AppStart"

    aput-object v4, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_38} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_38} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_38} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_4c

    :catch_39
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4c

    :catch_3e
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4c

    :catch_43
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4c

    :catch_48
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_4c
    return-void
.end method

.method public static convertFromTranslucent(Landroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 405
    :cond_4
    :try_start_4
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mConvertFromTranslucent:Ljava/lang/reflect/Method;

    if-nez v1, :cond_14

    .line 406
    const-class v1, Landroid/app/Activity;

    const-string v2, "convertFromTranslucent"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mConvertFromTranslucent:Ljava/lang/reflect/Method;

    .line 407
    :cond_14
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mConvertFromTranslucent:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1b} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1b} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1b} :catch_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    .line 414
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    :catch_22
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_2b
    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/content/Context;F)Z
    .registers 9

    .line 81
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    sput v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mCurPressure:F

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_13

    :cond_11
    const/high16 p2, 0x3f000000  # 0.5f

    .line 85
    :cond_13
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6b

    const/4 p1, 0x1

    if-eq v0, p1, :cond_66

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2d

    const/4 p0, 0x3

    if-eq v0, p0, :cond_66

    goto :goto_85

    .line 100
    :cond_2d
    sget v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mInitMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mTouchSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_85

    sget v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mInitMotionY:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sget v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_85

    .line 101
    sget-boolean p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mStartForcePress:Z

    if-nez p0, :cond_85

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v4, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mElapsedTime:J

    sub-long/2addr v0, v4

    .line 104
    sget p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mCurPressure:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_85

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, v0, v4

    if-gez p0, :cond_85

    .line 105
    sput-boolean p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mStartForcePress:Z

    return p1

    .line 113
    :cond_66
    sput-boolean v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mStartForcePress:Z

    .line 114
    sput v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mTouchSlop:I

    goto :goto_85

    .line 90
    :cond_6b
    sput v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mInitMotionX:F

    .line 91
    sput p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mInitMotionY:F

    .line 92
    sput-boolean v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mStartForcePress:Z

    .line 93
    sget p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mTouchSlop:I

    if-ne p0, v2, :cond_7f

    .line 94
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    sput p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mTouchSlop:I

    .line 97
    :cond_7f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sput-wide p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mElapsedTime:J

    :cond_85
    :goto_85
    return v3
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 617
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 618
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 619
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_18

    :cond_16
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 616
    :goto_18
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 622
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 623
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 624
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 144
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 146
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_23
    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 3

    add-int/lit8 p1, p1, 0x4

    .line 267
    array-length v0, p0

    if-lt p1, v0, :cond_8

    const-string p0, "<bottom of call stack>"

    return-object p0

    .line 270
    :cond_8
    aget-object p0, p0, p1

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallers(I)Ljava/lang/String;
    .registers 5

    .line 256
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Callers: \n  "

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p0, :cond_24

    .line 260
    invoke-static {v0, v2}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 262
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 566
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 572
    :cond_c
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_17

    .line 573
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1b

    .line 575
    :cond_17
    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1b
    if-nez v0, :cond_1e

    return-object v1

    .line 580
    :cond_1e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-string/jumbo v3, "window"

    .line 583
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 584
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 585
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/high16 v5, 0x3f800000  # 1.0f

    int-to-float v6, v4

    int-to-float v7, v1

    div-float v8, v6, v7

    int-to-float v9, v3

    int-to-float v10, v2

    div-float v11, v9, v10

    .line 586
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v7, v5

    sub-float/2addr v7, v6

    float-to-int v7, v7

    .line 589
    div-int/lit8 v7, v7, 0x2

    mul-float/2addr v10, v5

    sub-float/2addr v10, v9

    float-to-int v8, v10

    .line 590
    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v4, v1

    sub-int/2addr v3, v2

    const/high16 v1, 0x3f000000  # 0.5f

    if-gez v4, :cond_68

    int-to-float v2, v4

    const/high16 v4, -0x41000000  # -0.5f

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    float-to-int v2, v2

    sub-int/2addr v7, v2

    :cond_68
    if-gez v3, :cond_70

    int-to-float v2, v3

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v8, v1

    :cond_70
    const/4 v1, 0x0

    if-gez v7, :cond_74

    move v7, v1

    :cond_74
    if-gez v8, :cond_77

    goto :goto_78

    :cond_77
    move v1, v8

    :goto_78
    int-to-float v2, v7

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    div-float/2addr v6, v5

    float-to-int v3, v6

    div-float/2addr v9, v5

    float-to-int v4, v9

    .line 608
    invoke-static {v0, v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 609
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getForceTouchViewFromViewGroup(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 229
    :cond_4
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_9

    return-object p0

    .line 232
    :cond_9
    check-cast p0, Landroid/view/ViewGroup;

    .line 233
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_20
    if-ltz v3, :cond_39

    .line 238
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_36

    .line 240
    invoke-virtual {v4, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_36

    return-object v4

    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    :cond_39
    return-object v0
.end method

.method private static getIWindowManager()Ljava/lang/Object;
    .registers 6

    :try_start_0
    const-string v0, "android.view.IWindowManager$Stub"

    .line 533
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 534
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetIWindowManager:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    const-string v1, "asInterface"

    new-array v4, v3, [Ljava/lang/Class;

    .line 535
    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetIWindowManager:Ljava/lang/reflect/Method;

    .line 537
    :cond_1a
    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getWindowService()Landroid/os/IBinder;

    move-result-object v1

    .line 538
    sget-object v4, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetIWindowManager:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 4

    .line 288
    :try_start_0
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->sStatusBarHeight:Ljava/lang/Integer;

    if-nez v0, :cond_48

    const-string v0, "com.android.internal.R$dimen"

    .line 289
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->sStatusBarHeight:Ljava/lang/Integer;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_48

    :catch_30
    move-exception v0

    const-string v1, "ResurceUtils"

    const-string v2, "get status bar height fail"

    .line 296
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/meizu/forcetouch/R$dimen;->status_bar_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->sStatusBarHeight:Ljava/lang/Integer;

    .line 299
    :cond_48
    :goto_48
    sget-object p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->sStatusBarHeight:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getWindowService()Landroid/os/IBinder;
    .registers 6

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 547
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 548
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetWindowService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    const-string v1, "getService"

    new-array v4, v3, [Ljava/lang/Class;

    .line 549
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetWindowService:Ljava/lang/reflect/Method;

    .line 551
    :cond_1a
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetWindowService:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "window"

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static hideSmartTouch(Landroid/content/Context;Z)Z
    .registers 5

    .line 449
    :try_start_0
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    .line 450
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_10

    .line 451
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil$1;

    invoke-direct {v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil$1;-><init>(Z)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 469
    :cond_10
    sget-object p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_23

    .line 470
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.systemui"

    const-string v2, "com.flyme.systemui.smarttouch.SmartTouchService"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sput-object p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIntent:Landroid/content/Intent;

    .line 471
    :cond_23
    sget-object p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIntent:Landroid/content/Intent;

    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_38

    return v1

    .line 475
    :cond_2e
    sget-object p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    invoke-interface {p0, p1}, Lcom/flyme/systemui/smarttouch/ISmartTouchService;->forceHideSmartTouch(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return v1

    :catch_34
    move-exception p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method static isFlymeSplitmode(Landroid/app/Activity;)Z
    .registers 8

    const-string v0, "PeekAndPopUtil "

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    .line 364
    :cond_6
    :try_start_6
    sget-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIsSplitMode:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    if-nez v2, :cond_29

    const-string v2, "meizu.splitmode.FlymeSplitModeManager"

    .line 365
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 366
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    const-string v4, "isSplitMode"

    new-array v5, v1, [Ljava/lang/Class;

    .line 367
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIsSplitMode:Ljava/lang/reflect/Method;

    .line 369
    :cond_29
    sget-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 370
    sget-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIsSplitMode:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_42} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_42} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_42} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_42} :catch_43

    goto :goto_5a

    :catch_43
    const-string p0, " isSplitmode IllegalAccessException !!!"

    .line 381
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_49
    const-string p0, " isSplitmode InvocationTargetException !!!"

    .line 378
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_4f
    const-string p0, " isSplitmode NoSuchMethodException !!!"

    .line 375
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_55
    const-string p0, " isSplitmode ClassNotFoundException !!!"

    .line 372
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 2

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isMoveWin(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    :try_start_3
    sget-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetMoveWinInstance:Ljava/lang/reflect/Method;

    if-nez v3, :cond_25

    const-string v3, "meizu.view.MoveWinManager"

    .line 312
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    new-array v5, v1, [Ljava/lang/Class;

    .line 313
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetMoveWinInstance:Ljava/lang/reflect/Method;

    const-string v4, "getMovedWinPoint"

    new-array v5, v2, [Ljava/lang/Class;

    .line 314
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetMovedWinPoint:Ljava/lang/reflect/Method;

    .line 316
    :cond_25
    sget-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetMoveWinInstance:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 317
    sget-object v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mGetMovedWinPoint:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_39} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_39} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_39} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_39} :catch_3a

    goto :goto_4e

    :catch_3a
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_4d

    :catch_3f
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4d

    :catch_44
    move-exception p0

    .line 323
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4d

    :catch_49
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_4d
    move-object p0, v0

    :goto_4e
    if-eqz p0, :cond_56

    .line 331
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result p0

    if-eqz p0, :cond_57

    :cond_56
    move v1, v2

    :cond_57
    return v1
.end method

.method static isSplitmode(Landroid/app/Activity;)Z
    .registers 3

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_b

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    .line 349
    :cond_b
    invoke-static {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isFlymeSplitmode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static screenshotLiveWallpaper(II)Landroid/graphics/Bitmap;
    .registers 11

    .line 508
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mWindowManager:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 509
    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getIWindowManager()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mWindowManager:Ljava/lang/Object;

    :cond_a
    const/4 v0, 0x0

    if-lez p0, :cond_60

    if-gtz p1, :cond_10

    goto :goto_60

    .line 516
    :cond_10
    :try_start_10
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mWindowManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 517
    sget-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mScreenshotLiveWallpaper:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v2, :cond_35

    const-string/jumbo v2, "screenshotLiveWallpaper"

    new-array v7, v6, [Ljava/lang/Class;

    .line 518
    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mScreenshotLiveWallpaper:Ljava/lang/reflect/Method;

    .line 520
    :cond_35
    sget-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mScreenshotLiveWallpaper:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mWindowManager:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_4f} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_4f} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_50

    goto :goto_5f

    :catch_50
    move-exception p0

    .line 526
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5e

    :catch_55
    move-exception p0

    .line 524
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :goto_5e
    move-object p0, v0

    :goto_5f
    return-object p0

    :cond_60
    :goto_60
    return-object v0
.end method

.method public static unBindSmartTouchService(Landroid/content/Context;)V
    .registers 3

    .line 490
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 492
    :try_start_9
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_13
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p0

    .line 496
    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 497
    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    throw p0

    .line 496
    :catch_13
    :goto_13
    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 497
    sput-object v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->mISmartTouchService:Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    :cond_17
    return-void
.end method
