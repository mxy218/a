.class public abstract Lcom/android/systemui/biometrics/BiometricDialogView;
.super Landroid/widget/LinearLayout;
.source "BiometricDialogView.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field protected final mBiometricIcon:Landroid/widget/ImageView;

.field private mBundle:Landroid/os/Bundle;

.field protected final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field private mCompletedAnimatingIn:Z

.field protected final mDescriptionText:Landroid/widget/TextView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected final mDialog:Landroid/widget/LinearLayout;

.field private final mDialogWidth:F

.field private final mErrorColor:I

.field protected final mErrorText:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected final mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field protected final mNegativeButton:Landroid/widget/Button;

.field private mPendingDismissDialog:Z

.field protected final mPositiveButton:Landroid/widget/Button;

.field protected mRequireConfirmation:Z

.field private mRestoredState:Landroid/os/Bundle;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mSkipIntro:Z

.field private mState:I

.field protected final mSubtitleText:Landroid/widget/TextView;

.field protected final mTextColor:I

.field protected final mTitleText:Landroid/widget/TextView;

.field protected final mTryAgainButton:Landroid/widget/Button;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .registers 7

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 125
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    .line 160
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    .line 161
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 162
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 163
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 164
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    .line 165
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 166
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    .line 171
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 177
    sget v0, Lcom/android/systemui/R$layout;->biometric_dialog:I

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 178
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/systemui/biometrics/BiometricDialogView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$3;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->left_space:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->right_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->error:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button2:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    .line 210
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button1:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button_try_again:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getIconDescriptionResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 217
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 248
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/WindowManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/BiometricDialogView;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogView;)F
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    return p0
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 351
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected announceAccessibilityEvent()V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 568
    :cond_9
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 571
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 572
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p0, p0, v1}, Landroid/widget/LinearLayout;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public forceRemove()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method protected abstract getAuthenticatedAccessibilityResourceId()I
.end method

.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getHintStringResourceId()I
.end method

.method protected abstract getIconDescriptionResourceId()I
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 550
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const/high16 v4, 0x1000000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 556
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "BiometricDialogView"

    .line 557
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 558
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method protected abstract handleResetMessage()V
.end method

.method public synthetic lambda$new$0$BiometricDialogView(Landroid/view/View;)V
    .registers 3

    .line 221
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    goto :goto_f

    .line 224
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    goto :goto_14

    .line 222
    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :goto_14
    return-void
.end method

.method public synthetic lambda$new$1$BiometricDialogView()V
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method

.method public synthetic lambda$new$2$BiometricDialogView(Landroid/view/View;)V
    .registers 5

    const/4 p1, 0x4

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 230
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v1, p0

    .line 230
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$new$3$BiometricDialogView(Landroid/view/View;)V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    return-void
.end method

.method public synthetic lambda$setDismissesDialog$4$BiometricDialogView(Landroid/view/View;)V
    .registers 3

    .line 352
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->shouldGrayAreaDismissDialog()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 353
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_10
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 6

    .line 264
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 269
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->work_challenge_background:I

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 269
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 273
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_46

    :cond_3d
    const/4 v1, 0x0

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_dim_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 280
    :goto_46
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_5f

    .line 283
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-nez v0, :cond_9a

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v4, "negative_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v0

    if-eqz v0, :cond_90

    .line 291
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_96

    .line 295
    :cond_90
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :goto_96
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_9f

    .line 299
    :cond_9a
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 302
    :goto_9f
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "subtitle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_cc

    .line 309
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_d6

    .line 312
    :cond_cc
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_d6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v3, "description"

    .line 317
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 319
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_f7

    .line 322
    :cond_ed
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_f7
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_10b

    .line 327
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    :cond_10b
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    const/4 v3, 0x0

    if-nez v0, :cond_127

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    if-eqz v0, :cond_115

    goto :goto_127

    .line 341
    :cond_115
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_14c

    .line 333
    :cond_127
    :goto_127
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 338
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCompletedAnimatingIn:Z

    .line 345
    :goto_14c
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    .line 346
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 3

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCompletedAnimatingIn:Z

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    if-eqz v0, :cond_14

    const-string v0, "BiometricDialogView"

    const-string v1, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    :cond_14
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 475
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 478
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onHelpReceived(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const-string v1, "key_confirm_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const-string v1, "key_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v1, "key_error_text_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    const-string v0, "key_error_text_color"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public requiresConfirmation()Z
    .registers 1

    .line 433
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .registers 7

    .line 522
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    const-string v0, "key_try_again_visibility"

    .line 523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "key_confirm_visibility"

    .line 525
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 526
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v2, "key_confirm_enabled"

    .line 527
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 528
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v2, "key_state"

    .line 529
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 530
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v3, "key_error_text_string"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "key_error_text_visibility"

    .line 532
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 533
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x4

    if-eq v2, v3, :cond_51

    if-eq v0, v3, :cond_51

    if-ne v1, v3, :cond_54

    .line 536
    :cond_51
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    .line 538
    :cond_54
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "key_error_text_is_temporary"

    .line 539
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 540
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_73
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .registers 2

    .line 429
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return-void
.end method

.method public setSkipIntro(Z)V
    .registers 2

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 437
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    return-void
.end method

.method protected abstract shouldGrayAreaDismissDialog()Z
.end method

.method protected showTemporaryMessage(Ljava/lang/String;)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 450
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showTryAgainButton(Z)V
    .registers 2

    return-void
.end method

.method public startDismiss()V
    .registers 4

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCompletedAnimatingIn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    const-string v0, "BiometricDialogView"

    const-string/jumbo v2, "startDismiss(): waiting for onDialogAnimatedIn"

    .line 360
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    return-void

    .line 365
    :cond_10
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    .line 368
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$4;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 380
    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView$5;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract updateIcon(II)V
.end method

.method public updateState(I)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v0, :cond_3b

    .line 483
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    .line 487
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    .line 490
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_51

    :cond_3b
    if-ne p1, v1, :cond_51

    .line 493
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    :cond_51
    :goto_51
    if-eq p1, v0, :cond_55

    if-ne p1, v1, :cond_6b

    .line 500
    :cond_55
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 504
    :cond_6b
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateIcon(II)V

    .line 505
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return-void
.end method
