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
    .registers 15
    .param p1, "windowFlags"  # I
    .param p2, "windowPrivateFlags"  # I
    .param p3, "sysUiVis"  # I
    .param p4, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p5, "scale"  # F

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    .line 497
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 499
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 509
    iput p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 510
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 511
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    .line 512
    iput p5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    .line 513
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 514
    .local v0, "context":Landroid/content/Context;
    const v1, 0x1060229

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 516
    .local v1, "semiTransparent":I
    nop

    .line 517
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v5

    .line 519
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v8

    .line 516
    const/high16 v3, 0x4000000

    const/16 v7, 0x2000

    move v2, p1

    move v4, v1

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 520
    nop

    .line 522
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v5

    .line 524
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 525
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x1

    goto :goto_67

    :cond_66
    const/4 v2, 0x0

    :goto_67
    move v8, v2

    .line 520
    const/high16 v3, 0x8000000

    const/16 v7, 0x10

    move v2, p1

    move v4, v1

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 526
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .registers 6

    .line 547
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 549
    .local v0, "forceBarBackground":Z
    :goto_a
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v1

    return v1
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "c"  # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"  # Landroid/graphics/Rect;

    .line 554
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 556
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "c"  # Landroid/graphics/Canvas;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 572
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 573
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 575
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 576
    .local v1, "visible":Z
    if-eqz v1, :cond_30

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 577
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 579
    :cond_30
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "c"  # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"  # Landroid/graphics/Rect;
    .param p3, "statusBarHeight"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 561
    if-lez p3, :cond_3a

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_14

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3a

    .line 563
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

    .line 565
    .local v0, "rightInset":I
    if-eqz p2, :cond_2a

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 566
    .local v1, "left":I
    :goto_2b
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 568
    .end local v0  # "rightInset":I
    .end local v1  # "left":I
    :cond_3a
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .registers 7

    .line 536
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 538
    .local v0, "forceBarBackground":Z
    :goto_b
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 540
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 542
    :cond_2b
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "contentInsets"  # Landroid/graphics/Rect;
    .param p2, "stableInsets"  # Landroid/graphics/Rect;

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 533
    return-void
.end method
