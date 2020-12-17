.class public Lcom/android/systemui/statusbar/phone/NavBarTintController;
.super Ljava/lang/Object;
.source "NavBarTintController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mCurrentMedianLuma:F

.field private final mHandler:Landroid/os/Handler;

.field private mLastMedianLuma:F

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private final mLuminanceChangeThreshold:F

.field private final mLuminanceThreshold:F

.field private final mNavBarHeight:I

.field private mNavBarMode:I

.field private final mNavColorSampleMargin:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mSamplingBounds:Landroid/graphics/Rect;

.field private mSamplingEnabled:Z

.field private final mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private mSamplingListenerRegistered:Z

.field private mUpdateOnNextDraw:Z

.field private final mUpdateSamplingListener:Ljava/lang/Runnable;

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    .line 51
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarTintController$2EUeUMrCltge35I4yojwTXFosWM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarTintController$2EUeUMrCltge35I4yojwTXFosWM;-><init>(Lcom/android/systemui/statusbar/phone/NavBarTintController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateSamplingListener:Ljava/lang/Runnable;

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;

    .line 70
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavBarTintController;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 81
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 82
    sget p2, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarHeight:I

    .line 83
    sget p2, Lcom/android/systemui/R$dimen;->navigation_handle_sample_horizontal_margin:I

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    .line 85
    sget p2, Lcom/android/systemui/R$dimen;->navigation_luminance_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceThreshold:F

    .line 86
    sget p2, Lcom/android/systemui/R$dimen;->navigation_luminance_change_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceChangeThreshold:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavBarTintController;F)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->updateTint(F)V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;I)Z
    .registers 2

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_e

    .line 210
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$2EUeUMrCltge35I4yojwTXFosWM(Lcom/android/systemui/statusbar/phone/NavBarTintController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->updateSamplingListener()V

    return-void
.end method

.method private requestUpdateSamplingListener()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSamplingListener()V
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 151
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {v0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    .line 154
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_51

    .line 155
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    .line 159
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    return-void

    .line 162
    :cond_3a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 164
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 163
    invoke-static {v0, v1, v2, p0}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V

    :cond_51
    return-void
.end method

.method private updateTint(F)V
    .registers 5

    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceChangeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceThreshold:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_22

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_28

    .line 180
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 182
    :goto_28
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    :cond_2a
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "NavBarTintController:"

    .line 196
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  navBar isAttached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  navBar isScValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_46

    :cond_44
    const-string v1, "false"

    .line 200
    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWindowVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onDraw()V
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    :cond_a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_57

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 134
    new-instance p4, Landroid/graphics/Rect;

    const/4 p5, 0x0

    aget p6, p2, p5

    iget p7, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    sub-int/2addr p6, p7

    iget p7, p3, Landroid/graphics/Point;->y:I

    iget p8, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarHeight:I

    sub-int/2addr p7, p8

    aget p2, p2, p5

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    add-int/2addr p2, p1

    iget p1, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p4, p6, p7, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    :cond_57
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method

.method public setWindowVisible(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method start()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method
