.class public Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MzGlobalActionsDialog"
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x1f4L

.field private static final ANIM_IN_DURATION:J = 0x12cL

.field private static final BUTTON_ANIM_DURATION:J = 0x12cL

.field private static final DISMISS_DIAlOG_DELAYED_TIME:I = 0x320

.field private static final MESSAGE_MZ_DISMISS:I = 0x0

.field private static final MESSAGE_MZ_FADEOUT:I = 0x1


# instance fields
.field ai:Landroid/view/animation/AccelerateInterpolator;

.field private d:Landroid/view/Display;

.field di:Landroid/view/animation/DecelerateInterpolator;

.field private dm:Landroid/util/DisplayMetrics;

.field private mAttached:Z

.field private mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonView:Landroid/view/View;

.field private mButtonWFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field mButtons:Landroid/widget/LinearLayout;

.field mContainer:Landroid/widget/LinearLayout;

.field private mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mEmergencyButton:Landroid/widget/ImageButton;

.field private mFadeInSet:Landroid/animation/AnimatorSet;

.field private mFadeOutSet:Landroid/animation/AnimatorSet;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimtor:Landroid/animation/ObjectAnimator;

.field mMzRecevier:Landroid/content/BroadcastReceiver;

.field private mOutAnimtor:Landroid/animation/ObjectAnimator;

.field mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

.field mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

.field private mSwitchUserGapView:Landroid/view/View;

.field mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lcom/android/server/policy/MzGlobalActions;

.field private window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "theme"  # I

    .line 168
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    .line 169
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 199
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    .line 636
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
    .param p1, "x1"  # Z

    .line 166
    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
    .param p1, "x1"  # Ljava/lang/Runnable;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->confirmPassword(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->startAnim2()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private checkUserSwitcher()V
    .registers 4

    .line 584
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserGapView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa100070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa060047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    goto :goto_46

    .line 592
    :cond_3a
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserGapView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setVisibility(I)V

    .line 595
    :goto_46
    return-void
.end method

.method private confirmPassword(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "endRunnable"  # Ljava/lang/Runnable;

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "confirm":Z
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->needConfirm()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 542
    const-string v1, "MzGlobalActions"

    const-string v2, "confirm password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x1

    .line 546
    :cond_f
    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 547
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    new-instance v3, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    new-instance v4, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;

    invoke-direct {v4, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 559
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setAlpha(F)V

    .line 560
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4c

    .line 568
    :cond_38
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_49

    .line 569
    :cond_42
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    :cond_49
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 574
    :goto_4c
    return-void
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 604
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 605
    :catch_9
    move-exception v0

    .line 606
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .line 598
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 599
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method private needConfirm()Z
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 578
    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->hasFlymeAccount()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 579
    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFindPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 580
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 577
    :goto_2b
    return v0
.end method

.method private prepareAnimators()V
    .registers 9

    .line 835
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_178

    const-string v3, "blurAlpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 837
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 838
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 840
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-array v2, v1, [F

    fill-array-data v2, :array_180

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 842
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 843
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 845
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_188

    const-string v3, "Alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 847
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 848
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_190

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 852
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 853
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_198

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 857
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 858
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 860
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_1a0

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 862
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 863
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 865
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_1a8

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 867
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 868
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 870
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    new-array v2, v1, [F

    fill-array-data v2, :array_1b0

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 872
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 873
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 875
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v2, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1b8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/MzGlobalActions;->access$2102(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 877
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$2100(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 878
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$2100(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 884
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    .line 885
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$14;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$14;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 914
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    .line 915
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonWFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 917
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->access$1602(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 950
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1600(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->access$2100(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1600(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 972
    return-void

    nop

    :array_178
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_180
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_188
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_190
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_198
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1a0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1a8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1b0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1b8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private showLandscape()V
    .registers 8

    .line 241
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 242
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 244
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 245
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 247
    .local v1, "screen_w":I
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 248
    .local v2, "screen_h":I
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 251
    .local v3, "rot":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3e

    .line 252
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_44

    .line 254
    :cond_3e
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 256
    :goto_44
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 259
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 260
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    return-void
.end method

.method private showPortrit()V
    .registers 7

    .line 267
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 268
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 270
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 271
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 273
    .local v1, "screen_w":I
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 274
    .local v2, "screen_h":I
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 275
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 276
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 277
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 280
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 281
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 285
    return-void
.end method

.method private startAnim2()V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1600(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 634
    return-void
.end method

.method private switchView(I)V
    .registers 3
    .param p1, "witch"  # I

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(IZ)V

    .line 612
    return-void
.end method

.method private switchView(IZ)V
    .registers 8
    .param p1, "witch"  # I
    .param p2, "withAnim"  # Z

    .line 614
    const/4 v0, 0x1

    if-eqz p2, :cond_26

    if-nez p1, :cond_6

    goto :goto_26

    .line 618
    :cond_6
    if-ne p1, v0, :cond_3e

    .line 619
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$11;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3e

    .line 615
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p1, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v3

    :goto_30
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    if-ne p1, v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v3

    :goto_3b
    invoke-virtual {v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    .line 629
    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 808
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"  # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 291
    const v0, 0xa0d0013

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setContentView(I)V

    .line 292
    const v0, 0xa0a0060

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 293
    const v0, 0xa0a005f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    .line 294
    const v0, 0xa0a0077

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserGapView:Landroid/view/View;

    .line 295
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/16 v1, 0x7e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 297
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 298
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, "blurBackground":Landroid/view/SurfaceView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBlurBehind(Z)V

    .line 302
    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f400000  # 0.75f

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v2, v5}, Landroid/view/SurfaceView;->setBlurAttrs(FFFF)V

    .line 303
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    .line 304
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const-string v4, "MzGlobalActions"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 306
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 314
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 315
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 316
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, v2, Lcom/android/server/policy/MzGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 317
    sget-object v2, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    sget-object v2, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 319
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    .line 320
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    .line 321
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 322
    const/16 v5, 0x202

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 324
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;

    invoke-direct {v5, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 384
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 421
    const v2, 0xa0a0075

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 422
    const v2, 0xa0a0074

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 423
    const v2, 0xa0a0076

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 424
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    const v5, 0xa0a005b

    invoke-virtual {p0, v5}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/FlymeConfirmPasswordView;

    iput-object v5, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 425
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initValues()V

    .line 426
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa10006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa060046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 432
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa10006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa060047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 437
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v1, 0xa0a005d

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    .line 509
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 526
    .local v1, "mzFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v2, "com.meizu.font.change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 533
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->prepareAnimators()V

    .line 534
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.meizu.keyguard.dismissfingerprint"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->access$1202(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;

    .line 535
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.meizu.keyguard.showfingerprint"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->access$1302(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.meizu.keyguard.shutdown_or_reboot"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->access$1002(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;

    .line 537
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 814
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 815
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 816
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 818
    :cond_11
    return v1

    .line 820
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 6

    .line 685
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 686
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions;->access$1200(Lcom/android/server/policy/MzGlobalActions;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    if-eqz v0, :cond_1d

    .line 688
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initValues()V

    .line 690
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfirm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions;->access$1700(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1700(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    .line 692
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 693
    invoke-direct {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(I)V

    .line 694
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-direct {p0, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->confirmPassword(Ljava/lang/Runnable;)V

    .line 708
    return-void

    .line 710
    :cond_53
    invoke-direct {p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(I)V

    .line 712
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const/16 v3, 0x8

    if-eqz v0, :cond_62

    .line 713
    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_62
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->access$1900(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 714
    :cond_6a
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    const v4, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 715
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 716
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 717
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserGapView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/MzCustomCircleButton;->setVisibility(I)V

    goto :goto_aa

    .line 721
    :cond_8c
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->checkUserSwitcher()V

    .line 722
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 725
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 726
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mSwitchUserView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 728
    :goto_aa
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 729
    .local v0, "Config":I
    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 730
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c2

    .line 731
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showLandscape()V

    goto :goto_c5

    .line 733
    :cond_c2
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showPortrit()V

    .line 758
    :goto_c5
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/MzGlobalActions;->access$2000(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_d0

    goto :goto_d1

    :cond_d0
    move v2, v3

    :goto_d1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 760
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 767
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 768
    return-void
.end method

.method public show()V
    .registers 3

    .line 825
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 828
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 829
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 831
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 832
    return-void
.end method
