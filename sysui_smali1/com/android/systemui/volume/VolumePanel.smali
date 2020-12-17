.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$VolumeIndex;,
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;,
        Lcom/android/systemui/volume/VolumePanel$PointF;,
        Lcom/android/systemui/volume/VolumePanel$extendValue;,
        Lcom/android/systemui/volume/VolumePanel$PointXYWH;,
        Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;,
        Lcom/android/systemui/volume/VolumePanel$showHideValue;,
        Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;,
        Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final EXTEND_STREAM:[I

.field private static final EXTEND_STREAM_BTSCO:[I

.field private static final EXTEND_STREAM_VOICE:[I

.field private static LOGD:Z = true

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mDisableSafeMediaVolumeTime:J

.field private static mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final CANCEL_CLICK_MOVE_THRESHOLD_FACTOR:F

.field private final INVALID_XY_VALUE:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private mAdjustCount:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBackground:Landroid/view/View;

.field private mBlurBackground:Landroid/view/SurfaceView;

.field private mBottom:I

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private mDialogDimAmount:F

.field private mDisabledAlpha:F

.field private mDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExtendValueAnimator:Landroid/animation/ValueAnimator;

.field private mIsCutOutScreen:Z

.field private mIsInLongPressWithVolumeChange:Z

.field private mLTView:Landroid/view/View;

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private mLastVibrateTime:J

.field private mLeft:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mPanelLeftRightPadding:I

.field private mPanelShadowWidth:I

.field private mPanelWrapper:Landroid/view/View;

.field private final mPlayMasterStreamTones:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRBView:Landroid/view/View;

.field private mRight:I

.field private mRingIsSilent:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mSeekListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

.field private mSeekbarLayoutHeight:I

.field private mSeekbarLayoutWidth:I

.field private mShadowBackground:Landroid/view/View;

.field private mShowHideValueAnimator:Landroid/animation/ValueAnimator;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDialog:Landroid/app/Dialog;

.field private final mSubSliderPanel:Landroid/view/ViewGroup;

.field private mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

.field private final mSubTopPanel:Landroid/view/ViewGroup;

.field private mSupportFlymeVibrate:Z

.field private final mTag:Ljava/lang/String;

.field private mTimeOutThreadId:J

.field private mTimeOutTime:I

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mTop:I

.field private final mTopPanel:Landroid/view/ViewGroup;

.field private mVibrateExpireTime:J

.field private mVibrateThread:Ljava/lang/Thread;

.field private mVibrateThreadLock:Ljava/lang/Object;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mViewGroupItemHeight:I

.field private mViewGroupItemWidth:I

.field private mVoiceCapable:Z

.field private mVolumeIndexArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/volume/VolumePanel$VolumeIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumePanelState:I

.field private mVolumeTitleHeight:I

.field private final mVolumeTitleTv:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWmParams:Landroid/view/WindowManager$LayoutParams;

.field private mZenModeAvailable:Z

.field private mZenPanelExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 172
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 173
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0xd

    .line 174
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 377
    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AccessibilityStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SubStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 417
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    new-array v0, v3, [I

    .line 1198
    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_BTSCO:[I

    new-array v0, v3, [I

    .line 1202
    fill-array-data v0, :array_7a

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_VOICE:[I

    new-array v0, v4, [I

    .line 1206
    fill-array-data v0, :array_82

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    return-void

    :array_72
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_82
    .array-data 4
        0x3
        0x2
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 518
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    const/16 v2, 0x5dc

    .line 193
    iput v2, v0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    const/4 v2, 0x2

    .line 195
    iput v2, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    const/4 v3, 0x0

    .line 196
    iput v3, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    const/4 v4, -0x1

    .line 249
    iput v4, v0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const v5, 0x3c97b426

    .line 1120
    iput v5, v0, Lcom/android/systemui/volume/VolumePanel;->CANCEL_CLICK_MOVE_THRESHOLD_FACTOR:F

    .line 1188
    iput v3, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    const/16 v5, -0x2710

    .line 1309
    iput v5, v0, Lcom/android/systemui/volume/VolumePanel;->INVALID_XY_VALUE:I

    .line 2928
    new-instance v5, Lcom/android/systemui/volume/VolumePanel$21;

    invoke-direct {v5, v0}, Lcom/android/systemui/volume/VolumePanel$21;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    .line 2955
    new-instance v5, Lcom/android/systemui/volume/VolumePanel$22;

    invoke-direct {v5, v0}, Lcom/android/systemui/volume/VolumePanel$22;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 3045
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeIndexArrayList:Ljava/util/ArrayList;

    .line 3109
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThreadLock:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "VolumePanel"

    aput-object v6, v5, v3

    .line 519
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%s.%08x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 520
    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    .line 522
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "accessibility"

    .line 523
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 535
    sget-boolean v6, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_79

    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v8, "new VolumePanel"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const/high16 v6, 0x3f000000  # 0.5f

    .line 537
    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 538
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    if-eqz v6, :cond_a1

    .line 539
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v8, v7, [I

    const v9, 0x1010033

    aput v9, v8, v3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 541
    iget v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v6, v3, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 542
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 545
    :cond_a1
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 546
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 547
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 548
    invoke-virtual {v6, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 549
    iget v6, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v6, v8, :cond_c7

    .line 550
    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    .line 551
    iput v8, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    goto :goto_cb

    .line 553
    :cond_c7
    iput v8, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    .line 554
    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    .line 557
    :goto_cb
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3e19999a  # 0.15f

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    .line 558
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3dd82d83

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    .line 559
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3efd27d2

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    .line 560
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3e527d28

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    .line 561
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3f1f49f5

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    .line 562
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3d4ccccd  # 0.05f

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    .line 563
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    const v8, 0x3d638e39

    mul-float/2addr v6, v8

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    .line 565
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 574
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 581
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$3;

    invoke-direct {v6, v0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const-string v6, "layout_inflater"

    .line 598
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 601
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$4;

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 618
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, v0, Lcom/android/systemui/volume/VolumePanel;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 620
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 621
    sget v8, Lcom/android/systemui/R$layout;->volume_panel:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 622
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    iget-object v10, v0, Lcom/android/systemui/volume/VolumePanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v10, Lcom/android/systemui/R$id;->panel_blur_bg:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mBlurBackground:Landroid/view/SurfaceView;

    .line 628
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mBlurBackground:Landroid/view/SurfaceView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 630
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v10, Lcom/android/systemui/R$id;->top_panel:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    .line 631
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->actInMzNightMode(I)V

    .line 632
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 633
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->panel_bg:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    .line 634
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->panel_shadow_bg:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mShadowBackground:Landroid/view/View;

    .line 635
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->panel_wrapper:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelWrapper:Landroid/view/View;

    .line 636
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->visible_panel:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 637
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->volume_title:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    .line 638
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    sget v11, Lcom/android/systemui/R$id;->slider_group:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 639
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 641
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, v0, Lcom/android/systemui/volume/VolumePanel;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v8, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 643
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v11, 0x0

    .line 644
    invoke-virtual {v8, v11}, Landroid/view/Window;->setElevation(F)V

    .line 645
    invoke-virtual {v8, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v12, 0x33

    .line 646
    invoke-virtual {v8, v12}, Landroid/view/Window;->setGravity(I)V

    .line 647
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    invoke-virtual {v8, v2}, Landroid/view/Window;->clearFlags(I)V

    const v13, 0x1000208

    .line 649
    invoke-virtual {v8, v13}, Landroid/view/Window;->addFlags(I)V

    .line 652
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 653
    iput-object v9, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v14, 0x7e4

    .line 654
    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 655
    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 656
    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 657
    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 658
    iput v11, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const-string v4, "display"

    .line 660
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 661
    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    const/high16 v15, 0x20000000

    .line 663
    invoke-virtual {v4}, Landroid/view/Display;->getFlags()I

    move-result v16

    and-int v16, v16, v15

    if-eqz v16, :cond_22f

    .line 664
    iput-boolean v7, v0, Lcom/android/systemui/volume/VolumePanel;->mIsCutOutScreen:Z

    .line 665
    iput v7, v13, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 668
    :cond_22f
    invoke-virtual {v8, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 671
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$5;

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    .line 688
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    iget-object v13, v0, Lcom/android/systemui/volume/VolumePanel;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v13}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 689
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 690
    sget v8, Lcom/android/systemui/R$layout;->volume_panel_sub:I

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 691
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 692
    sget v8, Lcom/android/systemui/R$id;->top_panel:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    .line 693
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->actInMzNightMode(I)V

    .line 694
    sget v8, Lcom/android/systemui/R$id;->slider_group:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubSliderPanel:Landroid/view/ViewGroup;

    .line 695
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubSliderPanel:Landroid/view/ViewGroup;

    const/high16 v10, 0x41f00000  # 30.0f

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 696
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubSliderPanel:Landroid/view/ViewGroup;

    const/high16 v10, -0x51000000

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setOutlineSpotShadowColor(I)V

    .line 697
    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 699
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    iget-object v8, v0, Lcom/android/systemui/volume/VolumePanel;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 700
    iget-object v6, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 701
    invoke-virtual {v6, v11}, Landroid/view/Window;->setElevation(F)V

    .line 702
    invoke-virtual {v6, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 703
    invoke-virtual {v6, v12}, Landroid/view/Window;->setGravity(I)V

    .line 704
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    invoke-virtual {v6, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x1040208

    .line 706
    invoke-virtual {v6, v2}, Landroid/view/Window;->addFlags(I)V

    .line 710
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 711
    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 712
    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    .line 713
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 714
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 715
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 716
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 718
    invoke-virtual {v4}, Landroid/view/Display;->getFlags()I

    move-result v4

    and-int/2addr v4, v15

    if-eqz v4, :cond_2bd

    .line 719
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 722
    :cond_2bd
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 725
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    .line 726
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 727
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x28

    .line 728
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 730
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 731
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 732
    new-instance v2, Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mLTView:Landroid/view/View;

    .line 734
    new-instance v2, Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mRBView:Landroid/view/View;

    .line 737
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const-string/jumbo v2, "vibrator"

    .line 738
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11100f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    const-string v2, "power"

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x11100ef

    .line 749
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 750
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->hasFlymeFeature()Z

    move-result v1

    if-eqz v1, :cond_324

    .line 753
    iput-boolean v7, v0, Lcom/android/systemui/volume/VolumePanel;->mSupportFlymeVibrate:Z

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->initStreamTypeVolumeIndex()V

    .line 757
    :cond_324
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    return-void
.end method

.method public static F2I(F)I
    .registers 5

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private PointXYWHCopy(Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;)V
    .registers 3

    .line 1504
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    iput p0, p2, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    .line 1505
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    iput p0, p2, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    .line 1506
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    iput p0, p2, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    .line 1507
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    iput p0, p2, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    return-void
.end method

.method static synthetic access$002(J)J
    .registers 2

    .line 117
    sput-wide p0, Lcom/android/systemui/volume/VolumePanel;->mDisableSafeMediaVolumeTime:J

    return-wide p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;)V
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->printAllLayout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHideState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->removeLTRBView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumePanel;J)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    .line 117
    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 117
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->PointXYWHCopy(Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mAdjustCount:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->adjustVolumePanelPos()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumePanel;)Landroid/widget/TextView;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumePanel;FZ)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->setWindowDimAmount(FZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    return p0
.end method

.method static synthetic access$4802(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    return p1
.end method

.method static synthetic access$4820(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 3

    .line 117
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumePanel;)J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutThreadId:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/android/systemui/volume/VolumePanel;J)J
    .registers 3

    .line 117
    iput-wide p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutThreadId:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumePanel;)J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateExpireTime:J

    return-wide v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/Object;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/VolumePanel;)Landroid/os/Vibrator;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)Z
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/VolumePanel;I)I
    .registers 2

    .line 117
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private addLTRBView()V
    .registers 4

    .line 821
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 822
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mLTView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 824
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mRBView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustVolumePanelPos()V
    .registers 4

    .line 3016
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAdjustCount:I

    if-lez v0, :cond_41

    add-int/lit8 v0, v0, -0x1

    .line 3017
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAdjustCount:I

    .line 3018
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->hasAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateScreenLTRBMargin()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "adjustVolumePanelPos"

    .line 3019
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateLayoutParams(Ljava/lang/String;)V

    .line 3021
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VP_DEBUG] adjustVolumePanelPos: mAdjustCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAdjustCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 3022
    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_41
    return-void
.end method

.method private announceDialogShown()V
    .registers 2

    .line 2524
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private cancelAllAnimation()V
    .registers 2

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1468
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1469
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_27
    return-void
.end method

.method private checkAnimateSetProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V
    .registers 7

    .line 1998
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result v0

    mul-int/lit8 p2, p2, 0x64

    .line 2000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG_VP] checkAnimateSetProgress: streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; oldProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; newProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p2, :cond_9c

    if-nez p3, :cond_90

    .line 2002
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_90

    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_90

    .line 2004
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_51

    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->animTargetProgress:I

    if-ne p0, p2, :cond_51

    return-void

    .line 2009
    :cond_51
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    const/4 p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_73

    .line 2010
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    new-array v2, v2, [I

    aput v0, v2, v1

    aput p2, v2, p3

    const-string p3, "progress"

    invoke-static {p0, p3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    .line 2011
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_81

    .line 2013
    :cond_73
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2014
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [I

    aput v0, v2, v1

    aput p2, v2, p3

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 2016
    :goto_81
    iput p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->animTargetProgress:I

    .line 2017
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x78

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2018
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_9c

    .line 2021
    :cond_90
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_97

    .line 2022
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2024
    :cond_97
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private checkExtendStreamType(I)Z
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x6

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_11

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x5

    if-ne p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private checkHideStreamName()Z
    .registers 3

    .line 1446
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1447
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1448
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1449
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->getLocaleLanguage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh-HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return p0
.end method

.method private checkVibrateForVolumeChange(IIZZ)V
    .registers 12

    .line 3063
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSupportFlymeVibrate:Z

    if-nez v0, :cond_5

    return-void

    .line 3064
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeIndexArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;

    const/4 v0, 0x0

    if-eqz p4, :cond_12

    move v1, v0

    goto :goto_14

    :cond_12
    const/16 v1, 0x78

    .line 3068
    :goto_14
    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->index:I

    const-string v3, "RAISE_TO_MAX"

    const/16 v4, 0x7923

    const-string v5, "LOWER_TO_MIN"

    const/16 v6, 0x7926

    if-eq v2, p2, :cond_3f

    .line 3069
    iget p4, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->min:I

    if-ne p2, p4, :cond_29

    .line 3072
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    :goto_26
    move-object v3, v5

    move v4, v6

    goto :goto_50

    .line 3073
    :cond_29
    iget p4, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->max:I

    if-ne p2, p4, :cond_30

    .line 3076
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    goto :goto_50

    :cond_30
    if-eqz p3, :cond_4d

    .line 3078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v2, 0x64

    add-long/2addr p3, v2

    iput-wide p3, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateExpireTime:J

    .line 3079
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->startLongPressVibrateThread()V

    goto :goto_4d

    :cond_3f
    if-nez p4, :cond_4d

    if-nez p3, :cond_4d

    .line 3082
    iget p3, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->min:I

    if-ne p2, p3, :cond_48

    goto :goto_26

    .line 3085
    :cond_48
    iget p3, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->max:I

    if-ne p2, p3, :cond_4d

    goto :goto_50

    :cond_4d
    :goto_4d
    const-string v3, "CHANGE_WITH_LONG_PRESS"

    move v4, v0

    :goto_50
    if-lez v4, :cond_5c

    const/16 p3, 0x1b

    .line 3091
    invoke-virtual {p0, p3, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    int-to-long v0, v1

    invoke-virtual {p0, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3093
    :cond_5c
    iput p2, p1, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->index:I

    return-void
.end method

.method private clearRemoteStreamController()V
    .registers 3

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1a

    const/16 v1, -0xc8

    .line 2605
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_1a

    .line 2607
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1a

    .line 2608
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 p0, 0x0

    .line 2609
    iput-object p0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    :cond_1a
    return-void
.end method

.method private createSliders()V
    .registers 13

    .line 994
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 998
    new-instance v2, Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x0

    move v3, v2

    .line 1000
    :goto_1c
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v5, v4

    if-ge v3, v5, :cond_126

    .line 1001
    aget-object v4, v4, v3

    .line 1003
    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1005
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    .line 1006
    iput v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 1007
    sget v8, Lcom/android/systemui/R$layout;->volume_panel_item:I

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1009
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1010
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v9, Lcom/android/systemui/R$id;->stream_icon:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1011
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1012
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1013
    iget v8, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1014
    iget v8, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1015
    iget v8, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendRes:I

    iput v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendRes:I

    .line 1016
    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendMuteRes:I

    iput v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendMuteRes:I

    .line 1017
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1019
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v8, Lcom/android/systemui/R$id;->stream_tv:I

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    .line 1020
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->checkExtendStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 1021
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/volume/VolumePanel;->updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    :cond_89
    const/16 v4, 0x8

    const/16 v8, -0x12c

    const/4 v9, 0x1

    if-ne v5, v8, :cond_a4

    .line 1024
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1025
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1027
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    :cond_a4
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v11, Lcom/android/systemui/R$id;->seekbar_layout:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    .line 1059
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v11, Lcom/android/systemui/R$id;->seekbar:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/meizu/common/widget/VerticalSeekBar;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    .line 1061
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x64

    invoke-virtual {v10, v11}, Lcom/meizu/common/widget/AbsSeekBar;->setMax(I)V

    .line 1062
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v10, v11}, Lcom/meizu/common/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;)V

    .line 1063
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;

    invoke-direct {v11, p0, v6, v7}, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Lcom/android/systemui/volume/VolumePanel$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1064
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v10, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1065
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v11, Lcom/android/systemui/R$id;->seekbar_bg:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    if-ne v5, v8, :cond_ee

    .line 1067
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :cond_ee
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-direct {v8, p0, v10, v7}, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/meizu/common/widget/VerticalSeekBar;Lcom/android/systemui/volume/VolumePanel$1;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1070
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    sget v7, Lcom/android/systemui/R$id;->panel_item:I

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    .line 1071
    iget-object v4, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1072
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v4, v4

    sub-int/2addr v4, v9

    if-ne v3, v4, :cond_11d

    .line 1073
    iput-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1074
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSubSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_122

    .line 1076
    :cond_11d
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_122
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c

    .line 1079
    :cond_126
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateViewsLayout()V

    .line 1080
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->initAnimation()V

    return-void
.end method

.method private fillAndUpdateExtendSliders(I)V
    .registers 12

    .line 1237
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    .line 1239
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isInCommunicationWithMusicActive()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_14

    .line 1240
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_VOICE:[I

    if-ne p1, v2, :cond_11

    .line 1242
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_BTSCO:[I

    :cond_11
    move-object v1, v0

    move v0, v4

    goto :goto_1a

    :cond_14
    if-eqz p1, :cond_18

    if-ne p1, v2, :cond_11

    :cond_18
    move-object v1, v0

    move v0, v3

    .line 1248
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const-string v5, "VolumePanel"

    if-nez v0, :cond_5b

    .line 1251
    :try_start_26
    array-length v6, v1

    sub-int/2addr v6, v3

    :goto_28
    if-ltz v6, :cond_5b

    .line 1252
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    aget v8, v1, v6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v7, :cond_4d

    .line 1254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSliderByExtendStream: missing stream type! - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1256
    :cond_4d
    aget v8, v1, v6

    if-eq v8, p1, :cond_58

    .line 1257
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v7, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_58
    :goto_58
    add-int/lit8 v6, v6, -0x1

    goto :goto_28

    .line 1262
    :cond_5b
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_62} :catch_63

    goto :goto_7c

    :catch_63
    move-exception p1

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillAndUpdateExtendSliders: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_7c
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v4

    :goto_83
    const/high16 v5, 0x3f800000  # 1.0f

    if-ge v1, p1, :cond_e2

    .line 1270
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1271
    iget v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v7

    .line 1272
    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v8

    .line 1273
    iget-object v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v9}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v9

    mul-int/lit8 v7, v7, 0x64

    if-eq v9, v7, :cond_ae

    .line 1274
    iget-object v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v9, v7}, Lcom/meizu/common/widget/AbsSeekBar;->setMax(I)V

    .line 1276
    :cond_ae
    invoke-direct {p0, v6, v8, v3}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    .line 1277
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1278
    iget v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v7

    invoke-direct {p0, v6, v7, v4}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1279
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1280
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1281
    iget-object v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1282
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->checkHideStreamName()Z

    move-result v5

    if-eqz v5, :cond_da

    iget-object v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_df

    .line 1283
    :cond_da
    iget-object v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_df
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 1285
    :cond_e2
    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-ne p1, v3, :cond_f4

    .line 1286
    iget-object p1, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_f4

    .line 1289
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_f4
    return-void
.end method

.method private forceTimeout(J)V
    .registers 6

    .line 2911
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2913
    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v1, "HideVolumeService"

    .line 2914
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "dismissVolumeDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2915
    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "forceTimeout: dismiss without animation for screenshot & StatusBar.dismissVolumeDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    .line 2916
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2917
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_4f
    const/4 v0, 0x5

    .line 2920
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2921
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getStreamMaxVolume(I)I
    .registers 3

    const/16 v0, -0x64

    if-eq p1, v0, :cond_2f

    const/16 v0, -0x12c

    if-ne p1, v0, :cond_9

    goto :goto_2f

    :cond_9
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_28

    .line 932
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz p0, :cond_26

    .line 933
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz p0, :cond_26

    .line 934
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p0, :cond_26

    .line 935
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    .line 936
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, -0x1

    return p0

    .line 941
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0

    :cond_2f
    :goto_2f
    const/16 p0, 0xf

    return p0
.end method

.method private getStreamVolume(I)I
    .registers 3

    const/16 v0, -0x64

    if-eq p1, v0, :cond_2f

    const/16 v0, -0x12c

    if-ne p1, v0, :cond_9

    goto :goto_2f

    :cond_9
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_28

    .line 949
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz p0, :cond_26

    .line 950
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz p0, :cond_26

    .line 951
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p0, :cond_26

    .line 952
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    .line 953
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, -0x1

    return p0

    .line 958
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0

    :cond_2f
    :goto_2f
    const/16 p0, 0xf

    return p0
.end method

.method private hasAnimationRunning()Z
    .registers 2

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private hasFlymeFeature()Z
    .registers 2

    .line 2641
    :try_start_0
    sget-object p0, Lcom/android/systemui/volume/VolumePanel;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez p0, :cond_12

    const-string p0, "flyme.config.FlymeFeature"

    .line 2642
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "SHELL_HAPTICFEEDBACK_MOTOR"

    .line 2643
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 2645
    :cond_12
    sget-object p0, Lcom/android/systemui/volume/VolumePanel;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_19} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_19} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_29

    :catch_1a
    move-exception p0

    .line 2651
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 2649
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_28

    :catch_24
    move-exception p0

    .line 2647
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private initAnimation()V
    .registers 18

    move-object/from16 v6, p0

    .line 1532
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v0, :cond_60

    .line 1533
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    .line 1534
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1545
    iget-object v1, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    invoke-direct {v3, v6}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    invoke-direct {v3, v6}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1546
    iget-object v1, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1547
    iget-object v1, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1548
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;

    const/high16 v2, 0x3e800000  # 0.25f

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3e800000  # 0.25f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1549
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$9;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumePanel$9;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1564
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1594
    :cond_60
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b4

    .line 1595
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    .line 1596
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$extendValue;

    invoke-direct {v2, v6}, Lcom/android/systemui/volume/VolumePanel$extendValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$extendValue;

    invoke-direct {v2, v6}, Lcom/android/systemui/volume/VolumePanel$extendValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1597
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$11;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1615
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;

    const v2, 0x3eb33333  # 0.35f

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f000000  # 0.5f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1616
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$12;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumePanel$12;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1658
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$13;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumePanel$13;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1673
    :cond_b4
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_15d

    .line 1674
    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v9, [Ljava/lang/Object;

    .line 1675
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-direct {v1, v6, v11, v11}, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;

    const/4 v12, 0x0

    const v13, 0x3f6147ae  # 0.88f

    invoke-direct {v1, v6, v13, v12}, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v1, v0, v7

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v14, 0xc8

    .line 1676
    invoke-virtual {v10, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1677
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$14;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$14;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1688
    new-instance v5, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;

    const/high16 v2, 0x3e800000  # 0.25f

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3e800000  # 0.25f

    const/high16 v16, 0x3f800000  # 1.0f

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v14, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    invoke-virtual {v10, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1689
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$15;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$15;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1699
    new-instance v14, Landroid/animation/ValueAnimator;

    invoke-direct {v14}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v9, [Ljava/lang/Object;

    .line 1700
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;

    invoke-direct {v1, v6, v11, v11}, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;

    invoke-direct {v1, v6, v13, v12}, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v1, v0, v7

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v0, 0xc8

    .line 1701
    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1702
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$16;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$16;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1713
    new-instance v11, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;

    const v2, 0x3ed70a3d  # 0.42f

    const/4 v3, 0x0

    const v4, 0x3f147ae1  # 0.58f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    invoke-virtual {v14, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1714
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$17;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$17;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1724
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$18;

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/VolumePanel$18;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1739
    iget-object v0, v6, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v10, v1, v8

    aput-object v14, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_15d
    return-void
.end method

.method private initStreamTypeVolumeIndex()V
    .registers 5

    .line 3055
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSupportFlymeVibrate:Z

    if-nez v0, :cond_5

    return-void

    .line 3056
    :cond_5
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_19

    .line 3058
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeIndexArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;-><init>(Lcom/android/systemui/volume/VolumePanel;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method

.method private isInCommunicationWithMusicActive()Z
    .registers 3

    .line 1212
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1a

    const/16 p0, 0x3e8

    const/4 v0, 0x3

    .line 1213
    invoke-static {v0, p0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1214
    invoke-static {v0, p0}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isMuted(I)Z
    .registers 3

    const/16 v0, -0x64

    if-ne p1, v0, :cond_b

    .line 919
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result p0

    return p0

    :cond_b
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 924
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0
.end method

.method private static isNotificationOrRing(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private isShowing()Z
    .registers 2

    .line 2528
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private printAllLayout(Ljava/lang/String;)V
    .registers 7

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VP_DEBUG] -------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "----------------------"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolumePanel"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1414
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VP_DEBUG] mDialog.getWindow() [x|y|w|h] = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    const-string v2, "-mTopPanel"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1417
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mBlurBackground:Landroid/view/SurfaceView;

    const-string v2, "--mBlurBackground"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1418
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    const-string v2, "--mBackground"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1419
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mShadowBackground:Landroid/view/View;

    const-string v2, "--mShadowBackground"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1420
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelWrapper:Landroid/view/View;

    const-string v2, "--mPanelWrapper"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const-string v2, "--mPanel"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1422
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    const-string v2, "---mSliderPanel"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->printLayout(Ljava/lang/String;Landroid/view/View;)V

    .line 1423
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 1424
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VP_DEBUG] mSubDialog.getWindow() [x|y|w|h] = ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLayout(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 1430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VP_DEBUG] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [x|y|w|h] = ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePanel"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .registers 2

    .line 2973
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private registerReceiver()V
    .registers 4

    .line 897
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 899
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeLTRBView()V
    .registers 3

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mLTView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mRBView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLTRBView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VolumePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private reorderSliders(I)V
    .registers 4

    .line 1944
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1945
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v0, :cond_29

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing stream type! - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolumePanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 1948
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    goto :goto_41

    .line 1950
    :cond_29
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1951
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->fillAndUpdateExtendSliders(I)V

    const/4 v0, 0x1

    .line 1952
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSubSlider(IZ)V

    .line 1953
    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-eqz p1, :cond_3e

    .line 1954
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateScreenLTRBMargin()Z

    const-string p1, "reorderSliders"

    .line 1955
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->updateLayoutParams(Ljava/lang/String;)V

    .line 1957
    :cond_3e
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    :goto_41
    return-void
.end method

.method private resetTimeout()V
    .registers 6

    .line 2898
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 2899
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_36
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3c

    if-nez v0, :cond_4f

    .line 2902
    :cond_3c
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    const/4 v1, 0x2

    const/16 v2, 0x5dc

    if-ne v0, v1, :cond_4d

    .line 2903
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    goto :goto_4f

    .line 2905
    :cond_4d
    iput v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    :cond_4f
    :goto_4f
    return-void
.end method

.method private setLayoutDirection(I)V
    .registers 2

    .line 892
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method private setMusicSeekbarEnable(Z)V
    .registers 3

    .line 1217
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz p0, :cond_10

    .line 1219
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_10
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .registers 6

    .line 963
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x12c

    if-ne v0, v1, :cond_19

    .line 964
    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p1

    if-eq p1, p2, :cond_18

    .line 965
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_18
    return-void

    :cond_19
    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2d

    .line 970
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p1, :cond_25

    .line 971
    invoke-virtual {p1, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    goto :goto_3f

    .line 973
    :cond_25
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string p1, "Adjusting remote volume without a controller!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 975
    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_3f

    .line 976
    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v0, -0x64

    if-ne p1, v0, :cond_3a

    goto :goto_3f

    .line 979
    :cond_3a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private setWindowDimAmount(FZ)V
    .registers 4

    .line 3037
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialogDimAmount:F

    .line 3038
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3039
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 3040
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialogDimAmount:F

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3041
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3042
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[VP_DEBUG] setWindowDimAmount: mDialogDimAmount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialogDimAmount:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePanel"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startAnimation(Z)V
    .registers 21

    move-object/from16 v7, p0

    .line 1744
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->hasAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1745
    :cond_9
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1b

    move v0, v8

    goto :goto_1c

    :cond_1b
    move v0, v9

    :goto_1c
    const v1, 0x3d888889

    if-eqz v0, :cond_24

    const v1, 0x3d1f49f5

    .line 1752
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateScreenLTRBMargin()Z

    const-string/jumbo v2, "startAnimation"

    .line 1753
    invoke-direct {v7, v2}, Lcom/android/systemui/volume/VolumePanel;->updateLayoutParams(Ljava/lang/String;)V

    .line 1754
    iget v2, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    const/4 v10, 0x0

    const v3, 0x3f6b851f  # 0.92f

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x2

    if-nez v2, :cond_a3

    .line 1755
    iput v8, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    .line 1759
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1760
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 1761
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1763
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1765
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mShadowBackground:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setElevation(F)V

    .line 1767
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mPanelWrapper:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setElevation(F)V

    .line 1770
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v1, v7, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_6e

    .line 1773
    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1775
    :cond_6e
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1776
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v0

    .line 1787
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    int-to-float v0, v0

    invoke-direct {v4, v7, v3, v0}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v4, v2, v9

    new-instance v0, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    int-to-float v3, v9

    invoke-direct {v0, v7, v11, v3}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1788
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_21f

    :cond_a3
    if-ne v2, v8, :cond_216

    if-eqz p1, :cond_1df

    .line 1791
    iput v12, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    .line 1792
    monitor-enter p0

    .line 1793
    :try_start_aa
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v9

    :goto_b1
    if-ge v2, v1, :cond_d8

    .line 1795
    iget-object v3, v7, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1796
    iget-object v4, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1797
    invoke-direct {v7, v3, v9}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_d5

    .line 1799
    iget-object v4, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1800
    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 1803
    :cond_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_aa .. :try_end_d9} :catchall_1dc

    .line 1807
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    iget-object v2, v7, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->volume_panel_corners:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1808
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    const/high16 v2, 0x41f00000  # 30.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 1810
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    const/high16 v3, -0x51000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 1811
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mPanelWrapper:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 1812
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mShadowBackground:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1834
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    .line 1835
    iget-object v2, v7, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v2

    .line 1836
    iget-object v3, v7, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1837
    iget-object v4, v7, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 1839
    iget-object v5, v7, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    mul-int/2addr v5, v6

    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    mul-int/lit8 v13, v6, 0x2

    add-int/2addr v13, v5

    .line 1840
    iget v5, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    iget v14, v7, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    add-int/2addr v5, v14

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    .line 1841
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->checkHideStreamName()Z

    move-result v6

    if-eqz v6, :cond_146

    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    iget v14, v7, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    sub-int/2addr v6, v14

    div-int/2addr v6, v12

    sub-int/2addr v5, v6

    :cond_146
    move v14, v5

    if-eqz v0, :cond_14c

    .line 1842
    iget v5, v7, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    goto :goto_14e

    :cond_14c
    iget v5, v7, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    :goto_14e
    sub-int/2addr v5, v13

    div-int/2addr v5, v12

    if-eqz v0, :cond_155

    .line 1843
    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    goto :goto_157

    :cond_155
    iget v6, v7, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    :goto_157
    sub-int/2addr v6, v14

    div-int/2addr v6, v12

    .line 1844
    iget v15, v7, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    sub-int v15, v5, v15

    .line 1845
    iget v5, v7, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    sub-int/2addr v6, v5

    .line 1846
    new-instance v5, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    move/from16 v16, v1

    move-object v1, v5

    move/from16 v17, v2

    move-object/from16 v2, p0

    move/from16 v18, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move-object v8, v5

    move/from16 v5, v18

    move v11, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    .line 1847
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    int-to-float v3, v15

    int-to-float v4, v11

    int-to-float v5, v13

    int-to-float v11, v14

    move-object v1, v6

    move-object v13, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    .line 1853
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    .line 1854
    iget-object v2, v7, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v2

    .line 1857
    new-instance v11, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    int-to-float v3, v1

    int-to-float v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    .line 1858
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    int-to-float v4, v9

    move-object v1, v14

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    .line 1863
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$extendValue;

    invoke-direct {v3, v7, v8, v11, v10}, Lcom/android/systemui/volume/VolumePanel$extendValue;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;F)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$extendValue;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v3, v7, v13, v14, v4}, Lcom/android/systemui/volume/VolumePanel$extendValue;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;F)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1864
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1d1

    const-wide/16 v2, 0x12c

    goto :goto_1d3

    :cond_1d1
    const-wide/16 v2, 0x15e

    :goto_1d3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1865
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mExtendValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_21f

    :catchall_1dc
    move-exception v0

    .line 1803
    :try_start_1dd
    monitor-exit p0
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw v0

    .line 1867
    :cond_1df
    iput v9, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    .line 1871
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v0

    .line 1872
    iget v2, v7, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iget v4, v7, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    add-int/2addr v2, v1

    .line 1875
    iget-object v1, v7, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v12, [Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    int-to-float v0, v0

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v5, v7, v6, v0}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    aput-object v5, v4, v9

    new-instance v0, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    int-to-float v2, v2

    invoke-direct {v0, v7, v3, v2}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FF)V

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1876
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mShowHideValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_21f

    :cond_216
    if-ne v2, v12, :cond_21f

    .line 1879
    iput v9, v7, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    .line 1881
    iget-object v0, v7, Lcom/android/systemui/volume/VolumePanel;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private startLongPressVibrateThread()V
    .registers 4

    .line 3112
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3113
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThread:Ljava/lang/Thread;

    if-nez v1, :cond_18

    .line 3114
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$23;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThread:Ljava/lang/Thread;

    .line 3141
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    const/4 v1, 0x1

    .line 3143
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    .line 3144
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrateThreadLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3145
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private stateToString()Ljava/lang/String;
    .registers 2

    .line 1434
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-nez p0, :cond_7

    const-string p0, "STATE_DISMISSED"

    return-object p0

    :cond_7
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    const-string p0, "STATE_SHOWING_UNEXTEND"

    return-object p0

    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const-string p0, "STATE_SHOWING_EXTEND"

    return-object p0

    :cond_13
    const-string p0, "ERROR STATE"

    return-object p0
.end method

.method private updateHideState()V
    .registers 4

    .line 987
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 988
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v2, "HIDE_WHEN_SCREENSHOT"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateLayoutParams(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VP_DEBUG] updateLayoutParams: mVolumePanelState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; sliderCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanel"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3c

    move v1, v2

    goto :goto_3d

    :cond_3c
    move v1, v3

    :goto_3d
    const v4, 0x3d888889

    const v5, 0x3e816c17

    if-eqz v1, :cond_4b

    const v4, 0x3d1f49f5

    const v5, 0x3ec44444

    .line 1330
    :cond_4b
    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v6

    .line 1331
    iget-object v7, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    mul-int/2addr v7, v8

    iget v9, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    add-int/2addr v7, v8

    neg-int v7, v7

    .line 1332
    iget v8, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    neg-int v8, v8

    .line 1334
    iget-object v10, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1335
    iget v11, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v11, v13

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1336
    iget v11, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    mul-int/2addr v12, v9

    add-int/2addr v11, v12

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1338
    iget-object v11, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1339
    iget-object v12, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    iget v13, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    mul-int/2addr v12, v13

    iget v13, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    mul-int/2addr v13, v9

    add-int/2addr v12, v13

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1340
    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    iget v13, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1341
    iget-object v12, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_a9

    .line 1344
    iget v11, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    goto :goto_ab

    :cond_a9
    iget v11, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    :goto_ab
    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    iget v13, v0, Lcom/android/systemui/volume/VolumePanel;->mRight:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-static {v12}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    sub-int/2addr v11, v12

    .line 1345
    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    invoke-static {v12}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v5

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    sub-int/2addr v5, v12

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    sub-int/2addr v5, v12

    .line 1346
    iget v13, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    add-int/2addr v13, v12

    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-static {v12}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v12

    add-int/2addr v13, v12

    .line 1347
    iget v12, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    iget v14, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    mul-int/2addr v14, v9

    add-int/2addr v12, v14

    .line 1350
    iget v14, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-nez v14, :cond_10b

    .line 1352
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1353
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_f1

    .line 1354
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    goto :goto_f3

    :cond_f1
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    .line 1355
    :goto_f3
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    sub-int v3, v1, v2

    .line 1356
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    .line 1364
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v2

    add-int/2addr v1, v2

    move v15, v3

    move v3, v1

    move v1, v15

    goto/16 :goto_188

    :cond_10b
    if-ne v14, v2, :cond_136

    .line 1367
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1368
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_11a

    .line 1369
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    goto :goto_11c

    :cond_11a
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    :goto_11c
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    iget v9, v0, Lcom/android/systemui/volume/VolumePanel;->mRight:I

    add-int/2addr v2, v9

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    .line 1370
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    add-int/2addr v1, v2

    .line 1371
    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    goto :goto_188

    :cond_136
    if-ne v14, v9, :cond_187

    .line 1382
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemWidth:I

    mul-int/2addr v2, v4

    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v2, v6

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1383
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    add-int/2addr v2, v6

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->checkHideStreamName()Z

    move-result v2

    if-eqz v2, :cond_166

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    iget v6, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    sub-int/2addr v4, v6

    div-int/2addr v4, v9

    sub-int/2addr v2, v4

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_166
    if-eqz v1, :cond_16b

    .line 1385
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    goto :goto_16d

    :cond_16b
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    :goto_16d
    iget v4, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v4

    div-int/2addr v2, v9

    if-eqz v1, :cond_176

    .line 1386
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    goto :goto_178

    :cond_176
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    :goto_178
    iget v4, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v4

    div-int/2addr v1, v9

    .line 1387
    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    sub-int/2addr v2, v4

    .line 1388
    iget v4, v0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    sub-int v6, v1, v4

    move v1, v2

    move v7, v3

    move v8, v7

    goto :goto_188

    :cond_187
    move v1, v3

    .line 1395
    :goto_188
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_199

    .line 1396
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1397
    invoke-direct {v0, v11, v5, v13, v12}, Lcom/android/systemui/volume/VolumePanel;->updateSubDialogAttr(IIII)V

    .line 1400
    :cond_199
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1401
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1402
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mTopPanel:Landroid/view/ViewGroup;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 1404
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    int-to-float v2, v7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 1405
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    int-to-float v2, v8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 1407
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumePanel;->printAllLayout(Ljava/lang/String;)V

    return-void
.end method

.method private updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .registers 4

    if-eqz p1, :cond_58

    if-eqz p2, :cond_47

    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    goto :goto_47

    :cond_8
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1d

    .line 1227
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->volume_icon_description_media:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    :cond_1d
    const/4 v0, 0x5

    if-ne p2, v0, :cond_32

    .line 1229
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->volume_icon_description_notification:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    :cond_32
    const/4 v0, 0x2

    if-ne p2, v0, :cond_58

    .line 1231
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->volume_icon_description_ring:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 1225
    :cond_47
    :goto_47
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->volume_icon_description_call:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_panel_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateScreenLTRBMargin()Z
    .registers 9

    .line 2984
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2988
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mLTView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2989
    aget v4, v3, v1

    .line 2990
    aget v5, v3, v2

    .line 2991
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mRBView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    if-eqz v0, :cond_39

    .line 2993
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    aget v6, v3, v1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    sub-int/2addr v0, v6

    .line 2994
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    aget v3, v3, v2

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_4b

    .line 2996
    :cond_39
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    aget v6, v3, v1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    sub-int/2addr v0, v6

    .line 2997
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    aget v3, v3, v2

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_4b
    add-int/2addr v3, v7

    sub-int/2addr v6, v3

    .line 3000
    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    if-ne v4, v3, :cond_5d

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    if-ne v5, v3, :cond_5d

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRight:I

    if-ne v0, v3, :cond_5d

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mBottom:I

    if-eq v6, v3, :cond_9e

    .line 3001
    :cond_5d
    iput v4, p0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    .line 3002
    iput v5, p0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    .line 3003
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mRight:I

    .line 3004
    iput v6, p0, Lcom/android/systemui/volume/VolumePanel;->mBottom:I

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VP_DEBUG] updateScreenLTRBMargin: ==================================== >> [L|T|R|B] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTop:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mBottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VolumePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_9e
    return v1
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2078
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    .line 2079
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    .line 2081
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2082
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 2083
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .registers 8

    .line 2088
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    .line 2089
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 2090
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x1

    const/16 v3, -0xc8

    if-ne v1, v3, :cond_1a

    .line 2093
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    xor-int/2addr p3, v2

    invoke-virtual {v1, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_39

    :cond_1a
    if-nez p3, :cond_33

    .line 2099
    sget-object p3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz p3, :cond_21

    goto :goto_33

    .line 2104
    :cond_21
    iget-object p3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2105
    iget-object p3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2106
    iget-object p3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_39

    .line 2102
    :cond_33
    :goto_33
    iget-object p3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_39
    if-eqz v0, :cond_5c

    .line 2109
    iget-object p3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eq p2, p3, :cond_5c

    .line 2110
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 2111
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5c

    .line 2114
    :cond_52
    new-instance p2, Lcom/android/systemui/volume/VolumePanel$19;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/VolumePanel$19;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 2122
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2031
    :cond_3
    iget p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 2032
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p2}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result p2

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 2034
    :goto_17
    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-eq p0, v1, :cond_25

    if-nez v0, :cond_25

    if-nez p2, :cond_22

    .line 2035
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendMuteRes:I

    goto :goto_2c

    :cond_22
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendRes:I

    goto :goto_2c

    :cond_25
    if-nez p2, :cond_2a

    .line 2037
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    goto :goto_2c

    :cond_2a
    iget p0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 2039
    :goto_2c
    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V
    .registers 7

    .line 1982
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-gez p2, :cond_e

    .line 1987
    iget p2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 1989
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG_VP] updateSliderProgress: streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; forExtend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->checkAnimateSetProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    if-eqz v0, :cond_3d

    .line 1992
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    :cond_3d
    return-void
.end method

.method private updateSubDialogAttr(IIII)V
    .registers 7

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, -0x2710

    if-le p1, v1, :cond_10

    .line 1312
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_10
    if-le p2, v1, :cond_14

    .line 1313
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_14
    if-lez p3, :cond_18

    .line 1314
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_18
    if-lez p4, :cond_1c

    .line 1315
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1316
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateSubSlider(IZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_32

    move p2, v0

    .line 1963
    :goto_4
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v2, v1

    if-ge p2, v2, :cond_25

    .line 1964
    aget-object v1, v1, p2

    .line 1965
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v2, p1, :cond_22

    .line 1966
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v2, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1967
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v2, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1968
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendRes:I

    iput v2, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendRes:I

    .line 1969
    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendMuteRes:I

    iput v1, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconExtendMuteRes:I

    goto :goto_25

    :cond_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1973
    :cond_25
    :goto_25
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p2, v1}, Lcom/meizu/common/widget/AbsSeekBar;->setMax(I)V

    .line 1975
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p1

    .line 1976
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    .line 1977
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1978
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    return-void
.end method

.method private updateTimeoutDelay()V
    .registers 4

    .line 2143
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    const/16 v1, 0x5dc

    if-eqz v0, :cond_9

    const/16 v1, 0x1388

    goto :goto_c

    .line 2145
    :cond_9
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    .line 2150
    :goto_c
    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    return-void
.end method

.method private updateViewsLayout()V
    .registers 11

    .line 837
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mBlurBackground:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 838
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 839
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mBlurBackground:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelLeftRightPadding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 845
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 846
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 847
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x42340000  # 45.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x44870000  # 1080.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v4, 0x42400000  # 48.0f

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/high16 v1, 0x41d80000  # 27.0f

    const/high16 v4, 0x41c00000  # 24.0f

    const/high16 v5, 0x42f60000  # 123.0f

    if-eqz v0, :cond_103

    move v0, v2

    .line 852
    :goto_63
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_103

    .line 853
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v6, :cond_ff

    .line 855
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 856
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 857
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 858
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 861
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    div-float/2addr v8, v3

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 862
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v3

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    div-float/2addr v9, v3

    invoke-static {v9}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v9

    invoke-virtual {v7, v2, v8, v2, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 865
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 866
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x435e0000  # 222.0f

    mul-float/2addr v8, v9

    div-float/2addr v8, v3

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 867
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x430a0000  # 138.0f

    mul-float/2addr v8, v9

    div-float/2addr v8, v3

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 868
    iget-object v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    iget-object v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x42100000  # 36.0f

    mul-float/2addr v8, v9

    div-float/2addr v8, v3

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 870
    iget-object v6, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    div-float/2addr v7, v3

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v7

    invoke-virtual {v6, v2, v7, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_ff
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_63

    .line 875
    :cond_103
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 876
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iget v7, p0, Lcom/android/systemui/volume/VolumePanel;->mPanelShadowWidth:I

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v6, v8

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 877
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 878
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 881
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutWidth:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 882
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekbarLayoutHeight:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 883
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v6, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 886
    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float/2addr v6, v3

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 887
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v4

    iget p0, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    div-float/2addr p0, v3

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result p0

    invoke-virtual {v0, v2, v4, v2, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "VolumePanel state:"

    .line 784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mTag="

    .line 785
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mRingIsSilent="

    .line 786
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mVoiceCapable="

    .line 787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mZenModeAvailable="

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mZenPanelExpanded="

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTimeoutDelay="

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mDisabledAlpha="

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    const-string p1, "  mLastRingerMode="

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mLastRingerProgress="

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mPlayMasterStreamTones="

    .line 794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  isShowing()="

    .line 795
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mCallback="

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  sConfirmSafeVolumeDialog="

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz p1, :cond_8b

    const-string p1, "<not null>"

    goto :goto_8c

    :cond_8b
    const/4 p1, 0x0

    :goto_8c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mActiveStreamType="

    .line 799
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mStreamControls="

    .line 800
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez p1, :cond_a8

    const-string p0, "null"

    .line 802
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_115

    .line 804
    :cond_a8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-string p3, "<size "

    .line 805
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 p3, 0x3e

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(C)V

    const/4 p3, 0x0

    :goto_ba
    if-ge p3, p1, :cond_115

    .line 807
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const-string v1, "    stream "

    .line 808
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    if-eqz v1, :cond_100

    const-string v1, " progress="

    .line 810
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " of "

    .line 811
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 812
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_100

    const-string v1, " (disabled)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    :cond_100
    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string v0, " (clickable)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    :cond_10f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_ba

    :cond_115
    :goto_115
    return-void
.end method

.method public getLocaleLanguage()Ljava/lang/String;
    .registers 4

    .line 1441
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1442
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_VOLUME_1] msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ed

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_148

    packed-switch v0, :pswitch_data_16e

    goto/16 :goto_144

    .line 2892
    :pswitch_28  #0x1d
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_144

    .line 2888
    :pswitch_2f  #0x1c
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->startAnimation(Z)V

    const/16 p1, 0x1d

    .line 2889
    invoke-virtual {p0, p1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_144

    .line 2801
    :pswitch_3f  #0x1b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2802
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2803
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    const/4 v6, 0x0

    const-string v3, "com.android.systemui"

    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 2804
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VP_VIBRATE] Volume vibrate for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with vibrateId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePanel"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 2885
    :pswitch_77  #0x1a
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->startAnimation(Z)V

    goto/16 :goto_144

    .line 2882
    :pswitch_7c  #0x19
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->adjustVolumePanelPos()V

    goto/16 :goto_144

    .line 2877
    :pswitch_81  #0xe
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz p0, :cond_144

    .line 2878
    invoke-interface {p0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_144

    .line 2872
    :pswitch_8a  #0xd
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_8f

    move v2, v3

    :cond_8f
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    goto/16 :goto_144

    .line 2868
    :pswitch_93  #0xc
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_144

    .line 2861
    :pswitch_9a  #0xb
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_a6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2862
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2864
    :cond_a6
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_144

    .line 2855
    :pswitch_ad  #0xa
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_144

    .line 2851
    :pswitch_b6  #0x9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_144

    .line 2846
    :pswitch_bb  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto/16 :goto_144

    .line 2776
    :pswitch_c6  #0x7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto/16 :goto_144

    .line 2839
    :pswitch_cf  #0x6, 0xf, 0x10
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_144

    .line 2840
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto :goto_144

    .line 2796
    :pswitch_d9  #0x4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrate()V

    goto :goto_144

    .line 2786
    :pswitch_dd  #0x3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_144

    .line 2781
    :pswitch_e1  #0x1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_144

    .line 2771
    :pswitch_e5  #0x0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_144

    .line 2810
    :cond_ed
    :pswitch_ed  #0x5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 2811
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_119

    .line 2812
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->cancelAllAnimation()V

    .line 2813
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2814
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2815
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v0, "handleMessage: dismiss without animation for screenshot"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    const/4 p1, -0x1

    .line 2817
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2818
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz p1, :cond_122

    .line 2819
    invoke-interface {p1, v2}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    goto :goto_122

    .line 2821
    :cond_119
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->hasAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_122

    .line 2822
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->startAnimation(Z)V

    .line 2825
    :cond_122
    :goto_122
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2826
    :try_start_125
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_143

    .line 2827
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_134

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v0, "SafetyWarning timeout"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_134
    sget-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    check-cast p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->isJustNotify()Z

    move-result p0

    if-nez p0, :cond_143

    .line 2829
    sget-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2832
    :cond_143
    monitor-exit p1

    :cond_144
    :goto_144
    :pswitch_144  #0x2
    return-void

    :catchall_145
    move-exception p0

    monitor-exit p1
    :try_end_147
    .catchall {:try_start_125 .. :try_end_147} :catchall_145

    throw p0

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_e5  #00000000
        :pswitch_e1  #00000001
        :pswitch_144  #00000002
        :pswitch_dd  #00000003
        :pswitch_d9  #00000004
        :pswitch_ed  #00000005
        :pswitch_cf  #00000006
        :pswitch_c6  #00000007
        :pswitch_bb  #00000008
        :pswitch_b6  #00000009
        :pswitch_ad  #0000000a
        :pswitch_9a  #0000000b
        :pswitch_93  #0000000c
        :pswitch_8a  #0000000d
        :pswitch_81  #0000000e
        :pswitch_cf  #0000000f
        :pswitch_cf  #00000010
    .end packed-switch

    :pswitch_data_16e
    .packed-switch 0x19
        :pswitch_7c  #00000019
        :pswitch_77  #0000001a
        :pswitch_3f  #0000001b
        :pswitch_2f  #0000001c
        :pswitch_28  #0000001d
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 761
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    .line 762
    :goto_5
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 763
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v1, :cond_1d

    .line 765
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 768
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->hasAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->cancelAllAnimation()V

    .line 771
    :cond_29
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumePanelState:I

    if-eqz v0, :cond_3b

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateScreenLTRBMargin()Z

    const-string v0, "onConfigurationChanged"

    .line 773
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateLayoutParams(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 774
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAdjustCount:I

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->adjustVolumePanelPos()V

    .line 779
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VP_DEBUG] onConfigurationChanged: newConfig.screenWidthDp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; screenHeightDp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; densityDpi = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePanel"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .registers 11

    .line 2659
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 2661
    :goto_b
    :try_start_b
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->isJustNotify()Z

    move-result v2

    if-eqz v2, :cond_1b

    monitor-exit v0

    return-void

    :cond_1b
    if-nez v1, :cond_a7

    .line 2663
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5b

    const/high16 v2, 0x20000

    and-int/2addr p1, v2

    if-eqz p1, :cond_5b

    .line 2664
    sget-boolean p1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz p1, :cond_31

    const-string p1, "VolumePanel"

    const-string v1, "Confirmed warning via VOLUME_UP"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 2666
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/volume/VolumePanel;->mDisableSafeMediaVolumeTime:J

    .line 2669
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action_type"

    const-string v2, "popup_increase_by_key_volume_up"

    .line 2670
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object p0

    const-string v1, "SafetyWarningAction"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2672
    monitor-exit v0

    return-void

    .line 2674
    :cond_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2675
    iget-wide v4, p0, Lcom/android/systemui/volume/VolumePanel;->mLastVibrateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_a5

    sget-wide v4, Lcom/android/systemui/volume/VolumePanel;->mDisableSafeMediaVolumeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long p1, v4, v6

    if-gtz p1, :cond_74

    goto :goto_a5

    .line 2676
    :cond_74
    iput-wide v2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastVibrateTime:J

    .line 2677
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSupportFlymeVibrate:Z

    if-eqz p1, :cond_96

    const-string p1, "VolumePanel"

    const-string v2, "onDisplaySafeVolumeWarning: mVibrator.vibrateByID(FLYME_FINGERPRINT_ERROR)"

    .line 2678
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "com.android.systemui"

    const/16 p1, 0x791b

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_9f

    .line 2681
    :cond_96
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 2683
    :goto_9f
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz p1, :cond_b0

    monitor-exit v0

    return-void

    .line 2675
    :cond_a5
    :goto_a5
    monitor-exit v0

    return-void

    .line 2685
    :cond_a7
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz p1, :cond_b0

    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2687
    :cond_b0
    new-instance p1, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p1, v2, p0, v3, v1}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;Z)V

    sput-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 2691
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2692
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v1, :cond_cc

    const/16 v1, 0x7d3

    .line 2694
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_d0

    :cond_cc
    const/16 v1, 0x7e4

    .line 2696
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2697
    :goto_d0
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2699
    sget-object p1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 2700
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_b .. :try_end_d9} :catchall_f0

    .line 2701
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 2703
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_e9

    const/4 p1, 0x5

    .line 2704
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_ef

    .line 2706
    :cond_e9
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 2707
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    :goto_ef
    return-void

    :catchall_f0
    move-exception p0

    .line 2700
    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p0
.end method

.method protected onFreeResources()V
    .registers 4

    .line 2755
    monitor-enter p0

    .line 2756
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1d

    .line 2757
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 2758
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 2760
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2762
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method protected onMuteChanged(II)V
    .registers 6

    .line 2344
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMuteChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_3a

    .line 2348
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 2351
    :cond_3a
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    return-void
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .registers 6

    .line 2572
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3e

    .line 2575
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_3e

    .line 2583
    :cond_32
    sget-boolean p1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string p2, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2576
    :cond_3e
    :goto_3e
    monitor-enter p0

    .line 2577
    :try_start_3f
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_48

    .line 2578
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 2580
    :cond_48
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2581
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_5d

    :cond_4c
    :goto_4c
    const/4 p1, 0x1

    .line 2586
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2587
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2588
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void

    :catchall_5d
    move-exception p1

    .line 2581
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .registers 4

    .line 2592
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2596
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    :cond_20
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .registers 14

    .line 2355
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2357
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 2359
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_35

    .line 2360
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GJ_VOLUME] onShowVolumeChanged(streamType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2360
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v2

    .line 2367
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v4, 0x4

    const/16 v5, -0xc8

    if-eq p1, v5, :cond_55

    if-eqz p1, :cond_9f

    const/4 v6, 0x2

    if-eq p1, v6, :cond_9f

    const/4 v6, 0x3

    if-eq p1, v6, :cond_9f

    if-eq p1, v4, :cond_9f

    const/4 v6, 0x5

    if-eq p1, v6, :cond_9f

    const/4 v6, 0x6

    goto :goto_9f

    :cond_55
    if-nez p3, :cond_5b

    if-eqz v3, :cond_5b

    .line 2435
    iget-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    :cond_5b
    if-nez p3, :cond_65

    .line 2439
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v7, "sent remote volume change without a controller!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2441
    :cond_65
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 2442
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    .line 2443
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v6

    .line 2444
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_7a

    or-int/lit8 p2, p2, 0x20

    :cond_7a
    move v0, v2

    move v2, v6

    .line 2449
    :goto_7c
    sget-boolean v6, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_9f

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showing remote volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    const/4 v6, 0x1

    const-string v7, "VolumePanel"

    if-eqz v3, :cond_fb

    if-ne p1, v5, :cond_bc

    .line 2455
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v8, :cond_bc

    if-eqz v8, :cond_b1

    .line 2457
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v8, v9}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2459
    :cond_b1
    iput-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p3, :cond_bc

    .line 2461
    iget-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p3, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2464
    :cond_bc
    iget-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p3}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result p3

    mul-int/lit8 v2, v2, 0x64

    if-eq p3, v2, :cond_cb

    .line 2465
    iget-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {p3, v2}, Lcom/meizu/common/widget/AbsSeekBar;->setMax(I)V

    .line 2467
    :cond_cb
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG_VP] onShowVolumeChanged: streamType = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; index = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-direct {p0, v3, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    .line 2469
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result p3

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_f4

    move p2, v6

    goto :goto_f5

    :cond_f4
    move p2, v1

    :goto_f5
    invoke-direct {p0, v3, p3, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 2471
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSubSlider(IZ)V

    .line 2474
    :cond_fb
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result p2

    if-nez p2, :cond_154

    .line 2482
    :try_start_101
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->addLTRBView()V

    .line 2483
    iget p1, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    const/16 p2, -0x2710

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSubDialogAttr(IIII)V

    .line 2484
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSubDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2485
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mSubTopPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_115} :catch_116

    goto :goto_12f

    :catch_116
    move-exception p1

    .line 2487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onShowVolumeChanged: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12f
    const/16 p1, 0x1a

    .line 2490
    invoke-virtual {p0, p1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x14

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2491
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz p1, :cond_141

    .line 2492
    invoke-interface {p1, v6}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 2494
    :cond_141
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 2495
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/systemui/volume/VolumePanel$20;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/VolumePanel$20;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2518
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2519
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHideState()V

    :cond_154
    return-void
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .registers 6

    monitor-enter p0

    .line 2623
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSliderVisibilityChanged(stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", visi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2d

    move p2, v0

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    .line 2625
    :goto_2e
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_32
    if-ltz v1, :cond_4b

    .line 2626
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v0, v0, v1

    .line 2627
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v2, p1, :cond_48

    .line 2628
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-nez p2, :cond_4b

    .line 2629
    iget p2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne p2, p1, :cond_4b

    const/4 p1, -0x1

    .line 2630
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_4d

    goto :goto_4b

    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    .line 2635
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onStopSounds()V
    .registers 3

    .line 2550
    monitor-enter p0

    .line 2551
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_15

    .line 2553
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_12

    .line 2555
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 2558
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected onVibrate()V
    .registers 4

    .line 2564
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 2568
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x12c

    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method protected onVolumeChanged(II)V
    .registers 5

    .line 2307
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_VOLUME] onVolumeChanged(streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_35

    .line 2309
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2310
    :cond_35
    monitor-enter p0

    .line 2311
    :try_start_36
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_59

    .line 2312
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->hasAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_42

    monitor-exit p0

    return-void

    :cond_42
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_4c

    .line 2314
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    goto :goto_59

    :cond_4c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_59

    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    .line 2317
    :goto_56
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setMusicSeekbarEnable(Z)V

    :cond_59
    :goto_59
    const/4 v0, 0x0

    .line 2320
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2321
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_62

    .line 2339
    :cond_5e
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void

    :catchall_62
    move-exception p1

    .line 2321
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public postDismiss(J)V
    .registers 3

    .line 2292
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 4

    const/16 v0, 0xb

    .line 2280
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 2281
    :cond_9
    monitor-enter p0

    .line 2282
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v1, :cond_11

    .line 2283
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2285
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1f

    const/4 v1, 0x0

    .line 2287
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    .line 2288
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_1f
    move-exception p1

    .line 2285
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public postLayoutDirection(I)V
    .registers 4

    const/16 v0, 0xc

    .line 2296
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 2297
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 3

    const/16 v0, -0x64

    .line 2276
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    return-void
.end method

.method public postMuteChanged(II)V
    .registers 4

    const/4 v0, 0x0

    .line 2265
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 2266
    :cond_8
    monitor-enter p0

    .line 2267
    :try_start_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 2268
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2270
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1e

    const/4 v0, 0x1

    .line 2271
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x7

    .line 2272
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_1e
    move-exception p1

    .line 2270
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public postVolumeChanged(II)V
    .registers 9

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_VOLUME] postVolumeChanged: streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_37

    const/16 p1, 0x10

    .line 2200
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    .line 2201
    :cond_2f
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2205
    :cond_37
    monitor-enter p0

    .line 2206
    :try_start_38
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v1, :cond_3f

    .line 2207
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2209
    :cond_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_93

    const/high16 v1, 0x40000

    and-int/2addr v1, p2

    if-nez v1, :cond_47

    .line 2211
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsInLongPressWithVolumeChange:Z

    .line 2212
    :cond_47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_92

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_52

    goto :goto_92

    .line 2213
    :cond_52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_5b

    move v1, v3

    goto :goto_5c

    :cond_5b
    move v1, v0

    :goto_5c
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_64

    move v5, v3

    goto :goto_65

    :cond_64
    move v5, v0

    :goto_65
    invoke-direct {p0, p1, v2, v1, v5}, Lcom/android/systemui/volume/VolumePanel;->checkVibrateForVolumeChange(IIZZ)V

    if-nez p1, :cond_84

    .line 2215
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_84

    .line 2216
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2217
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2218
    iget-object v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    :cond_84
    if-eqz v4, :cond_8b

    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_8b

    return-void

    .line 2223
    :cond_8b
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_92
    :goto_92
    return-void

    :catchall_93
    move-exception p1

    .line 2209
    :try_start_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1
.end method

.method public updateStates()V
    .registers 4

    .line 2173
    monitor-enter p0

    .line 2174
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    .line 2176
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2177
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2179
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method
