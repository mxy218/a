.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyButtonView"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDarkIntensity:F

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mHasOvalBg:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mIsVertical:Z

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 116
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    .line 91
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_keyCode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 128
    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_playSound:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    .line 130
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 131
    sget v2, Lcom/android/systemui/R$styleable;->KeyButtonView_android_contentDescription:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 132
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    .line 135
    :cond_47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string p2, "audio"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 141
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 142
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private sendEvent(IIJ)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 354
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    .line 355
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 356
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 357
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 358
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 354
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 360
    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_68

    const/16 v2, 0x80

    if-eq v1, v2, :cond_68

    .line 361
    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Back button event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    if-ne v2, v3, :cond_6a

    .line 363
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    and-int/lit8 v7, v1, 0x20

    if-nez v7, :cond_5f

    move v7, v3

    goto :goto_60

    :cond_5f
    move v7, v5

    :goto_60
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    goto :goto_6a

    :cond_68
    move/from16 v2, p1

    :cond_6a
    :goto_6a
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_70

    move v14, v3

    goto :goto_71

    :cond_70
    move v14, v5

    .line 368
    :goto_71
    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v13, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v18, v1, 0x40

    const/16 v19, 0x101

    move-object v7, v3

    move-wide/from16 v10, p3

    move/from16 v12, p1

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_9a

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v2

    .line 380
    :goto_9b
    const-class v6, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/bubbles/BubbleController;

    .line 381
    iget-object v7, v0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v6

    .line 382
    iget v7, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-ne v7, v4, :cond_b0

    if-eq v6, v2, :cond_b0

    move v1, v6

    :cond_b0
    if-eq v1, v2, :cond_b5

    .line 386
    invoke-virtual {v3, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 388
    :cond_b5
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 2

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->abortDelayedRipple()V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_3e

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 421
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 422
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 425
    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    int-to-float v4, v1

    int-to-float v6, v0

    .line 426
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 429
    :cond_3e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isClickable()Z
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .registers 4

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 174
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 179
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    if-eqz p1, :cond_12

    .line 182
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 188
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 189
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_22

    .line 190
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 192
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_22
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 229
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 231
    :cond_f
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_17

    .line 232
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    return v2

    :cond_17
    const/4 v3, 0x1

    if-eqz v1, :cond_bc

    const/16 v4, 0x20

    const/4 v5, 0x3

    if-eq v1, v3, :cond_6b

    const/4 v0, 0x2

    if-eq v1, v0, :cond_37

    if-eq v1, v5, :cond_26

    goto/16 :goto_f2

    .line 272
    :cond_26
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 273
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_30

    .line 274
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 276
    :cond_30
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f2

    .line 260
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 263
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v1

    .line 264
    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_61

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f2

    .line 267
    :cond_61
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f2

    .line 279
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_77

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_77

    move p1, v3

    goto :goto_78

    :cond_77
    move p1, v2

    .line 280
    :goto_78
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 285
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    if-eqz v0, :cond_89

    if-eqz p1, :cond_99

    .line 290
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 291
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_99

    .line 293
    :cond_89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_99

    .line 297
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_99

    if-eq v0, v5, :cond_99

    const/16 v0, 0x8

    .line 301
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 306
    :cond_99
    :goto_99
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_aa

    if-eqz p1, :cond_a6

    .line 308
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 309
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto :goto_b6

    .line 311
    :cond_a6
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_b6

    :cond_aa
    if-eqz p1, :cond_b6

    .line 315
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_b6

    .line 316
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 320
    :cond_b6
    :goto_b6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_f2

    .line 238
    :cond_bc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 239
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    .line 240
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    .line 245
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_de

    .line 246
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    :cond_de
    if-nez v0, :cond_e3

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 256
    :cond_e3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 257
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f2
    :goto_f2
    return v3
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 200
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_8

    .line 202
    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    :cond_8
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1b

    .line 208
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_1b

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v1, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 211
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    return v0

    :cond_1b
    const/16 v2, 0x20

    if-ne p1, v2, :cond_30

    .line 214
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_30

    const/16 p1, 0x80

    .line 215
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p1, 0x2

    .line 217
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v0

    .line 220
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public playSoundEffect(I)V
    .registers 3

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_5

    return-void

    .line 346
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .registers 5

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method public setCode(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 3

    .line 400
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    .line 402
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 404
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 407
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 409
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 329
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_6

    return-void

    .line 334
    :cond_6
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 336
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_20

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    :cond_20
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    goto :goto_2d

    .line 341
    :cond_2b
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    .line 340
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setType(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsVertical:Z

    return-void
.end method
