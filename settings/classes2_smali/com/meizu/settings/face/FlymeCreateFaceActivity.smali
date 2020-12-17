.class public Lcom/meizu/settings/face/FlymeCreateFaceActivity;
.super Lcom/meizu/settings/MzDisplayCheckImplActivity;
.source "FlymeCreateFaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;
    }
.end annotation


# instance fields
.field private mAddFaceButton:Landroid/widget/TextView;

.field private mAddFaceDataLayout:Landroid/view/View;

.field private mAddFaceNoticeLayout:Landroid/view/View;

.field private mAddFaceSccuessImageView:Landroid/widget/ImageView;

.field private mAddFaceSuccessLayout:Landroid/view/View;

.field private mBackView:Lcom/meizu/settings/widget/TextAlphaAnimView;

.field private mCameraLoadingView:Lcom/meizu/settings/widget/CameraLoadingTextView;

.field private mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

.field private mCameraPreviewTextureSurface:Landroid/view/Surface;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCirclePreviewView:Lcom/meizu/settings/widget/CirclePreviewView;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mFaceAddNoticeView:Landroid/widget/TextView;

.field private mFaceAddSccussesButtonLayout:Landroid/widget/TextView;

.field private mFaceAddStateView:Landroid/widget/TextView;

.field private mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

.field private mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

.field private mFrameMarkRect:Landroid/graphics/Rect;

.field private mIsAddingFaceData:Z

.field private mIsFaceRegisterSuccessStep:Z

.field private mIsFinishAddingFaceData:Z

.field private mIsFromShopDemo:Z

.field private mNoticeSummaryView:Landroid/widget/TextView;

.field private mNoticesTextView:Lcom/meizu/settings/widget/TextAlphaAnimView;

.field private mPasswordConfirmed:Z

.field private mPreviewSize:Landroid/util/Size;

.field private mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

.field private mStartPauseTime:J

.field private mSuccessButtonClicked:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVerifyToken:[B

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarnCancelDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/MzDisplayCheckImplActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPasswordConfirmed:Z

    const-wide/16 v1, -0x1

    .line 93
    iput-wide v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFrameMarkRect:Landroid/graphics/Rect;

    const/4 v1, 0x2

    .line 102
    iput v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayState:I

    .line 104
    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    iput-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    .line 253
    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;)V

    iput-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    .line 596
    new-instance v0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceNoticeLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceDataLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceSuccessLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->handleFinishAddingFaceData()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/widget/TextView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddNoticeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Vibrator;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/View;Landroid/view/View;Z)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->startViewVisibilityAnimation(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showCameraOpenFailedDialog()V

    return-void
.end method

.method static synthetic access$2102(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/util/Size;)Landroid/util/Size;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/content/Context;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->cancelCreateFaceState()V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->startFaceRecognitionNoticesActivity()V

    return-void
.end method

.method static synthetic access$2502(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mSuccessButtonClicked:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->handleCancleAddingFace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showFaceRecognitionTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->reportFlymeCreateFaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Display;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/meizu/settings/face/FlymeCreateFaceActivity;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayState:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CameraLoadingTextView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraLoadingView:Lcom/meizu/settings/widget/CameraLoadingTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCirclePreviewView:Lcom/meizu/settings/widget/CirclePreviewView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    return p0
.end method

.method static synthetic access$602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)[B
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mVerifyToken:[B

    return-object p0
.end method

.method private cancelCreateFaceState()V
    .registers 3

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    .line 622
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    if-eqz v1, :cond_1e

    .line 623
    invoke-interface {v1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    .line 624
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endEnroll()V

    .line 625
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->closeHardwareDevice()Z

    .line 626
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1e

    .line 627
    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    const/4 v1, 0x0

    .line 628
    iput-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    .line 631
    :cond_1e
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    .line 632
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    .line 633
    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->updateNeedCreateFaceState(Z)V

    return-void
.end method

.method private checkPasswordConfirm()V
    .registers 9

    .line 527
    iget-wide v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_18

    .line 529
    iput-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPasswordConfirmed:Z

    .line 532
    :cond_18
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPasswordConfirmed:Z

    if-nez v0, :cond_32

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/meizu/settings/MzSettingsActivity$MzConfirmPasswordActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "password_from"

    .line 535
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 537
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    iput-wide v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    :cond_32
    return-void
.end method

.method private finishOnShopDemoVersion()V
    .registers 3

    .line 347
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFromShopDemo:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mSuccessButtonClicked:Z

    if-nez v0, :cond_15

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.CLEAR_FACE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_15
    return-void
.end method

.method private handleCancleAddingFace(Ljava/lang/String;)V
    .registers 5

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cancel_reason"

    .line 504
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFromShopDemo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    if-eqz v1, :cond_22

    .line 506
    iget-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mSuccessButtonClicked:Z

    if-eqz p1, :cond_1b

    .line 507
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->startLockScreen()V

    goto :goto_44

    .line 509
    :cond_1b
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_44

    .line 512
    :cond_22
    iget-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    if-eqz v1, :cond_2a

    .line 513
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showWarnDialog(Ljava/lang/String;)V

    goto :goto_44

    .line 514
    :cond_2a
    iget-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    if-eqz v1, :cond_36

    const/4 p1, -0x1

    .line 515
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_44

    .line 517
    :cond_36
    iget-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    if-eqz v1, :cond_3e

    .line 518
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showWarnDialog(Ljava/lang/String;)V

    goto :goto_44

    .line 520
    :cond_3e
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_44
    return-void
.end method

.method private handleFinishAddingFaceData()V
    .registers 5

    .line 728
    iget v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    const/4 v0, 0x1

    .line 729
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    const/4 v1, 0x0

    .line 730
    iput-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    .line 731
    iput-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    const-string v2, "mz_face_unlock"

    .line 733
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v2, "mz_face_unlock_app"

    .line 734
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v2, "mz_face_unlock_document"

    .line 735
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->setFaceUnlock(ZLjava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_face_unlock_screen_launcher"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 739
    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->setFaceUnlock(ZLjava/lang/String;)V

    .line 741
    :cond_31
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "FlymeCreateFaceActivity"

    if-nez v1, :cond_45

    .line 742
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    .line 743
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/meizu/settings/face/FaceUtil;->reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 745
    :cond_45
    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->updateNeedCreateFaceState(Z)V

    const-string v1, "add face success!"

    .line 746
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering_status"

    const-string v2, "value"

    .line 747
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->reportFlymeCreateFaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method private initCreatFaceTipsViews()V
    .registers 4

    const v0, 0x7f0a028d

    .line 438
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceNoticeLayout:Landroid/view/View;

    const v0, 0x7f0a0286

    .line 439
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceDataLayout:Landroid/view/View;

    const v0, 0x7f0a0293

    .line 440
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceSuccessLayout:Landroid/view/View;

    const v0, 0x7f0a0143

    .line 441
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/CameraLoadingTextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraLoadingView:Lcom/meizu/settings/widget/CameraLoadingTextView;

    const v0, 0x7f0a0740

    .line 442
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    .line 443
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setSurfaceTextureAvailableListener(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;)V

    const v0, 0x7f0a017b

    .line 459
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/CirclePreviewView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCirclePreviewView:Lcom/meizu/settings/widget/CirclePreviewView;

    const v0, 0x7f0a0284

    .line 460
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceSccuessImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0296

    .line 462
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddStateView:Landroid/widget/TextView;

    const v0, 0x7f0a0297

    .line 463
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddNoticeView:Landroid/widget/TextView;

    const v0, 0x7f0a0145

    .line 465
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCancelButton:Landroid/widget/TextView;

    .line 466
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCancelButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00dd

    .line 467
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/TextAlphaAnimView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mBackView:Lcom/meizu/settings/widget/TextAlphaAnimView;

    .line 468
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mBackView:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fa

    .line 470
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/TextAlphaAnimView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticesTextView:Lcom/meizu/settings/widget/TextAlphaAnimView;

    .line 471
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticesTextView:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a005e

    .line 473
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceButton:Landroid/widget/TextView;

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mAddFaceButton:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0060

    .line 483
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddSccussesButtonLayout:Landroid/widget/TextView;

    .line 484
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddSccussesButtonLayout:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onTextViewCLickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bf

    .line 485
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticeSummaryView:Landroid/widget/TextView;

    .line 486
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFromShopDemo:Z

    if-eqz v0, :cond_10b

    .line 487
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticesTextView:Lcom/meizu/settings/widget/TextAlphaAnimView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticeSummaryView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mNoticeSummaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v2, 0x7f1206b0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceAddSccussesButtonLayout:Landroid/widget/TextView;

    const v0, 0x7f1206b2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_10b
    return-void
.end method

.method private initValues()V
    .registers 5

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "bind_face_recognition_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    iput-boolean v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFromShopDemo:Z

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password_confirmed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPasswordConfirmed:Z

    const-string v0, "vibrator"

    .line 418
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 420
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 422
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    .line 424
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 425
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplay:Landroid/view/Display;

    .line 426
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private initViews()V
    .registers 2

    .line 430
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar;->hide()V

    .line 431
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setDecorViewBackground(Landroid/app/Activity;)V

    .line 432
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->disableLayoutAboveInputMethod(Landroid/app/Activity;)V

    .line 434
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->initCreatFaceTipsViews()V

    return-void
.end method

.method private onTextViewCLickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 217
    new-instance v0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    return-object v0
.end method

.method private reportFlymeCreateFaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 754
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p2, "FlymeCreateFaceActivity"

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private setFaceUnlock(ZLjava/lang/String;)V
    .registers 3

    .line 494
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showCameraOpenFailedDialog()V
    .registers 4

    .line 642
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120440

    .line 643
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1209ef

    const/4 v2, 0x0

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 646
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$10;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$10;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFaceRecognitionTimeoutDialog()V
    .registers 4

    .line 657
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    if-nez v0, :cond_3e

    .line 658
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_33

    .line 659
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120d62

    .line 661
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120f9e

    .line 662
    new-instance v2, Lcom/meizu/settings/face/FlymeCreateFaceActivity$11;

    invoke-direct {v2, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$11;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

    .line 687
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 689
    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 690
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFaceRecongnitionErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3e
    return-void
.end method

.method private showWarnDialog(Ljava/lang/String;)V
    .registers 5

    .line 544
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    if-eqz v0, :cond_10

    .line 546
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endEnroll()V

    .line 549
    :cond_10
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFaceRegisterSuccessStep:Z

    if-eqz v0, :cond_15

    return-void

    .line 553
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    .line 554
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 558
    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120d64

    .line 561
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v1, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120442

    .line 571
    new-instance v2, Lcom/meizu/settings/face/FlymeCreateFaceActivity$7;

    invoke-direct {v2, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$7;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120d9b

    .line 580
    new-instance v2, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    .line 593
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFaceRecognitionNoticesActivity()V
    .registers 4

    .line 637
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    .line 638
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startLockScreen()V
    .registers 4

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lock_reason"

    const-string v2, "faceUnlock"

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startViewVisibilityAnimation(Landroid/view/View;Landroid/view/View;Z)V
    .registers 8

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 698
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 699
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 700
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    .line 701
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x0

    .line 702
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 703
    new-instance v2, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;

    invoke-direct {v2, p0, p3, p2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 p0, 0x8

    .line 721
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 722
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_39
    return-void
.end method

.method private updateNeedCreateFaceState(Z)V
    .registers 3

    .line 498
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_management_added_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const-wide/16 v0, -0x1

    const-string p3, "FlymeCreateFaceActivity"

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1e

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mPasswordConfirmed:Z

    const-string p1, "onActivityResult RESULT_OK"

    .line 401
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iput-wide v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    goto :goto_29

    .line 404
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "onActivityResult finish"

    .line 405
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_1e
    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_29

    const-string p1, "on FaceRecognitionNoticesActivity finish"

    .line 408
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-wide v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    :cond_29
    :goto_29
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const-string v0, "back"

    .line 361
    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->handleCancleAddingFace(Ljava/lang/String;)V

    const-string p0, "FlymeCreateFaceActivity"

    const-string v0, "onBackPressed"

    .line 362
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 257
    invoke-super {p0, p1}, Lcom/meizu/settings/MzDisplayCheckImplActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 258
    invoke-virtual {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->setHasWhiteNavigationbar(Z)V

    const p1, 0x7f0d01e8

    .line 259
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    :try_start_13
    const-string p1, "Hello World"

    const-string v0, "UTF-8"

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mVerifyToken:[B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 265
    :catch_1d
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->initValues()V

    .line 266
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->initViews()V

    const-string p0, "FlymeCreateFaceActivity"

    const-string p1, "onCreate "

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 379
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    .line 381
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mWarnCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 384
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 386
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->getHaveFaceData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    .line 388
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering_status"

    const-string v2, "value"

    .line 387
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->reportFlymeCreateFaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 390
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering_fail_reason"

    const-string v2, "entering_face_data"

    .line 389
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->reportFlymeCreateFaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    const-string p0, "FlymeCreateFaceActivity"

    const-string v0, "onDestroy"

    .line 393
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    .line 368
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->cancelCreateFaceState()V

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cancel_reason"

    const-string v2, "back"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 374
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .registers 5

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 319
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    if-eqz v0, :cond_13

    .line 320
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endEnroll()V

    .line 323
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    .line 324
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    const-string v1, "FlymeCreateFaceActivity"

    if-eqz v0, :cond_31

    .line 325
    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->closeHardwareDevice()Z

    .line 326
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2c

    .line 327
    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTextureSurface:Landroid/view/Surface;

    :cond_2c
    const-string v0, "onPause destroy surface"

    .line 330
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    .line 333
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mStartPauseTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "finish_add_face"

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    return-void
.end method

.method protected onResume()V
    .registers 7

    .line 272
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mStartPauseTime 1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeCreateFaceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->checkPasswordConfirm()V

    .line 275
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsAddingFaceData:Z

    if-eqz v0, :cond_54

    .line 276
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setAspectRatio()V

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCameraPreviewTexture:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-virtual {v2}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setSurfaceTextureDefaultBufferSize()V

    .line 280
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mCirclePreviewView:Lcom/meizu/settings/widget/CirclePreviewView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/settings/widget/CirclePreviewView;->setProgress(I)V

    .line 283
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/graphics/SurfaceTexture;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mStartPauseTime 2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mStartPauseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 306
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    iget-boolean p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mIsFinishAddingFaceData:Z

    const-string v0, "finish_add_face"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 356
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 340
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->mRunTimeout:Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->finishOnShopDemoVersion()V

    const-string p0, "FlymeCreateFaceActivity"

    const-string v0, "onStop"

    .line 343
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
