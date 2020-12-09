.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mDefaultWindowAnimationStyleResId:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field final mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field private mLastChangingApp:Ljava/lang/String;

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 160
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3e99999a  # 0.3f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 163
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a  # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 180
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 203
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 239
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 248
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd  # 0.4f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 253
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 256
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 269
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 272
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 274
    new-instance v0, Landroid/os/Handler;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 275
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 276
    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 278
    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 280
    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 p3, 0x10e0000

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 284
    const p2, 0x10c0003

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 286
    new-instance p1, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 298
    new-instance p1, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 309
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000  # 8.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 311
    const-string p1, "ro.recents.grid"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 312
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 314
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 316
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 318
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$200(Landroid/os/IRemoteCallback;)V
    .registers 1

    .line 148
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .line 2097
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2105
    :cond_21
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2103
    :cond_24
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2101
    :cond_27
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2099
    :cond_2a
    const-string v0, "APP_STATE_IDLE"

    return-object v0
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 3

    .line 2020
    const/4 v0, -0x1

    if-eq p0, v0, :cond_68

    if-eqz p0, :cond_65

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_62

    packed-switch p0, :pswitch_data_6c

    packed-switch p0, :pswitch_data_86

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2085
    :pswitch_26  #0x1a
    const-string p0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object p0

    .line 2082
    :pswitch_29  #0x19
    const-string p0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object p0

    .line 2079
    :pswitch_2c  #0x18
    const-string p0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object p0

    .line 2076
    :pswitch_2f  #0x17
    const-string p0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object p0

    .line 2073
    :pswitch_32  #0x16
    const-string p0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object p0

    .line 2070
    :pswitch_35  #0x15
    const-string p0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object p0

    .line 2067
    :pswitch_38  #0x14
    const-string p0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object p0

    .line 2064
    :pswitch_3b  #0x13
    const-string p0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object p0

    .line 2061
    :pswitch_3e  #0x12
    const-string p0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object p0

    .line 2058
    :pswitch_41  #0x10
    const-string p0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object p0

    .line 2055
    :pswitch_44  #0xf
    const-string p0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object p0

    .line 2052
    :pswitch_47  #0xe
    const-string p0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object p0

    .line 2049
    :pswitch_4a  #0xd
    const-string p0, "TRANSIT_WALLPAPER_OPEN"

    return-object p0

    .line 2046
    :pswitch_4d  #0xc
    const-string p0, "TRANSIT_WALLPAPER_CLOSE"

    return-object p0

    .line 2043
    :pswitch_50  #0xb
    const-string p0, "TRANSIT_TASK_TO_BACK"

    return-object p0

    .line 2040
    :pswitch_53  #0xa
    const-string p0, "TRANSIT_TASK_TO_FRONT"

    return-object p0

    .line 2037
    :pswitch_56  #0x9
    const-string p0, "TRANSIT_TASK_CLOSE"

    return-object p0

    .line 2034
    :pswitch_59  #0x8
    const-string p0, "TRANSIT_TASK_OPEN"

    return-object p0

    .line 2031
    :pswitch_5c  #0x7
    const-string p0, "TRANSIT_ACTIVITY_CLOSE"

    return-object p0

    .line 2028
    :pswitch_5f  #0x6
    const-string p0, "TRANSIT_ACTIVITY_OPEN"

    return-object p0

    .line 2088
    :cond_62
    const-string p0, "TRANSIT_SHOW_SINGLE_TASK_DISPLAY"

    return-object p0

    .line 2025
    :cond_65
    const-string p0, "TRANSIT_NONE"

    return-object p0

    .line 2022
    :cond_68
    const-string p0, "TRANSIT_UNSET"

    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch 0x6
        :pswitch_5f  #00000006
        :pswitch_5c  #00000007
        :pswitch_59  #00000008
        :pswitch_56  #00000009
        :pswitch_53  #0000000a
        :pswitch_50  #0000000b
        :pswitch_4d  #0000000c
        :pswitch_4a  #0000000d
        :pswitch_47  #0000000e
        :pswitch_44  #0000000f
        :pswitch_41  #00000010
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x12
        :pswitch_3e  #00000012
        :pswitch_3b  #00000013
        :pswitch_38  #00000014
        :pswitch_35  #00000015
        :pswitch_32  #00000016
        :pswitch_2f  #00000017
        :pswitch_2c  #00000018
        :pswitch_29  #00000019
        :pswitch_26  #0000001a
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 5

    .line 845
    if-nez p1, :cond_5

    .line 846
    const-wide/16 p1, 0x150

    return-wide p1

    .line 848
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 849
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 848
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 850
    const/high16 p2, 0x43a80000  # 336.0f

    const/high16 p3, 0x42a80000  # 84.0f

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method private canOverridePendingAppTransition()Z
    .registers 3

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static computePivot(IF)F
    .registers 4

    .line 718
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p1, v0

    .line 719
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717  # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 720
    int-to-float p0, p0

    return p0

    .line 722
    :cond_10
    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 5

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1363
    iget-object p3, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 5

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1370
    iget-object p3, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 21

    .line 1376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1377
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 1380
    if-eqz p4, :cond_21

    div-float v8, v4, v6

    goto :goto_23

    :cond_21
    div-float v8, v6, v4

    :goto_23
    move v11, v8

    .line 1381
    if-eqz p4, :cond_29

    div-float v8, v5, v7

    goto :goto_2b

    :cond_29
    div-float v8, v7, v5

    :goto_2b
    move v13, v8

    .line 1382
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1383
    const/4 v9, 0x0

    if-nez v3, :cond_37

    .line 1384
    move v10, v9

    goto :goto_3c

    :cond_37
    iget v10, v3, Landroid/graphics/Rect;->left:I

    iget v12, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    .line 1385
    :goto_3c
    if-nez v3, :cond_3f

    .line 1386
    goto :goto_44

    :cond_3f
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v3

    .line 1389
    :goto_44
    if-eqz p4, :cond_47

    move v4, v6

    :cond_47
    int-to-float v3, v10

    add-float/2addr v4, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float v14, v4, v3

    .line 1390
    if-eqz p4, :cond_50

    move v5, v7

    :cond_50
    int-to-float v4, v9

    add-float/2addr v5, v4

    div-float v15, v5, v3

    .line 1391
    if-eqz p4, :cond_65

    .line 1392
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v9, v3

    move v10, v11

    move v11, v4

    move v12, v13

    move v13, v5

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6f

    .line 1393
    :cond_65
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v12, 0x3f800000  # 1.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1394
    :goto_6f
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1395
    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 1396
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    .line 1397
    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v2

    .line 1398
    if-eqz p4, :cond_97

    sub-int/2addr v4, v1

    goto :goto_99

    :cond_97
    sub-int v4, v1, v4

    .line 1399
    :goto_99
    if-eqz p4, :cond_9d

    sub-int/2addr v5, v6

    goto :goto_9f

    :cond_9d
    sub-int v5, v6, v5

    .line 1400
    :goto_9f
    const/4 v1, 0x0

    if-eqz p4, :cond_aa

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-direct {v2, v4, v1, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b1

    .line 1401
    :cond_aa
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-direct {v2, v1, v4, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1402
    :goto_b1
    invoke-virtual {v8, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1403
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1405
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1406
    if-eqz v1, :cond_c3

    .line 1407
    new-instance v2, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1421
    :cond_c3
    return-object v8
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 27

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_145

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 863
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 865
    nop

    .line 866
    if-lez v14, :cond_27

    .line 867
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_28

    .line 866
    :cond_27
    move v6, v4

    .line 869
    :goto_28
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000  # 7.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v6

    float-to-int v6, v8

    add-int/2addr v7, v6

    .line 870
    nop

    .line 871
    nop

    .line 872
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 873
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 874
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 875
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 876
    sub-int v11, v6, v9

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int v12, v11, v12

    .line 877
    sub-int/2addr v8, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v10

    .line 878
    nop

    .line 883
    iget v13, v2, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x0

    if-le v13, v8, :cond_70

    .line 884
    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v7

    .line 885
    nop

    .line 886
    nop

    .line 887
    move v13, v7

    move v10, v15

    move/from16 v16, v10

    const/4 v7, 0x1

    goto :goto_74

    .line 883
    :cond_70
    move v13, v7

    move/from16 v16, v13

    move v7, v15

    .line 889
    :goto_74
    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-le v8, v11, :cond_80

    .line 890
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v7, v11, v7

    .line 891
    nop

    .line 892
    move v12, v15

    const/4 v8, 0x1

    goto :goto_82

    .line 889
    :cond_80
    move v8, v7

    move v7, v15

    .line 894
    :goto_82
    iget v11, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    if-ge v11, v6, :cond_97

    .line 895
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v7, v6, v2

    .line 896
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v12, v1, v2

    .line 897
    move v6, v12

    const/4 v2, 0x1

    move v12, v7

    goto :goto_9a

    .line 894
    :cond_97
    move v2, v8

    move v6, v12

    move v12, v7

    .line 899
    :goto_9a
    int-to-float v7, v12

    int-to-float v8, v13

    move-object/from16 v9, p4

    move/from16 p2, v12

    move/from16 p1, v13

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v12

    .line 903
    new-instance v11, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 904
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v11, v6, v9, v15, v1}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 905
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 906
    long-to-float v6, v12

    const/high16 v9, 0x40200000  # 2.5f

    div-float/2addr v6, v9

    float-to-long v5, v6

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 908
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v7, v4, v8, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 909
    if-eqz v2, :cond_c9

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_cb

    .line 910
    :cond_c9
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 909
    :goto_cb
    invoke-virtual {v5, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 911
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 913
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 914
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v8, v10, v6

    const/4 v9, 0x0

    const/16 v17, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v4

    move-object/from16 v18, v7

    move v7, v10

    move v10, v14

    move-object/from16 v19, v11

    move/from16 v11, v16

    move/from16 v16, p2

    move-wide/from16 v20, v12

    move/from16 v12, v17

    move/from16 v17, p1

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 918
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 919
    move-wide/from16 v6, v20

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 922
    const-wide/16 v8, 0x4

    div-long v12, v6, v8

    .line 923
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f000000  # 0.5f

    invoke-direct {v8, v9, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 924
    invoke-virtual {v8, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 925
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 927
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 928
    move-object/from16 v9, v19

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 929
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 930
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 931
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 932
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 933
    invoke-virtual {v3, v1, v14, v1, v14}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 934
    nop

    .line 935
    iput-boolean v4, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 936
    iput-wide v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 940
    if-eqz v2, :cond_141

    .line 941
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_142

    :cond_141
    nop

    :goto_142
    iput v15, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 942
    goto :goto_178

    .line 944
    :cond_145
    const/4 v2, 0x6

    if-eq v1, v2, :cond_14e

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14e

    .line 950
    const-wide/16 v5, 0x150

    goto :goto_152

    .line 947
    :cond_14e
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v5, v2

    .line 948
    nop

    .line 953
    :goto_152
    const/16 v2, 0xe

    if-eq v1, v2, :cond_163

    const/16 v2, 0xf

    if-ne v1, v2, :cond_15b

    goto :goto_163

    .line 963
    :cond_15b
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v1

    const/4 v2, 0x1

    goto :goto_16d

    .line 959
    :cond_163
    :goto_163
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 960
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v3, v1

    .line 965
    :goto_16d
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 966
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 967
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 969
    :goto_178
    return-object v3
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 7

    .line 1183
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_13

    goto :goto_1d

    .line 1186
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 1187
    new-instance p2, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {p2, p1}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object p2

    .line 1184
    :cond_1d
    :goto_1d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .registers 13

    .line 1192
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1193
    invoke-virtual {v7, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1195
    cmpl-float v0, p3, p4

    const v1, 0x3f666666  # 0.9f

    const v2, 0x3dcccccd  # 0.1f

    if-lez v0, :cond_20

    .line 1197
    mul-float/2addr v1, p3

    mul-float/2addr v2, p4

    add-float v4, v1, v2

    move-object v0, v7

    move v1, p1

    move v2, p3

    move v3, p2

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2d

    .line 1200
    :cond_20
    mul-float/2addr v2, p3

    mul-float/2addr v1, p4

    add-float v4, v2, v1

    move-object v0, v7

    move v1, p1

    move v2, p3

    move v3, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1202
    :goto_2d
    return-object v7
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 13

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1538
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1539
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1541
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1542
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1543
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1544
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1545
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 1549
    iget-object v8, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1550
    nop

    .line 1551
    cmpg-float v9, v4, v6

    if-gtz v9, :cond_60

    cmpg-float v9, v7, v8

    if-gtz v9, :cond_60

    .line 1555
    new-instance p2, Landroid/view/animation/ClipRectAnimation;

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {p2, v4, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_73

    .line 1559
    :cond_60
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    div-float/2addr v4, v6

    div-float v6, v7, v8

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v5, v4, v9, v6, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1563
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v7

    div-float/2addr p2, v8

    float-to-int v5, p2

    .line 1569
    :goto_73
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v5

    int-to-float p1, v1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1571
    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1572
    const-wide/16 p1, 0x150

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1573
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1574
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 729
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 730
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 731
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p2, :cond_61

    .line 733
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    int-to-float v4, v0

    div-float v6, p2, v4

    .line 734
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float v4, p3

    div-float v8, p2, v4

    .line 735
    new-instance p2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 736
    invoke-static {v4, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 737
    invoke-static {v4, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    move-object v5, p2

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 738
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 740
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 741
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 743
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 744
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 745
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 746
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 747
    nop

    .line 748
    goto :goto_79

    :cond_61
    const/16 p2, 0xe

    if-eq p1, p2, :cond_70

    const/16 p2, 0xf

    if-ne p1, p2, :cond_6a

    goto :goto_70

    .line 758
    :cond_6a
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_79

    .line 754
    :cond_70
    :goto_70
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p2, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 755
    invoke-virtual {p2, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v1, p2

    .line 765
    :goto_79
    const/4 p2, 0x6

    if-eq p1, p2, :cond_82

    const/4 p2, 0x7

    if-eq p1, p2, :cond_82

    .line 771
    const-wide/16 p1, 0x150

    goto :goto_86

    .line 768
    :cond_82
    iget p1, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long p1, p1

    .line 769
    nop

    .line 774
    :goto_86
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 775
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 776
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 777
    invoke-virtual {v1, v0, p3, v0, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 778
    return-object v1
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 2325
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 2327
    goto :goto_6

    .line 2326
    :catch_5
    move-exception p0

    .line 2328
    :goto_6
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .line 1983
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_15

    .line 1984
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1985
    nop

    .line 1987
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1988
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2006
    :cond_15
    return-void
.end method

.method private getAspectScaleDuration()J
    .registers 3

    .line 1206
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1207
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1209
    :cond_9
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 1214
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1217
    :cond_9
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6

    .line 560
    if-eqz p1, :cond_29

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_29

    .line 564
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_10

    :cond_f
    move-object v0, v1

    .line 565
    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    .line 566
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1c

    .line 567
    move-object v0, v1

    .line 571
    :cond_1c
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 574
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6

    .line 580
    if-eqz p1, :cond_18

    .line 581
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_b

    .line 582
    const-string p1, "android"

    .line 586
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 589
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    goto :goto_11

    .line 787
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 784
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 789
    :goto_20
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .registers 4

    .line 2301
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2302
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2303
    if-nez v1, :cond_11

    .line 2304
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2306
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 2307
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 2317
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 2318
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2320
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2321
    return-void

    .line 2320
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static isActivityTransit(I)Z
    .registers 2

    .line 2283
    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

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

.method static isChangeTransit(I)Z
    .registers 2

    .line 2289
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .registers 2

    .line 2260
    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

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

.method private static isKeyguardTransit(I)Z
    .registers 2

    .line 2265
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x16

    if-eq p0, v0, :cond_11

    const/16 v0, 0x17

    if-ne p0, v0, :cond_f

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

.method private static isTaskOpenTransit(I)Z
    .registers 2

    .line 2277
    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

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

.method static isTaskTransit(I)Z
    .registers 2

    .line 2270
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x9

    if-eq p0, v0, :cond_15

    const/16 v0, 0xb

    if-eq p0, v0, :cond_15

    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static synthetic lambda$B95jxKE2FnT5RNLStTafenhEYj4(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 5

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 611
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 613
    if-eqz p1, :cond_10

    .line 614
    iget-object v0, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 616
    :cond_10
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 618
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 4

    .line 622
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 624
    if-eqz p1, :cond_13

    .line 625
    iget-object p1, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 628
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .registers 8

    .line 1801
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    .line 1802
    const/4 p1, 0x0

    return-object p1

    .line 1804
    :cond_8
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1806
    :goto_10
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    .line 1808
    :goto_19
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x15

    if-ne p1, v5, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-interface {v4, v1, v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private needsBoosting()Z
    .registers 6

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 495
    :goto_d
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_1b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    if-eqz v0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .registers 4

    .line 522
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .line 516
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(IJJJ)I
    .registers 20

    .line 529
    move-object v0, p0

    .line 530
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 531
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(IJJJ)I

    move-result v3

    or-int/2addr v2, v3

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 534
    :cond_22
    return v2
.end method

.method private prepare()Z
    .registers 3

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 418
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 419
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 420
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 421
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 422
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 423
    const/4 v0, 0x1

    return v0

    .line 425
    :cond_17
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .registers 8

    .line 807
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, -0x1

    invoke-direct {v0, p1, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 809
    return-void
.end method

.method private setAppTransition(II)V
    .registers 3

    .line 334
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 335
    iget p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 336
    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 338
    return-void
.end method

.method private setAppTransitionState(I)V
    .registers 2

    .line 480
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 482
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .registers 4

    .line 2296
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_9

    if-ne p2, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .line 2112
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_34

    .line 2132
    :pswitch_5  #0x8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2130
    :pswitch_19  #0x9
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2118
    :pswitch_1c  #0x7
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2128
    :pswitch_1f  #0x6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2126
    :pswitch_22  #0x5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2124
    :pswitch_25  #0x4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2122
    :pswitch_28  #0x3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2120
    :pswitch_2b  #0x2
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2116
    :pswitch_2e  #0x1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2114
    :pswitch_31  #0x0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_2e  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_25  #00000004
        :pswitch_22  #00000005
        :pswitch_1f  #00000006
        :pswitch_1c  #00000007
        :pswitch_5  #00000008
        :pswitch_19  #00000009
    .end packed-switch
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .registers 4

    .line 642
    const/16 v0, 0x18

    if-ne p2, v0, :cond_d

    const v0, 0x10a000f

    if-ne p1, v0, :cond_d

    .line 643
    const p1, 0x10a0012

    return p1

    .line 645
    :cond_d
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1a

    const p2, 0x10a000e

    if-ne p1, p2, :cond_1a

    .line 646
    const p1, 0x10a0011

    return p1

    .line 648
    :cond_1a
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .registers 4

    .line 1583
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x7

    if-eq v0, v2, :cond_13

    const/16 v2, 0x8

    if-eq v0, v2, :cond_13

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method clear()V
    .registers 3

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 458
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 459
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 460
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 461
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 462
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 35

    .line 1230
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1231
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1232
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1233
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1234
    if-lez v10, :cond_27

    int-to-float v12, v10

    goto :goto_29

    :cond_27
    const/high16 v12, 0x3f800000  # 1.0f

    .line 1235
    :goto_29
    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 1236
    if-lez v13, :cond_33

    int-to-float v14, v13

    goto :goto_35

    :cond_33
    const/high16 v14, 0x3f800000  # 1.0f

    .line 1237
    :goto_35
    iget-object v15, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v11

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v11

    .line 1238
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v9

    .line 1240
    if-eqz v1, :cond_53

    const/4 v9, 0x1

    if-eq v1, v9, :cond_75

    const/4 v9, 0x2

    if-eq v1, v9, :cond_5e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_56

    :cond_53
    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_8a

    .line 1353
    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_5e
    const/16 v1, 0xe

    if-ne v2, v1, :cond_6c

    .line 1346
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v1, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_1e2

    .line 1348
    :cond_6c
    const/high16 v9, 0x3f800000  # 1.0f

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1350
    goto/16 :goto_1e2

    .line 1332
    :cond_75
    const/16 v1, 0xe

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    if-ne v2, v1, :cond_83

    .line 1335
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_1e2

    .line 1337
    :cond_83
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1339
    goto/16 :goto_1e2

    .line 1243
    :goto_8a
    const/4 v2, 0x0

    if-nez v1, :cond_8f

    const/4 v1, 0x1

    goto :goto_90

    :cond_8f
    move v1, v2

    .line 1244
    :goto_90
    if-eqz p9, :cond_9a

    if-eqz v1, :cond_9a

    .line 1245
    invoke-direct {v0, v3, v5, v7}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_1e2

    .line 1247
    :cond_9a
    if-eqz p9, :cond_a2

    .line 1248
    invoke-direct {v0, v3, v5, v7}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_1e2

    .line 1251
    :cond_a2
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1254
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1255
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1259
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1260
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1263
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1264
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1266
    move/from16 v2, p2

    move/from16 v7, p3

    invoke-direct {v0, v2, v7}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 1268
    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v2

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float v11, v12, v2

    .line 1270
    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_e7

    .line 1271
    div-float/2addr v14, v11

    float-to-int v2, v14

    .line 1272
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v2

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 1275
    :cond_e7
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1277
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1278
    if-eqz v1, :cond_f3

    move/from16 v18, v11

    goto :goto_f5

    :cond_f3
    move/from16 v18, v9

    :goto_f5
    if-eqz v1, :cond_fa

    move/from16 v19, v9

    goto :goto_fc

    :cond_fa
    move/from16 v19, v11

    .line 1279
    :goto_fc
    if-eqz v1, :cond_101

    move/from16 v20, v11

    goto :goto_103

    :cond_101
    move/from16 v20, v9

    :goto_103
    if-eqz v1, :cond_108

    move/from16 v21, v9

    goto :goto_10a

    :cond_108
    move/from16 v21, v11

    .line 1280
    :goto_10a
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x40000000  # 2.0f

    div-float v22, v7, v9

    .line 1281
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float v23, v7, v10

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1282
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    .line 1283
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    .line 1284
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    mul-float/2addr v12, v11

    sub-float/2addr v10, v12

    .line 1285
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    .line 1286
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    .line 1287
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    mul-float/2addr v3, v11

    sub-float/2addr v13, v3

    .line 1291
    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v3, :cond_166

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_166

    if-eqz v1, :cond_166

    .line 1292
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v11

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 1293
    iget v3, v6, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v13, v3

    .line 1295
    :cond_166
    sub-float/2addr v7, v10

    .line 1296
    sub-float/2addr v12, v13

    .line 1297
    if-eqz v1, :cond_174

    .line 1298
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_17d

    .line 1299
    :cond_174
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1300
    :goto_17d
    if-eqz v1, :cond_189

    .line 1301
    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v12, v1

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1, v12, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_192

    .line 1302
    :cond_189
    const/4 v1, 0x0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v12, v4

    invoke-direct {v0, v1, v7, v1, v12}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1304
    :goto_192
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1305
    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1306
    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    goto :goto_1dc

    .line 1310
    :cond_19c
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1311
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1313
    if-eqz v1, :cond_1b6

    .line 1314
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1bf

    .line 1315
    :cond_1b6
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1316
    :goto_1bf
    if-eqz v1, :cond_1cc

    .line 1317
    int-to-float v1, v15

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    int-to-float v3, v11

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v3, v6}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1d6

    .line 1319
    :cond_1cc
    const/4 v6, 0x0

    int-to-float v1, v15

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    int-to-float v3, v11

    invoke-direct {v0, v6, v1, v6, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1322
    :goto_1d6
    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1323
    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1325
    :goto_1dc
    nop

    .line 1326
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1328
    move-object v1, v5

    .line 1356
    :goto_1e2
    nop

    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 1356
    move-object/from16 p1, v1

    move/from16 p2, v8

    move/from16 p3, v16

    move-wide/from16 p4, v2

    move-object/from16 p6, v4

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .registers 9

    .line 1034
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1035
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 1037
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 1038
    invoke-virtual {v1, v0, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 1039
    const/4 v3, 0x0

    const v4, 0x3f19999a  # 0.6f

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1040
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1042
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1043
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, p2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v4, v5, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1048
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v0, 0x106000b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1049
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1050
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 1052
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 11

    .line 1056
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1059
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1058
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .registers 35

    .line 1069
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1070
    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v3, :cond_10

    int-to-float v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 1071
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1074
    int-to-float v8, v7

    div-float v5, v8, v5

    .line 1075
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v9, p4

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1082
    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {v0, v8, v9}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 1083
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 1084
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 1088
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v11, v5, v4

    mul-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    div-float v12, v4, v5

    sub-float v12, v4, v12

    mul-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1090
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    div-float/2addr v13, v5

    .line 1092
    iget-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v14, :cond_76

    .line 1095
    int-to-float v14, v6

    sub-float/2addr v9, v14

    .line 1096
    mul-float/2addr v14, v5

    sub-float/2addr v11, v14

    move v14, v12

    move v12, v8

    move v8, v13

    move v13, v10

    move v10, v9

    goto :goto_93

    .line 1092
    :cond_76
    move v14, v12

    move v12, v8

    move v8, v13

    move v13, v10

    move v10, v9

    goto :goto_93

    .line 1099
    :cond_7c
    nop

    .line 1100
    nop

    .line 1101
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 1102
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 1103
    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    .line 1104
    iget v11, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move v12, v8

    move v13, v10

    const/4 v8, 0x0

    const/4 v14, 0x0

    move v10, v9

    .line 1106
    :goto_93
    move/from16 p4, v12

    move/from16 p3, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v12

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 1108
    iget-boolean v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v15, :cond_16c

    .line 1110
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000  # 1.0f

    const/high16 v17, 0x3f800000  # 1.0f

    move-object v4, v9

    move-object v9, v15

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v19, v11

    move v11, v5

    move-wide/from16 v20, v12

    move/from16 v13, p4

    move/from16 v12, v17

    move/from16 v22, p3

    move/from16 v23, v13

    move v13, v5

    move/from16 p3, v7

    move-object v7, v15

    const/4 v2, 0x0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1111
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1112
    move-wide/from16 v12, v20

    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1113
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v8, v9, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1114
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v2, v9, :cond_dd

    .line 1115
    sget-object v2, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_df

    :cond_dd
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1114
    :goto_df
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1116
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v2, v9, :cond_eb

    .line 1117
    const-wide/16 v9, 0x2

    div-long v9, v12, v9

    goto :goto_ec

    .line 1118
    :cond_eb
    move-wide v9, v12

    .line 1116
    :goto_ec
    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1119
    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v2, v22

    move/from16 v15, v23

    invoke-direct {v0, v15, v2, v10, v11}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1120
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1121
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1123
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1124
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1128
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1129
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1130
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 1132
    move-object/from16 v3, p2

    if-eqz v3, :cond_144

    .line 1133
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iget v10, v3, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    neg-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v6, v9, v10, v11, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1139
    :cond_144
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1140
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1141
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1144
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1145
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1146
    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v5, :cond_163

    .line 1148
    invoke-virtual {v4, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1150
    :cond_163
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1151
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    nop

    .line 1153
    move-object v3, v4

    goto :goto_1c4

    .line 1155
    :cond_16c
    move/from16 v2, p3

    move/from16 v15, p4

    move/from16 p3, v7

    move-object v4, v9

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    move-object v9, v6

    move/from16 v24, v10

    move v10, v5

    move/from16 v25, v11

    move v11, v7

    move-wide/from16 v26, v12

    move v12, v5

    move/from16 v13, v16

    move v5, v15

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1156
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1157
    move-wide/from16 v7, v26

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1158
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v9, v3, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1159
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1160
    invoke-virtual {v9, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1161
    move/from16 v3, v24

    move/from16 v11, v25

    invoke-direct {v0, v2, v5, v11, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1162
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1163
    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1166
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1167
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    iget-boolean v4, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v4, :cond_1c0

    .line 1170
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1172
    :cond_1c0
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1173
    nop

    .line 1176
    :goto_1c4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 p1, v3

    move/from16 p2, p3

    move/from16 p3, v1

    move-wide/from16 p4, v4

    move-object/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .registers 22

    .line 1472
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1474
    move/from16 v5, p4

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 1476
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1477
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    goto :goto_21

    :cond_20
    move v6, v3

    .line 1478
    :goto_21
    const/high16 v7, 0x3f800000  # 1.0f

    if-lez v6, :cond_27

    int-to-float v6, v6

    goto :goto_28

    :cond_27
    move v6, v7

    .line 1479
    :goto_28
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    goto :goto_30

    :cond_2f
    move v5, v4

    .line 1480
    :goto_30
    if-lez v5, :cond_34

    int-to-float v5, v5

    goto :goto_35

    :cond_34
    move v5, v7

    .line 1482
    :goto_35
    if-eqz v1, :cond_94

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v9, :cond_84

    const/4 v10, 0x2

    if-eq v1, v10, :cond_7e

    const/4 v10, 0x3

    if-ne v1, v10, :cond_76

    .line 1513
    int-to-float v1, v3

    div-float v12, v6, v1

    .line 1514
    int-to-float v1, v4

    div-float v14, v5, v1

    .line 1515
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v13, 0x3f800000  # 1.0f

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1516
    invoke-static {v5, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1517
    invoke-static {v5, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v16

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1519
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1521
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1522
    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1524
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1525
    nop

    .line 1526
    goto :goto_b5

    .line 1529
    :cond_76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1508
    :cond_7e
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1509
    goto :goto_b5

    .line 1494
    :cond_84
    const/16 v1, 0xe

    if-ne v2, v1, :cond_8e

    .line 1498
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_b5

    .line 1501
    :cond_8e
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1503
    goto :goto_b5

    .line 1485
    :cond_94
    int-to-float v1, v3

    div-float v8, v6, v1

    .line 1486
    int-to-float v1, v4

    div-float v10, v5, v1

    .line 1487
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v11, 0x3f800000  # 1.0f

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1488
    invoke-static {v5, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v12

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1489
    invoke-static {v5, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v13

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1490
    move-object v6, v1

    .line 1532
    :goto_b5
    invoke-virtual {v0, v6, v3, v4, v2}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 15

    .line 1431
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1432
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    .line 1433
    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_f

    int-to-float v0, v0

    goto :goto_10

    :cond_f
    move v0, v1

    .line 1434
    :goto_10
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p4

    .line 1435
    if-lez p4, :cond_18

    int-to-float p4, p4

    goto :goto_19

    :cond_18
    move p4, v1

    .line 1437
    :goto_19
    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_60

    .line 1439
    int-to-float v2, p1

    div-float v5, v2, v0

    .line 1440
    int-to-float v0, p2

    div-float v7, v0, p4

    .line 1441
    new-instance p4, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-float v2, v1, v5

    .line 1442
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-float v2, v1, v7

    .line 1443
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, p4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1446
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1447
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1450
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1451
    invoke-virtual {v1, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1452
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1453
    nop

    .line 1454
    move-object p4, v1

    goto :goto_83

    .line 1456
    :cond_60
    int-to-float v2, p1

    div-float v4, v2, v0

    .line 1457
    int-to-float v0, p2

    div-float v6, v0, p4

    .line 1458
    new-instance p4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-float v2, v1, v4

    .line 1459
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-float/2addr v1, v6

    .line 1460
    invoke-static {v0, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, p4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1463
    :goto_83
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 2145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_28

    .line 2148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2149
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    :cond_28
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const-string v1, "mNextAppTransitionPackage="

    packed-switch v0, :pswitch_data_130

    goto/16 :goto_e2

    .line 2161
    :pswitch_31  #0x7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2164
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    goto/16 :goto_e2

    .line 2182
    :pswitch_4f  #0x3, 0x4, 0x5, 0x6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_e2

    .line 2167
    :pswitch_77  #0x2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2170
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2174
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2176
    goto :goto_e2

    .line 2153
    :pswitch_b7  #0x1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2157
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    nop

    .line 2191
    :goto_e2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_f3

    .line 2192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2195
    :cond_f3
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_12f

    .line 2196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastChangingApp="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    :cond_12f
    return-void

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_77  #00000002
        :pswitch_4f  #00000003
        :pswitch_4f  #00000004
        :pswitch_4f  #00000005
        :pswitch_4f  #00000006
        :pswitch_31  #00000007
    .end packed-switch
.end method

.method freeze()V
    .registers 4

    .line 465
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_b

    .line 471
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 473
    :cond_b
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 474
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 476
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 477
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 545
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 546
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    .line 551
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 553
    :cond_9
    return v0
.end method

.method getAppStackClipMode()I
    .registers 3

    .line 1815
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x15

    if-ne v0, v1, :cond_b

    goto :goto_1e

    .line 1821
    :cond_b
    const/16 v1, 0x12

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    goto :goto_1c

    .line 1823
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    .line 1822
    :cond_1c
    :goto_1c
    const/4 v0, 0x2

    .line 1819
    :goto_1d
    return v0

    .line 1817
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/AppTransitionAnimationSpec;

    .line 376
    if-nez p1, :cond_c

    .line 377
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 379
    :cond_c
    if-eqz p1, :cond_11

    iget-object p1, p1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method getDefaultWindowAnimationStyleResId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 539
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getLastClipRevealMaxTranslation()I
    .registers 2

    .line 822
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .registers 3

    .line 815
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .registers 5

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 793
    if-nez v0, :cond_c

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 796
    :cond_c
    if-eqz v0, :cond_19

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_13

    goto :goto_19

    .line 801
    :cond_13
    iget-object p1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 797
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting rect for task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requested, but not available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 803
    :goto_3c
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .registers 2

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .registers 2

    .line 1013
    if-eqz p1, :cond_a

    .line 1014
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_8

    .line 1015
    const/4 p1, 0x0

    return p1

    .line 1017
    :cond_8
    const/4 p1, 0x2

    return p1

    .line 1020
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_10

    .line 1021
    const/4 p1, 0x1

    return p1

    .line 1023
    :cond_10
    const/4 p1, 0x3

    return p1
.end method

.method public getTransitFlags()I
    .registers 2

    .line 1827
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 435
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 436
    if-eqz p2, :cond_11

    .line 437
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p2

    goto :goto_12

    .line 438
    :cond_11
    const/4 p2, 0x0

    .line 439
    :goto_12
    nop

    .line 440
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    move-wide v4, v0

    .line 441
    if-eqz p2, :cond_25

    .line 442
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_2a

    .line 443
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v6, v0

    :goto_2a
    const-wide/16 v8, 0x78

    .line 439
    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(IJJJ)I

    move-result p2

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 446
    invoke-virtual {v0, p3, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 448
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz p1, :cond_42

    .line 449
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 451
    :cond_42
    return p2
.end method

.method hadClipRevealAnimation()Z
    .registers 2

    .line 829
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .registers 3

    .line 405
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .registers 3

    .line 399
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .registers 3

    .line 394
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 3

    .line 384
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .line 349
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method isRunning()Z
    .registers 3

    .line 359
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTimeout()Z
    .registers 3

    .line 367
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransitionEqual(I)Z
    .registers 3

    .line 326
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method isTransitionSet()Z
    .registers 3

    .line 322
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public synthetic lambda$fetchAppTransitionSpecsFromFuture$1$AppTransition(Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 6

    .line 1989
    nop

    .line 1991
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1992
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e

    .line 1995
    goto :goto_26

    .line 1993
    :catch_e
    move-exception p1

    .line 1994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch app transition specs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 1996
    :goto_26
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1997
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1998
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2001
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2002
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2003
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2004
    return-void

    .line 2002
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$new$0$AppTransition()V
    .registers 1

    .line 269
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .registers 30

    .line 1619
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v2, p3

    move-object/from16 v5, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    .line 1620
    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1621
    :cond_18
    const/16 v3, 0x16

    if-ne v4, v3, :cond_1f

    .line 1622
    const/4 v6, 0x0

    goto/16 :goto_1c3

    .line 1623
    :cond_1f
    const/16 v7, 0x17

    if-ne v4, v7, :cond_2e

    if-nez v2, :cond_2e

    .line 1624
    const v2, 0x10a00c8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1625
    :cond_2e
    const/16 v8, 0x1a

    if-ne v4, v8, :cond_35

    .line 1626
    const/4 v6, 0x0

    goto/16 :goto_1c3

    .line 1627
    :cond_35
    const/16 v8, 0xa

    const/16 v9, 0x8

    const/4 v10, 0x6

    if-eqz p11, :cond_51

    if-eq v4, v10, :cond_42

    if-eq v4, v9, :cond_42

    if-ne v4, v8, :cond_51

    .line 1630
    :cond_42
    if-eqz v2, :cond_48

    .line 1631
    const v2, 0x10a00bb

    goto :goto_4b

    .line 1632
    :cond_48
    const v2, 0x10a00bc

    .line 1630
    :goto_4b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1637
    :cond_51
    const/16 v11, 0xb

    const/16 v12, 0x9

    const/4 v13, 0x7

    if-eqz p11, :cond_6d

    if-eq v4, v13, :cond_5e

    if-eq v4, v12, :cond_5e

    if-ne v4, v11, :cond_6d

    .line 1640
    :cond_5e
    if-eqz v2, :cond_64

    .line 1641
    const v2, 0x10a00b9

    goto :goto_67

    .line 1642
    :cond_64
    const v2, 0x10a00ba

    .line 1640
    :goto_67
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1647
    :cond_6d
    const/16 v14, 0x12

    if-ne v4, v14, :cond_79

    .line 1648
    move-object/from16 v15, p8

    invoke-direct {v0, v5, v15}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1654
    :cond_79
    move-object/from16 v15, p8

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8f

    .line 1655
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_87

    .line 1656
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_89

    :cond_87
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1655
    :goto_89
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1662
    :cond_8f
    if-ne v3, v13, :cond_9b

    .line 1663
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1669
    :cond_9b
    if-ne v3, v9, :cond_a5

    .line 1670
    move-object/from16 v1, p7

    invoke-direct {v0, v4, v2, v5, v1}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1676
    :cond_a5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_ae

    .line 1677
    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v6

    goto/16 :goto_1c3

    .line 1683
    :cond_ae
    const/4 v6, 0x3

    if-eq v3, v6, :cond_1b0

    const/4 v7, 0x4

    if-ne v3, v7, :cond_b6

    goto/16 :goto_1b0

    .line 1697
    :cond_b6
    const/4 v7, 0x5

    if-eq v3, v7, :cond_189

    if-ne v3, v10, :cond_bd

    goto/16 :goto_189

    .line 1712
    :cond_bd
    if-ne v3, v12, :cond_fb

    if-eqz v2, :cond_fb

    .line 1713
    const v1, 0x10a00b1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEntrance=true Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1715
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    goto/16 :goto_1c3

    .line 1719
    :cond_fb
    const/16 v3, 0x1b

    if-ne v4, v3, :cond_10f

    .line 1721
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1722
    const-wide/16 v0, 0x150

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_1c3

    .line 1729
    :cond_10f
    nop

    .line 1730
    const/16 v3, 0x13

    if-eq v4, v3, :cond_179

    const/16 v3, 0x18

    if-eq v4, v3, :cond_173

    const/16 v3, 0x19

    if-eq v4, v3, :cond_16d

    packed-switch v4, :pswitch_data_1c4

    const/4 v6, 0x0

    goto/16 :goto_17f

    .line 1785
    :pswitch_122  #0x10
    if-eqz v2, :cond_128

    .line 1786
    const/16 v2, 0x19

    move v6, v2

    goto :goto_12b

    .line 1787
    :cond_128
    const/16 v2, 0x18

    move v6, v2

    :goto_12b
    goto/16 :goto_17f

    .line 1780
    :pswitch_12d  #0xf
    if-eqz v2, :cond_132

    .line 1781
    const/16 v6, 0x16

    goto :goto_134

    .line 1782
    :cond_132
    const/16 v6, 0x17

    .line 1783
    :goto_134
    goto/16 :goto_17f

    .line 1775
    :pswitch_136  #0xe
    if-eqz v2, :cond_13c

    .line 1776
    const/16 v2, 0x14

    move v6, v2

    goto :goto_13f

    .line 1777
    :cond_13c
    const/16 v2, 0x15

    move v6, v2

    .line 1778
    :goto_13f
    goto/16 :goto_17f

    .line 1765
    :pswitch_141  #0xd
    if-eqz v2, :cond_147

    .line 1766
    const/16 v2, 0x10

    move v6, v2

    goto :goto_14a

    .line 1767
    :cond_147
    const/16 v2, 0x11

    move v6, v2

    .line 1768
    :goto_14a
    goto :goto_17f

    .line 1770
    :pswitch_14b  #0xc
    if-eqz v2, :cond_14f

    .line 1771
    move v6, v14

    goto :goto_152

    .line 1772
    :cond_14f
    const/16 v14, 0x13

    move v6, v14

    .line 1773
    :goto_152
    goto :goto_17f

    .line 1760
    :pswitch_153  #0xb
    if-eqz v2, :cond_159

    .line 1761
    const/16 v2, 0xe

    move v6, v2

    goto :goto_15c

    .line 1762
    :cond_159
    const/16 v2, 0xf

    move v6, v2

    .line 1763
    :goto_15c
    goto :goto_17f

    .line 1755
    :pswitch_15d  #0xa
    if-eqz v2, :cond_163

    .line 1756
    const/16 v2, 0xc

    move v6, v2

    goto :goto_166

    .line 1757
    :cond_163
    const/16 v2, 0xd

    move v6, v2

    .line 1758
    :goto_166
    goto :goto_17f

    .line 1750
    :pswitch_167  #0x9
    if-eqz v2, :cond_16b

    .line 1751
    move v6, v8

    goto :goto_16c

    .line 1752
    :cond_16b
    move v6, v11

    .line 1753
    :goto_16c
    goto :goto_17f

    .line 1739
    :cond_16d
    :pswitch_16d  #0x7
    if-eqz v2, :cond_171

    .line 1740
    move v6, v10

    goto :goto_172

    .line 1741
    :cond_171
    move v6, v13

    .line 1742
    :goto_172
    goto :goto_17f

    .line 1733
    :cond_173
    :pswitch_173  #0x6
    if-eqz v2, :cond_177

    .line 1734
    const/4 v6, 0x4

    goto :goto_178

    .line 1735
    :cond_177
    move v6, v7

    .line 1736
    :goto_178
    goto :goto_17f

    .line 1745
    :cond_179
    :pswitch_179  #0x8
    if-eqz v2, :cond_17d

    .line 1746
    move v6, v9

    goto :goto_17e

    .line 1747
    :cond_17d
    move v6, v12

    .line 1748
    :goto_17e
    nop

    .line 1789
    :goto_17f
    if-eqz v6, :cond_187

    invoke-virtual {v0, v1, v6, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v6, v0

    goto :goto_1c3

    :cond_187
    const/4 v6, 0x0

    goto :goto_1c3

    .line 1699
    :cond_189
    :goto_189
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v7, :cond_18f

    const/4 v1, 0x1

    goto :goto_190

    :cond_18f
    const/4 v1, 0x0

    :goto_190
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1701
    nop

    .line 1702
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1701
    move-object/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_1c3

    .line 1685
    :cond_1b0
    :goto_1b0
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v6, :cond_1b6

    const/4 v1, 0x1

    goto :goto_1b7

    :cond_1b6
    const/4 v1, 0x0

    :goto_1b7
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1687
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move/from16 v2, p13

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1797
    :goto_1c3
    return-object v6

    :pswitch_data_1c4
    .packed-switch 0x6
        :pswitch_173  #00000006
        :pswitch_16d  #00000007
        :pswitch_179  #00000008
        :pswitch_167  #00000009
        :pswitch_15d  #0000000a
        :pswitch_153  #0000000b
        :pswitch_14b  #0000000c
        :pswitch_141  #0000000d
        :pswitch_136  #0000000e
        :pswitch_12d  #0000000f
        :pswitch_122  #00000010
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 6

    .line 593
    nop

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 595
    const/4 v1, 0x0

    if-ltz p2, :cond_14

    .line 596
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 597
    if-eqz p1, :cond_14

    .line 598
    iget-object v0, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 599
    iget-object p1, p1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 602
    :cond_14
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result p1

    .line 603
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 604
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 606
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 634
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 635
    :catch_5
    move-exception p1

    .line 636
    const-string p2, "WindowManager"

    const-string v0, "Unable to load animation resource"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 510
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 511
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_17
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4

    .line 1955
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1957
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1958
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1959
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1961
    :cond_10
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6

    .line 1840
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1842
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1843
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1844
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1845
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1846
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1847
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1849
    :cond_17
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14

    .line 1886
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1887
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1888
    if-eqz p7, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1889
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1890
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1891
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1893
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1894
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1896
    :cond_20
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 12

    .line 1863
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1865
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1866
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1869
    :cond_19
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 13

    .line 1901
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1903
    if-eqz p4, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1904
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1905
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1906
    if-eqz p1, :cond_3c

    .line 1907
    const/4 p4, 0x0

    :goto_15
    array-length v0, p1

    if-ge p4, v0, :cond_3c

    .line 1908
    aget-object v0, p1, p4

    .line 1909
    if-eqz v0, :cond_39

    .line 1910
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v2, v0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1911
    if-nez p4, :cond_39

    .line 1914
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1915
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 1916
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1915
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1907
    :cond_39
    add-int/lit8 p4, p4, 0x1

    goto :goto_15

    .line 1921
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1922
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1923
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1925
    :cond_43
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5

    .line 1930
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1932
    if-eqz p3, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1933
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1934
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1935
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1936
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1938
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 1941
    :cond_1f
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 5

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1948
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1949
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1952
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 12

    .line 1853
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1855
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1856
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1859
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .registers 2

    .line 1967
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1969
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1972
    :cond_10
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13

    .line 1873
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1874
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1875
    if-eqz p5, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    .line 1876
    :cond_d
    const/4 v0, 0x4

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1877
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1878
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1880
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1882
    :cond_20
    return-void
.end method

.method postAnimationCallback()V
    .registers 4

    .line 1831
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_12

    .line 1832
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1836
    :cond_12
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .registers 7

    .line 2223
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_e

    if-ne p1, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2225
    :goto_f
    if-nez p4, :cond_60

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result p4

    if-nez p4, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p4

    if-eqz p4, :cond_60

    iget p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz p4, :cond_60

    if-eqz v0, :cond_24

    goto :goto_60

    .line 2232
    :cond_24
    if-nez p2, :cond_63

    invoke-static {p4}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result p2

    if-nez p2, :cond_63

    iget p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq p2, v1, :cond_63

    .line 2234
    const/16 p2, 0x8

    if-ne p1, p2, :cond_40

    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 2236
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_63

    .line 2237
    :cond_40
    const/4 p2, 0x6

    if-ne p1, p2, :cond_4e

    const/4 p2, 0x7

    .line 2238
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 2240
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_63

    .line 2241
    :cond_4e
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result p2

    if-eqz p2, :cond_63

    iget p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 2244
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_63

    .line 2227
    :cond_60
    :goto_60
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2247
    :cond_63
    :goto_63
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result p1

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2250
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2252
    :cond_79
    return p1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 12

    .line 996
    const/4 v0, 0x6

    if-eq p4, v0, :cond_9

    const/4 v0, 0x7

    if-eq p4, v0, :cond_9

    .line 1002
    const/16 p4, 0x150

    goto :goto_c

    .line 999
    :cond_9
    iget p4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 1000
    nop

    .line 1005
    :goto_c
    int-to-long v4, p4

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9

    .line 977
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_9

    .line 978
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 980
    :cond_9
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 981
    if-eqz p6, :cond_12

    .line 982
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 984
    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 985
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .registers 3

    .line 2331
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2332
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 2208
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2209
    return-void
.end method

.method setIdle()V
    .registers 2

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 364
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 6

    .line 342
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 346
    return-void
.end method

.method setReady()V
    .registers 2

    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 356
    return-void
.end method

.method setTimeout()V
    .registers 2

    .line 371
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 372
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method updateBooster()V
    .registers 3

    .line 490
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 491
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 2137
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2138
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2139
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2140
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2141
    return-void
.end method
