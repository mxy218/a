.class public Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;
.super Lcom/meizu/settings/MzDisplayCheckImplActivity;
.source "FlymeCreateFPActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;
    }
.end annotation


# instance fields
.field private mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

.field private mContentText:Ljava/lang/String;

.field private mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

.field private mContentTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mContentView:Landroid/widget/TextView;

.field private mCurrentPercent:F

.field private mDefalutFpImageView:Landroid/widget/ImageView;

.field private mEnrollFailedCount:I

.field private mEnrollFingerprintState:I

.field private mEnrollStartTime:J

.field private mEnrolledFailedDialog:Landroid/app/AlertDialog;

.field private mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

.field private mFingerprintDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

.field private mFingerprintId:I

.field private mFingerprintPathView:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

.field private mFingerprintSideImageView:Landroid/widget/ImageView;

.field private mFistStepLayout:Landroid/view/View;

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mFromSetupWizard:Z

.field private mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

.field private mHeadText:Ljava/lang/String;

.field private mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHeadTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHeadView:Landroid/widget/TextView;

.field private mIsShopDemoVersion:Z

.field private mLastPercent:F

.field private mOkayButton:Landroid/widget/Button;

.field private mPasswordConfirmeShow:Z

.field private mPasswordConfirmed:Z

.field private mPowserManager:Landroid/os/PowerManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondStepLayout:Landroid/view/View;

.field private mShowMultiTaskReceiver:Landroid/content/BroadcastReceiver;

.field private mTextAnimationSet:Landroid/view/animation/AnimationSet;

.field private mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

.field private mToken:[B

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarnCancelDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/MzDisplayCheckImplActivity;-><init>()V

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    .line 78
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    .line 101
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmeShow:Z

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintId:I

    .line 108
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    .line 113
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->vibrate(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/View;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFistStepLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mLastPercent:F

    return p1
.end method

.method static synthetic access$1302(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startSecondStepAnimation(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mDefalutFpImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->drawFingerprintPath(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1908(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I
    .registers 3

    .line 56
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFailedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFailedCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startHeadTextAnimation(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startContentTextAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/view/View;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startTextInVisibleAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/widget/TextAlphaAnimView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->reportEnrollDetail(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->handleShopDemoFeature()V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Z
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isFingerprintEnrolling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showEnrolledFailedDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->finishFromScreenOff()V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->resetFingerprintEnrolled()V

    return-void
.end method

.method static synthetic access$3100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/animation/AnimationSet;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/View;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->handleCancleAddingFP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->dismissCancelDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/os/PowerManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPowserManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startTipsEnrollFingerSideLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    return-object p0
.end method

.method private canShowEnrollFodTipsDialog()Z
    .registers 3

    .line 1016
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "can_show_enroll_fod_tips_dlg"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private checkPasswordConfirm()V
    .registers 4

    .line 323
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    if-nez v0, :cond_25

    .line 324
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmeShow:Z

    if-nez v0, :cond_25

    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$MzConfirmPasswordActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "password_from"

    .line 327
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "create_fingerprint"

    .line 329
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 330
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmeShow:Z

    :cond_25
    return-void
.end method

.method private createTextAnimation()V
    .registers 14

    .line 705
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x180

    const/4 v3, 0x1

    if-nez v0, :cond_29

    .line 706
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f7d70a4  # 0.99f

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f7d70a4  # 0.99f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000  # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 708
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 709
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 711
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3ecccccd  # 0.4f

    if-nez v0, :cond_43

    .line 712
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

    .line 713
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 714
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 716
    :cond_43
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_7c

    .line 717
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    .line 718
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 719
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextOpaqueAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 720
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 721
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 722
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    const v1, 0x10a0006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 724
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTextAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 748
    :cond_7c
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    const v1, 0x10a0005

    const-wide/16 v6, 0xc8

    if-nez v0, :cond_9f

    .line 749
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    .line 750
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 751
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 756
    :cond_9f
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_bd

    .line 757
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    .line 758
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 759
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 761
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    :cond_bd
    return-void
.end method

.method private dismissCancelDialog()V
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 700
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_f
    return-void
.end method

.method private drawFingerprintPath(I)V
    .registers 4

    .line 616
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mLastPercent:F

    int-to-float v0, p1

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    .line 617
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    .line 618
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 619
    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    .line 622
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintPathView:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->setPercentage(I)V

    return-void
.end method

.method private finishFromScreenOff()V
    .registers 4

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cancel_for_screenoff"

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleCancleAddingFP(Ljava/lang/String;)V
    .registers 5

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cancel_reason"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintId:I

    const-string v2, "extra_binded_fp_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 244
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isFingerprintEnrolling()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 245
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showCancelFingerprintEnrollDialog(Ljava/lang/String;)V

    goto :goto_59

    .line 246
    :cond_22
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isEnrollFingerprintFinished()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish enroll ,set result :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FlymeCreateFPActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 248
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 250
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFromSetupWizard:Z

    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    goto :goto_59

    :cond_4d
    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 254
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFromSetupWizard:Z

    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    :goto_59
    return-void
.end method

.method private handleShopDemoFeature()V
    .registers 5

    .line 962
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mIsShopDemoVersion:Z

    if-nez v0, :cond_5

    return-void

    .line 966
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "bind_fingerprint_from"

    .line 967
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    if-eqz v0, :cond_54

    .line 970
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isEnrollFingerprintFinished()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 971
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0a02b8

    .line 972
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 973
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, -0x1000000

    .line 975
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f0a02b7

    .line 976
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 977
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$15;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$15;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_54
    return-void
.end method

.method private initContinueButton()V
    .registers 3

    const v0, 0x7f0a0145

    .line 217
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/TextAlphaAnimView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    const v0, 0x7f0a07b5

    .line 218
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    .line 219
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFingerPrintTipsViews()V
    .registers 3

    const v0, 0x7f0a0679

    .line 142
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/AnimationVideoView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    const v0, 0x7f0a0064

    .line 143
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    const v0, 0x7f0a005d

    .line 144
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    const v0, 0x7f0a02b2

    .line 145
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintPathView:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    const v0, 0x7f0a02bc

    .line 146
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFistStepLayout:Landroid/view/View;

    const v0, 0x7f0a0630

    .line 147
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    const v0, 0x7f0a02a9

    .line 148
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mDefalutFpImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a02b1

    .line 149
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintSideImageView:Landroid/widget/ImageView;

    .line 151
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startFingerprintSensorAnimation()V

    .line 152
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->createTextAnimation()V

    .line 153
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->initContinueButton()V

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mDefalutFpImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->setForUnderGlassFP()V

    return-void
.end method

.method private initValues()V
    .registers 5

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extra_from_shopdemo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mIsShopDemoVersion:Z

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mToken:[B

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "password_confirmed"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from_setupwizard"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFromSetupWizard:Z

    .line 174
    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const-string v0, "power"

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPowserManager:Landroid/os/PowerManager;

    const-string v0, "vibrator"

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mVibrator:Landroid/os/Vibrator;

    .line 177
    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method private initViews()V
    .registers 2

    .line 128
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar;->hide()V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->disableHomeKey(Landroid/view/Window;)V

    .line 131
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setDecorViewBackground(Landroid/app/Activity;)V

    .line 132
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->disableLayoutAboveInputMethod(Landroid/app/Activity;)V

    .line 134
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->initFingerPrintTipsViews()V

    .line 136
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFromSetupWizard:Z

    if-eqz v0, :cond_26

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    :cond_26
    return-void
.end method

.method private isEnrollFingerprintFinished()Z
    .registers 2

    .line 231
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private isFingerprintEnrolling()Z
    .registers 2

    .line 235
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private registeUserPresentReceiver()V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerShowMultiTaskReceiver()V
    .registers 5

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.recents.action.CANCEL_GESTURE_VIEW"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.recents.action.SHOW_GESTURE_VIEW"

    .line 263
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mShowMultiTaskReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1a

    .line 265
    new-instance v3, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mShowMultiTaskReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    :cond_1a
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mShowMultiTaskReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reportEnrollDetail(Z)V
    .registers 9

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFailedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "input_time"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "input_duration"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_40

    const-string p1, "1"

    goto :goto_42

    :cond_40
    const-string p1, "0"

    :goto_42
    const-string v1, "is_success"

    .line 630
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fingerprint_count"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p1, "input_fingerprint"

    const-string v1, "FlymeCreateFPActivity"

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private resetFingerprintEnrolled()V
    .registers 5

    .line 670
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mToken:[B

    invoke-interface {v0, v1, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startEnroll(Landroid/os/Handler;[B)V

    const/4 v0, 0x1

    .line 671
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    const/4 v1, 0x0

    .line 672
    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCurrentPercent:F

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mLastPercent:F

    .line 673
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintPathView:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->setPercentage(I)V

    .line 676
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    const v3, 0x7f120d8a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 677
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    const v3, 0x7f121637

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 678
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintSideImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->canShowEnrollFodTipsDialog()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3d

    .line 680
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    goto :goto_42

    .line 682
    :cond_3d
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    .line 692
    :goto_42
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 693
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 695
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setForUnderGlassFP()V
    .registers 5

    .line 990
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const/4 v0, 0x0

    .line 991
    invoke-static {p0, v0}, Lcom/meizu/settings/utils/StatusbarColorUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 992
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 993
    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->setNavigationBarDarIcon(Landroid/app/Activity;Z)V

    const v2, 0x7f0a00fd

    .line 995
    invoke-virtual {p0, v2}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mDefalutFpImageView:Landroid/widget/ImageView;

    const v3, 0x7f08011e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 997
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFistStepLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1000
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    const v1, 0x7f120d8a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1001
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f121637

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1002
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1003
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1005
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1006
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const v1, 0x7f080405

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1007
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mCancelButton:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1009
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintSideImageView:Landroid/widget/ImageView;

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1011
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showEnrolledUnderGlassFpTipsDialog()V

    return-void
.end method

.method private showCancelFingerprintEnrollDialog(Ljava/lang/String;)V
    .registers 5

    .line 937
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 938
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 942
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120d9c

    .line 944
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120d9a

    .line 945
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 946
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120d9b

    .line 947
    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 957
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    .line 958
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEnrolledFailedDialog(Ljava/lang/String;)V
    .registers 4

    .line 637
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 638
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 641
    :cond_f
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 642
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 647
    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f120f9e

    .line 650
    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$4;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$5;

    invoke-direct {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$5;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    .line 666
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEnrolledUnderGlassFpTipsDialog()V
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->canShowEnrollFodTipsDialog()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    .line 1024
    :cond_11
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    .line 1026
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1207fc

    .line 1028
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1207fd

    .line 1029
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1207fb

    .line 1030
    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;

    invoke-direct {v2, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1039
    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    .line 1048
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startContentTextAnimation(Ljava/lang/String;)V
    .registers 3

    .line 792
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentText:Ljava/lang/String;

    .line 793
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez p1, :cond_14

    .line 794
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$8;

    invoke-direct {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$8;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 810
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 812
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startFingerprintSensorAnimation()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/side_fingerprint_demo"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/AnimationVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method private startHeadTextAnimation(I)V
    .registers 3

    .line 767
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadText:Ljava/lang/String;

    .line 768
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez p1, :cond_18

    .line 769
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;

    invoke-direct {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 785
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 788
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadTextTransprarntAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startSecondStepAnimation(I)V
    .registers 6

    .line 905
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->drawFingerprintPath(I)V

    .line 908
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    const v0, 0x7f120d8a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 909
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    const v0, 0x7f120d8b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 910
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 911
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 912
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 913
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    .line 914
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 915
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 916
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$13;

    invoke-direct {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$13;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 932
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mSecondStepLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startTextInVisibleAnimation(Landroid/view/View;)V
    .registers 5

    .line 816
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v1, 0x10a0005

    .line 818
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 820
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 821
    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$9;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 836
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startTipsEnrollFingerSideLayout()V
    .registers 8

    .line 840
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintSideImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintSideImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 842
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 844
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xa0

    .line 845
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$10;

    invoke-direct {v6, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$10;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 854
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 855
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;

    invoke-direct {v3, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 864
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 866
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    const v3, 0x7f1207f8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 867
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mTipsEnrollFingerSideInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    invoke-direct {v2, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    .line 868
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 899
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    return-void
.end method

.method private unregisteUserPresentReceiver()V
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private vibrate(Z)V
    .registers 4

    .line 399
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3d

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmeShow:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3a

    const-string p1, "hw_auth_token"

    .line 303
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mToken:[B

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onActivityResult, mToken:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mToken:[B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeCreateFPActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    .line 306
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 307
    :cond_36
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->resetFingerprintEnrolled()V

    goto :goto_3d

    .line 310
    :cond_3a
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->finishFromScreenOff()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 191
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isFingerprintEnrolling()Z

    move-result v0

    const-string v1, "back"

    if-eqz v0, :cond_c

    .line 192
    invoke-direct {p0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showCancelFingerprintEnrollDialog(Ljava/lang/String;)V

    goto :goto_13

    .line 194
    :cond_c
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mIsShopDemoVersion:Z

    if-nez v0, :cond_13

    .line 195
    invoke-direct {p0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->handleCancleAddingFP(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 182
    invoke-super {p0, p1}, Lcom/meizu/settings/MzDisplayCheckImplActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01ee

    .line 183
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 184
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->initValues()V

    .line 185
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->initViews()V

    .line 186
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->registeUserPresentReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 357
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 359
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->unregisteUserPresentReceiver()V

    .line 361
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFingerprintDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    if-eqz p0, :cond_d

    .line 362
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->release()V

    :cond_d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 386
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .registers 2

    .line 346
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 348
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endEnroll()V

    .line 350
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isEnrollFingerprintFinished()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 282
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 284
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->isEnrollFingerprintFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 286
    :cond_a
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mPasswordConfirmed:Z

    if-eqz v0, :cond_25

    .line 287
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFailedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 288
    :cond_18
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->resetFingerprintEnrolled()V

    .line 289
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_25

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    .line 294
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollStartTime:J

    .line 295
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->checkPasswordConfirm()V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 377
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeCreateFPActivity"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->registerShowMultiTaskReceiver()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 368
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    .line 370
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mShowMultiTaskReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeCreateFPActivity"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mHandler:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1e

    .line 205
    iget p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrollFingerprintState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    .line 207
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->canShowEnrollFodTipsDialog()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mEnrolledFodWarmTipsDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_24

    .line 208
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    goto :goto_24

    .line 211
    :cond_1e
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    :cond_24
    :goto_24
    return-void
.end method
