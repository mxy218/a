.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z


# instance fields
.field private mAssistHintBlocked:Z

.field private mAssistHintVisible:Z

.field private mBottomOverlay:Landroid/view/View;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mInGesturalMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReceivingNavBarColor:Z

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultBottom:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultTop:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsReceivingNavBarColor:Z

    .line 451
    new-instance v0, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;I)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method private fade(Landroid/view/View;ZZ)V
    .registers 19

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz p2, :cond_76

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v10, 0x3f800000  # 1.0f

    .line 217
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 223
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const v3, 0x3f8ccccd  # 1.1f

    const-wide/16 v5, 0x2ee

    .line 224
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ee66666  # 0.45f

    const v12, 0x3f2b851f  # 0.67f

    invoke-direct {v7, v9, v0, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 226
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3  # 0.33f

    invoke-direct {v14, v0, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f8ccccd  # 1.1f

    const v3, 0x3f7851ec  # 0.97f

    const-wide/16 v5, 0x190

    move-object v0, p0

    move-object v7, v14

    .line 227
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    const v2, 0x3f7851ec  # 0.97f

    const v3, 0x3f828f5c  # 1.02f

    .line 229
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v10

    const v2, 0x3f828f5c  # 1.02f

    const/high16 v3, 0x3f800000  # 1.0f

    .line 231
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 233
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 235
    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 236
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_95

    .line 238
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000  # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_95
    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ScreenDecorOverlayBottom"

    .line 731
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 732
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v1, 0x3

    if-ne p0, v1, :cond_12

    goto :goto_17

    :cond_12
    const/16 p0, 0x55

    .line 736
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1b

    :cond_17
    :goto_17
    const/16 p0, 0x33

    .line 734
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1b
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .registers 2

    .line 654
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-gtz v0, :cond_f

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-lez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private hideAssistHandles()V
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v1, :cond_37

    .line 523
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    :cond_37
    return-void
.end method

.method private isLandscape(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method private setSize(Landroid/view/View;I)V
    .registers 3

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 778
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 779
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 780
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupDecorations()V
    .registers 1

    return-void
.end method

.method private setupStatusBarPadding(I)V
    .registers 5

    .line 680
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_f

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_3b

    .line 683
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "sysui_rounded_content_padding"

    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 686
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 687
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->status_bar:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string v1, "CollapsedStatusBarFragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 689
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string p1, "QS"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_3b
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_11

    .line 673
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    :cond_11
    return-void
.end method

.method private shouldDrawCutout()Z
    .registers 1

    .line 658
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .registers 2

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111007f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldHostHandles()Z
    .registers 1

    .line 324
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return p0
.end method

.method private startOnScreenDecorationsThread()V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 329
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldHostHandles()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 332
    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 335
    :cond_2c
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateAssistantHandleViews()V
    .registers 13

    .line 594
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 597
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 599
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    goto :goto_27

    :cond_26
    const/4 v4, 0x4

    .line 601
    :goto_27
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v6, 0xb4

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x53

    const/16 v10, 0x8

    if-nez v5, :cond_48

    .line 602
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 605
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 606
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 607
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_89

    :cond_48
    const/4 v11, 0x1

    if-ne v5, v11, :cond_5e

    .line 609
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 610
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 612
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 613
    invoke-direct {p0, v1, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 614
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_89

    :cond_5e
    const/4 v11, 0x3

    if-ne v5, v11, :cond_74

    .line 616
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 617
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 618
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 619
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 620
    invoke-direct {p0, v0, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 621
    invoke-direct {p0, v1, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_89

    :cond_74
    const/4 v11, 0x2

    if-ne v5, v11, :cond_89

    .line 623
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 624
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 625
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 627
    invoke-direct {p0, v0, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 628
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    :cond_89
    :goto_89
    return-void
.end method

.method private updateColorInversion(I)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_6

    :cond_4
    const/high16 p1, -0x1000000

    .line 467
    :goto_6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 470
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 471
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 472
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method private updateLayoutParams()V
    .registers 4

    .line 742
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .registers 4

    .line 498
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 499
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_42

    return-void

    .line 504
    :cond_42
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 505
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_5b

    .line 506
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 508
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_53

    goto :goto_5b

    .line 509
    :cond_53
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    const/4 p0, 0x0

    throw p0

    :cond_5b
    :goto_5b
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_rounded_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 534
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->mz_rounded_corner_radius_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 536
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->mz_rounded_corner_radius_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 539
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v3, v0, :cond_33

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v3, v2, :cond_33

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v3, v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v3, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v3, 0x1

    :goto_34
    if-eqz v3, :cond_43

    .line 544
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 545
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 546
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_rounded_size"

    .line 547
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .registers 4

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p0, p3

    .line 634
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateViews()V
    .registers 15

    .line 552
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 555
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 558
    invoke-virtual {v0, v4}, Landroid/view/View;->actInMzNightMode(I)V

    .line 559
    invoke-virtual {v1, v4}, Landroid/view/View;->actInMzNightMode(I)V

    .line 560
    invoke-virtual {v2, v4}, Landroid/view/View;->actInMzNightMode(I)V

    .line 561
    invoke-virtual {v3, v4}, Landroid/view/View;->actInMzNightMode(I)V

    .line 564
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v6, 0xb4

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x53

    const/16 v10, 0x5a

    const/16 v11, 0x35

    const/16 v12, 0x33

    if-eqz v5, :cond_6f

    const/4 v13, 0x1

    if-eq v5, v13, :cond_62

    const/4 v13, 0x3

    if-eq v5, v13, :cond_55

    const/4 v13, 0x2

    if-ne v5, v13, :cond_7b

    .line 580
    invoke-direct {p0, v0, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 581
    invoke-direct {p0, v1, v11, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 582
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 583
    invoke-direct {p0, v3, v12, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_7b

    .line 575
    :cond_55
    invoke-direct {p0, v0, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 576
    invoke-direct {p0, v1, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 577
    invoke-direct {p0, v2, v12, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 578
    invoke-direct {p0, v3, v11, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_7b

    .line 570
    :cond_62
    invoke-direct {p0, v0, v12, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 571
    invoke-direct {p0, v1, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 572
    invoke-direct {p0, v2, v11, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 573
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_7b

    .line 565
    :cond_6f
    invoke-direct {p0, v0, v12, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 566
    invoke-direct {p0, v1, v11, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 567
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 568
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 586
    :cond_7b
    :goto_7b
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateAssistantHandleViews()V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method private updateWindowVisibilities()V
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .registers 6

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    sget v0, Lcom/android/systemui/R$id;->display_cutout:I

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 645
    :goto_17
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result p0

    .line 646
    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_35

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    .line 647
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :cond_35
    :goto_35
    if-nez v0, :cond_3e

    if-nez p0, :cond_3e

    if-eqz v1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x8

    .line 649
    :cond_3e
    :goto_3e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .registers 16

    const/high16 p0, 0x3f800000  # 1.0f

    const/high16 v0, 0x40000000  # 2.0f

    .line 192
    invoke-static {v0, p0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 193
    invoke-static {v0, p0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 194
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput p0, v3, v5

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 195
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v4

    aput p0, v6, v5

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v1, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    .line 196
    invoke-static {v3, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    .line 197
    invoke-static {v3, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    if-eqz p4, :cond_37

    const/4 p4, -0x1

    goto :goto_38

    :cond_37
    move p4, v5

    .line 199
    :goto_38
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    int-to-float p4, p4

    mul-float v6, p4, p2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v3, v4

    mul-float/2addr p4, p3

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p4, v6

    aput p4, v3, v5

    .line 199
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 202
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    aput p2, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    aput p3, v2, v5

    .line 202
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 205
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 206
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 208
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 209
    invoke-virtual {p2, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    invoke-virtual {p2, p7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 696
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 706
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 709
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v0, :cond_1f

    .line 710
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1f
    const-string v0, "ScreenDecorOverlay"

    .line 713
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    goto :goto_32

    :cond_2d
    const/16 v0, 0x33

    .line 718
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_36

    :cond_32
    :goto_32
    const/16 v0, 0x55

    .line 716
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_36
    const/4 v0, 0x1

    .line 720
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 721
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, -0x2

    .line 722
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    .line 723
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 725
    :cond_47
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method handleNavigationModeChange(I)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 168
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 171
    :cond_17
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eq v0, p1, :cond_33

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    .line 175
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez p1, :cond_33

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz p1, :cond_33

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_33
    return-void
.end method

.method public synthetic lambda$handleNavigationModeChange$0$ScreenDecorations(I)V
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->handleNavigationModeChange(I)V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$4$ScreenDecorations()V
    .registers 2

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_16

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 487
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_1d
    return-void
.end method

.method public synthetic lambda$onDarkIntensity$6$ScreenDecorations(F)V
    .registers 2

    .line 786
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->onDarkIntensity(F)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$5$ScreenDecorations(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 749
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "sysui_rounded_size"

    .line 750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 751
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 752
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 753
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eqz p2, :cond_1f

    .line 756
    :try_start_16
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :catch_1f
    :cond_1f
    if-nez v0, :cond_22

    move v0, p1

    :cond_22
    if-nez v1, :cond_25

    goto :goto_26

    :cond_25
    move p1, v1

    .line 768
    :goto_26
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 769
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 770
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 771
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_52
    return-void
.end method

.method public synthetic lambda$setAssistHintBlocked$2$ScreenDecorations(Z)V
    .registers 2

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintBlocked(Z)V

    return-void
.end method

.method public synthetic lambda$setAssistHintVisible$1$ScreenDecorations(Z)V
    .registers 2

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 478
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDarkIntensity(F)V
    .registers 5

    .line 785
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 786
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;-><init>(Lcom/android/systemui/ScreenDecorations;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 789
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 790
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 791
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 793
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 794
    invoke-virtual {v1, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 797
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_4f

    .line 798
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 800
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CornerHandleView;

    .line 803
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    :cond_4f
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$mdf60Bg4ecef-imWHJ4lSsesAIU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$mdf60Bg4ecef-imWHJ4lSsesAIU;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAssistHintBlocked(Z)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 306
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 310
    :cond_17
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 311
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz p1, :cond_24

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz p1, :cond_24

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hideAssistHandles()V

    :cond_24
    return-void
.end method

.method public setAssistHintVisible(Z)V
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 254
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 258
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    return-void

    .line 265
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-nez v1, :cond_27

    goto :goto_90

    .line 269
    :cond_27
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eq v1, p1, :cond_8d

    .line 270
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    .line 272
    sget p1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/CornerHandleView;

    .line 279
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_83

    if-eq v3, v5, :cond_78

    const/4 v2, 0x2

    if-eq v3, v2, :cond_6d

    const/4 v1, 0x3

    if-eq v3, v1, :cond_62

    goto :goto_8d

    .line 293
    :cond_62
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 294
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_8d

    .line 289
    :cond_6d
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 290
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_8d

    .line 285
    :cond_78
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 286
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_8d

    .line 281
    :cond_83
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 282
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 298
    :cond_8d
    :goto_8d
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    :cond_90
    :goto_90
    return-void
.end method

.method public start()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    .line 159
    const-class v0, Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 160
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 161
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 160
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 318
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 320
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
