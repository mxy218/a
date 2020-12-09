.class Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mScale:F

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSysUiVis:I

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;F)V
    .registers 13

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    .line 496
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    .line 497
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 508
    iput p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 509
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 510
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    .line 511
    iput p5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    .line 512
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p2

    .line 513
    const p5, 0x1060229

    invoke-virtual {p2, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    .line 515
    nop

    .line 516
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v3

    .line 518
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v6

    .line 515
    const/high16 v1, 0x4000000

    const/16 v5, 0x2000

    move v0, p1

    move v2, p5

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 519
    nop

    .line 521
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v3

    .line 523
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result p4

    if-eqz p4, :cond_66

    .line 524
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x11100a2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 p2, 0x1

    goto :goto_67

    :cond_66
    const/4 p2, 0x0

    :goto_67
    move v6, p2

    .line 519
    const/high16 v1, 0x8000000

    const/16 v5, 0x10

    move v0, p1

    move v2, p5

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 525
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .registers 6

    .line 546
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 548
    :goto_a
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4

    .line 553
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 555
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 571
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 574
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v0

    .line 575
    if-eqz v0, :cond_30

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 578
    :cond_30
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 560
    if-lez p3, :cond_3a

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_14

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3a

    .line 562
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 564
    if-eqz p2, :cond_2a

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2b

    :cond_2a
    const/4 p2, 0x0

    .line 565
    :goto_2b
    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    sub-int/2addr p2, v0

    int-to-float v4, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 567
    :cond_3a
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .registers 7

    .line 535
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 537
    :goto_b
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 541
    :cond_2b
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 531
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 532
    return-void
.end method
