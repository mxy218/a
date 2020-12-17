.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlpha:Ljava/lang/Float;

.field private final mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mDelayTouchFeedback:Ljava/lang/Boolean;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mId:I

.field private mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    .line 74
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    .line 75
    const-class p1, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v2, :cond_1e

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->abortCurrentGesture()V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method addView(Landroid/view/View;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 91
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz v0, :cond_2f

    .line 92
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 94
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_41

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 100
    :cond_41
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v0, :cond_69

    .line 101
    check-cast p1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_52

    .line 103
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDarkIntensity(F)V

    .line 105
    :cond_52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_59

    .line 106
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v0, :cond_64

    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 111
    :cond_64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setVertical(Z)V

    :cond_69
    return-void
.end method

.method clear()V
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAlpha()F
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_b

    :cond_9
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_b
    return p0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return p0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-object p0
.end method

.method public getVisibility()I
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public synthetic lambda$new$0$ButtonDispatcher(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 5

    .line 275
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    return-void
.end method

.method public setAlpha(FZ)V
    .registers 4

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method

.method public setAlpha(FZJZ)V
    .registers 8

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    if-nez p5, :cond_8

    if-eqz p2, :cond_d

    .line 193
    :cond_8
    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 p5, 0x0

    if-eqz p2, :cond_50

    .line 196
    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v0

    aput v0, p2, p5

    const/4 p5, 0x1

    aput p1, p2, p5

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 199
    invoke-virtual {p2}, Lcom/android/systemui/assist/AssistManager;->getAssistHandleShowAndGoRemainingDurationMs()J

    move-result-wide v0

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6c

    .line 206
    :cond_50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    .line 207
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5c
    if-ge p5, p2, :cond_6c

    .line 209
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_5c

    :cond_6c
    :goto_6c
    return-void
.end method

.method public setAlpha(FZZ)V
    .registers 12

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_b

    const-wide/16 v0, 0x96

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0xfa

    :goto_d
    move-wide v5, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZJZ)V

    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .registers 3

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz p1, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 313
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz p1, :cond_23

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 315
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_23
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

    .line 215
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v2, :cond_24

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDarkIntensity(F)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method public setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .registers 5

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_25

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v1, :cond_22

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 143
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz p1, :cond_2e

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2e
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 5

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 252
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 235
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 5

    .line 267
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 5

    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 244
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setVertical(Z)V
    .registers 6

    .line 321
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1f

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 325
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v3, :cond_1c

    .line 326
    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setVertical(Z)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 150
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_10

    .line 151
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 154
    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, p1, :cond_33

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    return-void
.end method
