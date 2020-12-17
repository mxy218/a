.class public Lcom/android/systemui/biometrics/FaceDialogView;
.super Lcom/android/systemui/biometrics/BiometricDialogView;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;,
        Lcom/android/systemui/biometrics/FaceDialogView$IconController;
    }
.end annotation


# instance fields
.field private mDialogAnimatedIn:Z

.field private final mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

.field private mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

.field private mIconOriginalY:F

.field private mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 61
    new-instance p1, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;Lcom/android/systemui/biometrics/FaceDialogView$1;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    .line 149
    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$czD-cP2iyglsmecT6GyDucy4syc;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$czD-cP2iyglsmecT6GyDucy4syc;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance p1, Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/FaceDialogView;F)F
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/biometrics/FaceDialogView;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    return p1
.end method

.method private dpToPixels(F)F
    .registers 3

    .line 482
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p1, p0

    return p1
.end method

.method private updateSize(I)V
    .registers 9

    const/high16 v0, 0x41800000  # 16.0f

    .line 162
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_71

    .line 168
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 175
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_39
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 178
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_4a
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->calculateSmall()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->setOutlineY(F)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    .line 191
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto/16 :goto_10f

    .line 193
    :cond_71
    iget v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v0, :cond_f8

    if-ne p1, v3, :cond_f8

    const/4 p1, 0x2

    .line 194
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    new-array v2, p1, [F

    .line 197
    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    .line 198
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->calculateSmall()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 199
    new-instance v5, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$MYsjnJHs10NhJPXX4FLFafo9YY8;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$MYsjnJHs10NhJPXX4FLFafo9YY8;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, p1, [F

    aput v1, v5, v4

    .line 206
    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    aput v1, v5, v0

    .line 207
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 208
    new-instance v5, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$sSRypCm7hC9Of8-MaBum8gJxI9Q;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$sSRypCm7hC9Of8-MaBum8gJxI9Q;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, p1, [F

    const/high16 v6, 0x42000000  # 32.0f

    .line 215
    invoke-direct {p0, v6}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result v6

    aput v6, v5, v4

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 216
    new-instance v3, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$6DWEWGhnaIhNrLSCCr7Op0b0jD4;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$6DWEWGhnaIhNrLSCCr7Op0b0jD4;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    .line 223
    fill-array-data p1, :array_110

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 224
    new-instance v3, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$y85DatSeGK11aptJj_FqyvqURDw;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$y85DatSeGK11aptJj_FqyvqURDw;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x96

    .line 244
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 245
    new-instance v4, Lcom/android/systemui/biometrics/FaceDialogView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/FaceDialogView$1;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 270
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 271
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_10f

    .line 272
    :cond_f8
    iget v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    if-ne v0, v3, :cond_10f

    .line 273
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 278
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    :cond_10f
    :goto_10f
    return-void

    :array_110
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method protected getAuthenticatedAccessibilityResourceId()I
    .registers 1

    .line 385
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    if-eqz p0, :cond_8

    const p0, 0x104026a

    return p0

    :cond_8
    const p0, 0x104026b

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
    .registers 1

    const/16 p0, 0x1f4

    return p0
.end method

.method protected getHintStringResourceId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .registers 1

    .line 394
    sget p0, Lcom/android/systemui/R$string;->accessibility_face_dialog_face_icon:I

    return p0
.end method

.method protected handleResetMessage()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    return-void
.end method

.method public synthetic lambda$new$0$FaceDialogView()V
    .registers 3

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    return-void
.end method

.method public synthetic lambda$updateSize$1$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->setOutlineY(F)V

    .line 202
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    return-void
.end method

.method public synthetic lambda$updateSize$2$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 210
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public synthetic lambda$updateSize$3$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 217
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 218
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$updateSize$4$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 225
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 235
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 237
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 238
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_40
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .registers 2

    .line 353
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->showTryAgainButton(Z)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 2

    .line 463
    invoke-super {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onDialogAnimatedIn()V

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    .line 465
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->startPulsing()V

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .registers 3

    .line 343
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    .line 346
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x3

    .line 347
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :cond_c
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 317
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_12

    .line 318
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    .line 323
    :cond_12
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 p2, 0x1

    if-eqz p1, :cond_1d

    if-ne p1, p2, :cond_1c

    .line 328
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :cond_1c
    return-void

    .line 334
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result p1

    if-nez p1, :cond_27

    .line 335
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    goto :goto_2b

    :cond_27
    const/4 p1, 0x3

    .line 337
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :goto_2b
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .registers 4

    .line 284
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 285
    iget v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const-string v1, "key_dialog_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    const-string v0, "key_dialog_animated_in"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .registers 3

    .line 299
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "key_dialog_size"

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const-string v0, "key_dialog_animated_in"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    return-void
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .registers 2

    .line 475
    iget p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0
.end method

.method public showTryAgainButton(Z)V
    .registers 5

    const/16 v0, 0x8

    if-eqz p1, :cond_e

    .line 359
    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 v1, 0x3

    .line 362
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    goto :goto_1f

    :cond_e
    if-eqz p1, :cond_17

    .line 365
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1f

    .line 367
    :cond_17
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    :goto_1f
    if-eqz p1, :cond_29

    .line 373
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    :cond_29
    return-void
.end method

.method protected updateIcon(II)V
    .registers 10

    .line 399
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    iput p2, v0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mState:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v3, :cond_31

    .line 402
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    if-eqz v0, :cond_1b

    .line 404
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->startPulsing()V

    goto :goto_22

    .line 406
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->showIcon(I)V

    .line 408
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticating:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_10d

    :cond_31
    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne p1, v5, :cond_4b

    if-ne p2, v6, :cond_4b

    .line 411
    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_confirmed:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_10d

    :cond_4b
    if-ne p1, v4, :cond_65

    if-nez p2, :cond_65

    .line 415
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_error_to_idle:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_10d

    :cond_65
    if-ne p1, v4, :cond_86

    if-ne p2, v6, :cond_86

    .line 419
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_10d

    :cond_86
    if-ne p2, v4, :cond_a1

    .line 429
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 430
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_error:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10d

    :cond_a1
    if-ne p1, v3, :cond_ba

    if-ne p2, v6, :cond_ba

    .line 435
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10d

    :cond_ba
    if-ne p2, v5, :cond_d8

    .line 439
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_wink_from_dark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10d

    :cond_d8
    if-nez p2, :cond_ef

    .line 444
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_idle_static:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->showStatic(I)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10d

    .line 448
    :cond_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FaceDialogView"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    :goto_10d
    if-ne p1, v4, :cond_11f

    if-ne p2, v4, :cond_11f

    .line 456
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11f
    return-void
.end method
