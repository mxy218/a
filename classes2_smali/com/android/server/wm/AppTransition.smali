.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransition$CornerAnimation;
    }
.end annotation


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

.field private static sDisableFlymeAnimation:Z


# instance fields
.field private mAnimArray:Landroid/util/SparseIntArray;

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

    .line 164
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3e99999a  # 0.3f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 167
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a  # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 2380
    const-string v0, "persist.sdk.debug.disable_anim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/AppTransition;->sDisableFlymeAnimation:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p3, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 184
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 207
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 243
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 252
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd  # 0.4f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 256
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 257
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 260
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 2381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 277
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 278
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 279
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 280
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 282
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 284
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 288
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 290
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000  # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 315
    const-string v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 316
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 320
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppTransition;

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppTransition;

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/IRemoteCallback;)V
    .registers 1
    .param p0, "x0"  # Landroid/os/IRemoteCallback;

    .line 152
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .line 2142
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2150
    :cond_21
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2148
    :cond_24
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2146
    :cond_27
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2144
    :cond_2a
    const-string v0, "APP_STATE_IDLE"

    return-object v0
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "transition"  # I

    .line 2068
    const/4 v0, -0x1

    if-eq p0, v0, :cond_61

    if-eqz p0, :cond_5e

    packed-switch p0, :pswitch_data_64

    packed-switch p0, :pswitch_data_7e

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2133
    :pswitch_22  #0x1a
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2130
    :pswitch_25  #0x19
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2127
    :pswitch_28  #0x18
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2124
    :pswitch_2b  #0x17
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2121
    :pswitch_2e  #0x16
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2118
    :pswitch_31  #0x15
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2115
    :pswitch_34  #0x14
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2112
    :pswitch_37  #0x13
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2109
    :pswitch_3a  #0x12
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2106
    :pswitch_3d  #0x10
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2103
    :pswitch_40  #0xf
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2100
    :pswitch_43  #0xe
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2097
    :pswitch_46  #0xd
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2094
    :pswitch_49  #0xc
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 2091
    :pswitch_4c  #0xb
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 2088
    :pswitch_4f  #0xa
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 2085
    :pswitch_52  #0x9
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 2082
    :pswitch_55  #0x8
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 2079
    :pswitch_58  #0x7
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 2076
    :pswitch_5b  #0x6
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 2073
    :cond_5e
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 2070
    :cond_61
    const-string v0, "TRANSIT_UNSET"

    return-object v0

    :pswitch_data_64
    .packed-switch 0x6
        :pswitch_5b  #00000006
        :pswitch_58  #00000007
        :pswitch_55  #00000008
        :pswitch_52  #00000009
        :pswitch_4f  #0000000a
        :pswitch_4c  #0000000b
        :pswitch_49  #0000000c
        :pswitch_46  #0000000d
        :pswitch_43  #0000000e
        :pswitch_40  #0000000f
        :pswitch_3d  #00000010
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x12
        :pswitch_3a  #00000012
        :pswitch_37  #00000013
        :pswitch_34  #00000014
        :pswitch_31  #00000015
        :pswitch_2e  #00000016
        :pswitch_2b  #00000017
        :pswitch_28  #00000018
        :pswitch_25  #00000019
        :pswitch_22  #0000001a
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 8
    .param p1, "cutOff"  # Z
    .param p2, "translationX"  # F
    .param p3, "translationY"  # F
    .param p4, "displayFrame"  # Landroid/graphics/Rect;

    .line 875
    if-nez p1, :cond_5

    .line 876
    const-wide/16 v0, 0x150

    return-wide v0

    .line 878
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 879
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 878
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 880
    .local v0, "fraction":F
    const/high16 v1, 0x43a80000  # 336.0f

    const/high16 v2, 0x42a80000  # 84.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-long v1, v2

    return-wide v1
.end method

.method private canOverridePendingAppTransition()Z
    .registers 3

    .line 2024
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
    .registers 5
    .param p0, "startPos"  # I
    .param p1, "finalScale"  # F

    .line 748
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float v0, p1, v0

    .line 749
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717  # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 750
    int-to-float v1, p0

    return v1

    .line 752
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"  # Landroid/graphics/Rect;
    .param p3, "taskId"  # I

    .line 1392
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"  # Landroid/graphics/Rect;
    .param p3, "taskId"  # I

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 32
    .param p1, "sourceFrame"  # Landroid/graphics/Rect;
    .param p2, "destFrame"  # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"  # Landroid/graphics/Rect;
    .param p4, "enter"  # Z

    .line 1406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1407
    .local v4, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1408
    .local v5, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1409
    .local v6, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 1410
    .local v7, "destHeight":F
    if-eqz p4, :cond_21

    div-float v8, v4, v6

    goto :goto_23

    :cond_21
    div-float v8, v6, v4

    :goto_23
    move v10, v8

    .line 1411
    .local v10, "scaleH":F
    if-eqz p4, :cond_29

    div-float v8, v5, v7

    goto :goto_2b

    :cond_29
    div-float v8, v7, v5

    :goto_2b
    move v12, v8

    .line 1412
    .local v12, "scaleV":F
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1413
    .local v8, "set":Landroid/view/animation/AnimationSet;
    const/4 v9, 0x0

    if-nez v3, :cond_37

    .line 1414
    move v11, v9

    goto :goto_3c

    :cond_37
    iget v11, v3, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v13

    :goto_3c
    move v15, v11

    .line 1415
    .local v15, "surfaceInsetsH":I
    if-nez v3, :cond_40

    .line 1416
    goto :goto_45

    :cond_40
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    :goto_45
    move v14, v9

    .line 1419
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4a

    move v9, v6

    goto :goto_4b

    :cond_4a
    move v9, v4

    :goto_4b
    int-to-float v11, v15

    add-float/2addr v9, v11

    const/high16 v11, 0x40000000  # 2.0f

    div-float v23, v9, v11

    .line 1420
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_55

    move v9, v7

    goto :goto_56

    :cond_55
    move v9, v5

    :goto_56
    int-to-float v13, v14

    add-float/2addr v9, v13

    div-float v24, v9, v11

    .line 1421
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_70

    .line 1422
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v13, 0x3f800000  # 1.0f

    move-object/from16 v9, v16

    move/from16 v25, v14

    .end local v14  # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v23

    move/from16 v26, v15

    .end local v15  # "surfaceInsetsH":I
    .local v26, "surfaceInsetsH":I
    move/from16 v15, v24

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_87

    .line 1423
    .end local v25  # "surfaceInsetsV":I
    .end local v26  # "surfaceInsetsH":I
    .restart local v14  # "surfaceInsetsV":I
    .restart local v15  # "surfaceInsetsH":I
    :cond_70
    move/from16 v25, v14

    move/from16 v26, v15

    .end local v14  # "surfaceInsetsV":I
    .end local v15  # "surfaceInsetsH":I
    .restart local v25  # "surfaceInsetsV":I
    .restart local v26  # "surfaceInsetsH":I
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000  # 1.0f

    const/high16 v19, 0x3f800000  # 1.0f

    move-object/from16 v16, v9

    move/from16 v18, v10

    move/from16 v20, v12

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_87
    move-object/from16 v9, v16

    .line 1424
    .local v9, "scale":Landroid/view/animation/ScaleAnimation;
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    .line 1425
    .local v11, "sourceHCenter":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1426
    .local v13, "sourceVCenter":I
    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 1427
    .local v14, "destHCenter":I
    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 1428
    .local v15, "destVCenter":I
    if-eqz p4, :cond_b3

    sub-int v16, v11, v14

    goto :goto_b5

    :cond_b3
    sub-int v16, v14, v11

    :goto_b5
    move/from16 v17, v16

    .line 1429
    .local v17, "fromX":I
    if-eqz p4, :cond_bc

    sub-int v16, v13, v15

    goto :goto_be

    :cond_bc
    sub-int v16, v15, v13

    :goto_be
    move/from16 v18, v16

    .line 1430
    .local v18, "fromY":I
    if-eqz p4, :cond_d5

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v2, v17

    .end local v17  # "fromX":I
    .local v2, "fromX":I
    int-to-float v3, v2

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5  # "sourceHeight":F
    .local v4, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v5, v4

    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v6  # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v1, v3, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_e7

    .line 1431
    .end local v2  # "fromX":I
    .end local v19  # "destWidth":F
    .local v4, "sourceWidth":F
    .restart local v5  # "sourceHeight":F
    .restart local v6  # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_d5
    move/from16 v19, v6

    move/from16 v2, v17

    const/4 v6, 0x0

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5  # "sourceHeight":F
    .end local v6  # "destWidth":F
    .restart local v2  # "fromX":I
    .local v4, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19  # "destWidth":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v2

    int-to-float v5, v4

    invoke-direct {v1, v6, v3, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_e7
    nop

    .line 1432
    .local v1, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1433
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1435
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1436
    .local v3, "callback":Landroid/os/IRemoteCallback;
    if-eqz v3, :cond_fa

    .line 1437
    new-instance v5, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1451
    :cond_fa
    return-object v8
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 36
    .param p1, "transit"  # I
    .param p2, "enter"  # Z
    .param p3, "appFrame"  # Landroid/graphics/Rect;
    .param p4, "displayFrame"  # Landroid/graphics/Rect;

    .line 887
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz p2, :cond_160

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 889
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 893
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 895
    const/4 v7, 0x0

    .line 896
    .local v7, "t":F
    if-lez v15, :cond_28

    .line 897
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2a

    .line 896
    :cond_28
    move/from16 v16, v7

    .line 899
    .end local v7  # "t":F
    .local v16, "t":F
    :goto_2a
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000  # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 900
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 901
    .local v8, "translationX":I
    move v9, v7

    .line 902
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 903
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 904
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 905
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 906
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 907
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 908
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 913
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v14, v18, v20

    if-le v13, v14, :cond_76

    .line 914
    sub-int v13, v18, v20

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v13, v14

    .line 915
    const/4 v9, 0x0

    .line 916
    const/4 v11, 0x0

    .line 917
    const/4 v12, 0x1

    move v14, v7

    move/from16 v22, v9

    move/from16 v21, v11

    goto :goto_7b

    .line 913
    :cond_76
    move v14, v7

    move/from16 v22, v9

    move/from16 v21, v11

    .line 919
    .end local v7  # "translationY":I
    .end local v9  # "translationYCorrection":I
    .end local v11  # "clipStartY":I
    .local v14, "translationY":I
    .local v21, "clipStartY":I
    .local v22, "translationYCorrection":I
    :goto_7b
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_89

    .line 920
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 921
    const/4 v10, 0x0

    .line 922
    const/4 v12, 0x1

    .line 924
    :cond_89
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_a2

    .line 925
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 926
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 927
    const/4 v12, 0x1

    move v11, v10

    move v13, v12

    move v12, v8

    goto :goto_a5

    .line 924
    :cond_a2
    move v11, v10

    move v13, v12

    move v12, v8

    .line 929
    .end local v8  # "translationX":I
    .end local v10  # "clipStartX":I
    .local v11, "clipStartX":I
    .local v12, "translationX":I
    .local v13, "cutOff":Z
    :goto_a5
    int-to-float v7, v12

    int-to-float v8, v14

    move-object/from16 v10, p4

    invoke-direct {v0, v13, v7, v8, v10}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 933
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 934
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v11

    const/4 v5, 0x0

    invoke-direct {v7, v11, v4, v5, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v4, v7

    .line 935
    .local v4, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 936
    long-to-float v7, v8

    const/high16 v24, 0x40200000  # 2.5f

    div-float v7, v7, v24

    move/from16 v24, v6

    .end local v6  # "appWidth":I
    .local v24, "appWidth":I
    float-to-long v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 938
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v12

    int-to-float v7, v14

    invoke-direct {v5, v6, v3, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v5

    .line 939
    .local v3, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v13, :cond_d8

    sget-object v5, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_da

    .line 940
    :cond_d8
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 939
    :goto_da
    invoke-virtual {v3, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 941
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 943
    new-instance v5, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 944
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v6, v21, v6

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v7

    move-object v7, v5

    move-wide/from16 v28, v8

    .end local v8  # "duration":J
    .local v28, "duration":J
    move/from16 v8, v21

    move v9, v6

    move/from16 v10, v25

    move v6, v11

    .end local v11  # "clipStartX":I
    .local v6, "clipStartX":I
    move v11, v15

    move/from16 v25, v12

    .end local v12  # "translationX":I
    .local v25, "translationX":I
    move/from16 v12, v22

    move/from16 v30, v13

    .end local v13  # "cutOff":Z
    .local v30, "cutOff":Z
    move/from16 v13, v26

    move/from16 v26, v14

    .end local v14  # "translationY":I
    .local v26, "translationY":I
    move-object/from16 v14, v27

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 948
    .local v5, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 949
    move-wide/from16 v7, v28

    .end local v28  # "duration":J
    .local v7, "duration":J
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 952
    const-wide/16 v9, 0x4

    div-long v9, v7, v9

    .line 953
    .local v9, "alphaDuration":J
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f000000  # 0.5f

    const/high16 v13, 0x3f800000  # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 954
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 955
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 957
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 958
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 959
    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 960
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 961
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 962
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 963
    move/from16 v13, v24

    .end local v24  # "appWidth":I
    .local v13, "appWidth":I
    invoke-virtual {v12, v13, v15, v13, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 964
    move-object/from16 v23, v12

    .line 965
    .local v23, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 966
    iput-wide v7, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 970
    if-eqz v30, :cond_15a

    .line 971
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_15b

    :cond_15a
    const/4 v2, 0x0

    :goto_15b
    iput v2, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 972
    .end local v3  # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v4  # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v5  # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v6  # "clipStartX":I
    .end local v7  # "duration":J
    .end local v9  # "alphaDuration":J
    .end local v11  # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v12  # "set":Landroid/view/animation/AnimationSet;
    .end local v13  # "appWidth":I
    .end local v15  # "appHeight":I
    .end local v16  # "t":F
    .end local v17  # "centerX":I
    .end local v18  # "centerY":I
    .end local v19  # "halfWidth":I
    .end local v20  # "halfHeight":I
    .end local v21  # "clipStartY":I
    .end local v22  # "translationYCorrection":I
    .end local v25  # "translationX":I
    .end local v26  # "translationY":I
    .end local v30  # "cutOff":Z
    move-object/from16 v2, v23

    goto :goto_197

    .line 974
    .end local v23  # "anim":Landroid/view/animation/Animation;
    :cond_160
    const/4 v2, 0x6

    if-eq v1, v2, :cond_169

    const/4 v2, 0x7

    if-eq v1, v2, :cond_169

    .line 980
    const-wide/16 v4, 0x150

    .local v4, "duration":J
    goto :goto_16d

    .line 977
    .end local v4  # "duration":J
    :cond_169
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v4, v2

    .line 978
    .restart local v4  # "duration":J
    nop

    .line 983
    :goto_16d
    const/16 v2, 0xe

    if-eq v1, v2, :cond_181

    const/16 v2, 0xf

    if-ne v1, v2, :cond_178

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_183

    .line 993
    :cond_178
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v2, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v3, 0x1

    .local v2, "anim":Landroid/view/animation/Animation;
    goto :goto_18c

    .line 983
    .end local v2  # "anim":Landroid/view/animation/Animation;
    :cond_181
    const/high16 v6, 0x3f800000  # 1.0f

    .line 989
    :goto_183
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 990
    .restart local v2  # "anim":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 995
    :goto_18c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 996
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 997
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 999
    .end local v4  # "duration":J
    :goto_197
    return-object v2
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "fromX"  # F
    .param p2, "toX"  # F
    .param p3, "fromY"  # F
    .param p4, "toY"  # F

    .line 1213
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

    .line 1216
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1217
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1214
    .end local v0  # "path":Landroid/graphics/Path;
    :cond_1d
    :goto_1d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .registers 13
    .param p1, "fromX"  # F
    .param p2, "toX"  # F
    .param p3, "fromY"  # F
    .param p4, "toY"  # F

    .line 1222
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1223
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1225
    cmpl-float v1, p3, p4

    const v2, 0x3f666666  # 0.9f

    const v3, 0x3dcccccd  # 0.1f

    if-lez v1, :cond_20

    .line 1227
    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    add-float v5, v2, v3

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2d

    .line 1230
    :cond_20
    mul-float/2addr v3, p3

    mul-float/2addr v2, p4

    add-float v5, v3, v2

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1232
    :goto_2d
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16
    .param p1, "containingFrame"  # Landroid/graphics/Rect;
    .param p2, "contentInsets"  # Landroid/graphics/Rect;

    .line 1566
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1567
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1568
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1569
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1571
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1572
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1573
    .local v2, "set":Landroid/view/animation/AnimationSet;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1574
    .local v4, "fromWidth":F
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1575
    .local v5, "toWidth":F
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1579
    .local v6, "fromHeight":F
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1580
    .local v7, "toHeight":F
    const/4 v8, 0x0

    .line 1581
    .local v8, "translateAdjustment":I
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_60

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_60

    .line 1585
    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_74

    .line 1589
    :cond_60
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1593
    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    .line 1599
    :goto_74
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1601
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1602
    const-wide/16 v10, 0x150

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1603
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1604
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 21
    .param p1, "transit"  # I
    .param p2, "enter"  # Z
    .param p3, "containingFrame"  # Landroid/graphics/Rect;

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 760
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 761
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz p2, :cond_67

    .line 763
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 764
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 765
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v13, 0x3f800000  # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 766
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 767
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 768
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 770
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 771
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 773
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 774
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 775
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 776
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 777
    move-object v4, v6

    .line 778
    .end local v6  # "set":Landroid/view/animation/AnimationSet;
    .end local v7  # "scaleW":F
    .end local v8  # "scaleH":F
    .end local v9  # "scale":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_7f

    .end local v4  # "a":Landroid/view/animation/Animation;
    :cond_67
    const/16 v7, 0xe

    if-eq v1, v7, :cond_76

    const/16 v7, 0xf

    if-ne v1, v7, :cond_70

    goto :goto_76

    .line 788
    :cond_70
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4  # "a":Landroid/view/animation/Animation;
    goto :goto_7f

    .line 784
    .end local v4  # "a":Landroid/view/animation/Animation;
    :cond_76
    :goto_76
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 785
    .restart local v4  # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 795
    :goto_7f
    const/4 v6, 0x6

    if-eq v1, v6, :cond_88

    const/4 v6, 0x7

    if-eq v1, v6, :cond_88

    .line 801
    const-wide/16 v6, 0x150

    .local v6, "duration":J
    goto :goto_8c

    .line 798
    .end local v6  # "duration":J
    :cond_88
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v6, v6

    .line 799
    .restart local v6  # "duration":J
    nop

    .line 804
    :goto_8c
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 805
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 806
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 807
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 808
    return-object v4
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 2
    .param p0, "callback"  # Landroid/os/IRemoteCallback;

    .line 2370
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 2372
    goto :goto_6

    .line 2371
    :catch_5
    move-exception v0

    .line 2373
    :goto_6
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .line 2031
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_16

    .line 2032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2033
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2035
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2036
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2054
    .end local v0  # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_16
    return-void
.end method

.method private getAspectScaleDuration()J
    .registers 3

    .line 1236
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1237
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1239
    :cond_9
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 1244
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1247
    :cond_9
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;

    .line 566
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    if-eqz p1, :cond_16

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_17

    :cond_16
    move-object v3, v2

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    if-eqz p1, :cond_28

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v2

    :goto_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_33
    if-eqz p1, :cond_74

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_74

    .line 573
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_42

    :cond_40
    const-string v0, "android"

    .line 574
    .local v0, "packageName":Ljava/lang/String;
    :goto_42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 575
    .local v2, "resId":I
    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4f

    .line 576
    const-string v0, "android"

    .line 578
    :cond_4f
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_67
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    return-object v1

    .line 583
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v2  # "resId":I
    :cond_74
    return-object v2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "resId"  # I

    .line 587
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resId=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_26
    if-eqz p1, :cond_56

    .line 590
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_31

    .line 591
    const-string p1, "android"

    .line 593
    :cond_31
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_49
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 598
    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    goto :goto_11

    .line 817
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 814
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 819
    :goto_20
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .registers 6

    .line 2346
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2347
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2348
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_11

    .line 2349
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2351
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

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 2352
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 2353
    :cond_2f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_85

    .line 2354
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** APP TRANSITION TIMEOUT. displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isTransitionSet()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2357
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mOpeningApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 2358
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mClosingApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 2359
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mChangingApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 2360
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2354
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 2363
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2365
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_11 .. :try_end_90} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2366
    return-void

    .line 2365
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static isActivityTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2328
    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method static isChangeTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2334
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2305
    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

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

.method private static isKeyguardTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2310
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x16

    if-eq p0, v0, :cond_11

    const/16 v0, 0x17

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isTaskOpenTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2322
    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static isTaskTransit(I)Z
    .registers 2
    .param p0, "transit"  # I

    .line 2315
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
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static synthetic lambda$B95jxKE2FnT5RNLStTafenhEYj4(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"  # I

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 629
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 630
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 631
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_10

    .line 632
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 635
    :cond_10
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->mzOverlayAnim(Landroid/content/Context;I)I

    move-result p2

    .line 637
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 639
    .end local v1  # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "resId"  # I

    .line 643
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 645
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_2c

    .line 647
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/AppTransition;->mzOverlayAnim(Landroid/content/Context;I)I

    move-result p2

    .line 650
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/android/server/wm/AppTransition;->wrapToCornerAnimation(Landroid/content/Context;ILandroid/view/DisplayInfo;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 651
    .local v1, "animation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_25

    .line 652
    return-object v1

    .line 655
    :cond_25
    iget-object v2, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 658
    .end local v0  # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v1  # "animation":Landroid/view/animation/Animation;
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transit"  # I

    .line 1838
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    .line 1839
    const/4 v0, 0x0

    return-object v0

    .line 1841
    :cond_8
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1843
    .local v0, "toShade":Z
    :goto_10
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private mzOverlayAnim(Landroid/content/Context;I)I
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "id"  # I

    .line 2383
    sget-boolean v0, Lcom/android/server/wm/AppTransition;->sDisableFlymeAnimation:Z

    if-eqz v0, :cond_5

    .line 2384
    return p2

    .line 2386
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    if-nez v0, :cond_db

    .line 2387
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    .line 2388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2389
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_19

    .line 2390
    return p2

    .line 2392
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "android"

    const-string v3, "anim"

    const-string v4, "activity_open_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010010

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "activity_open_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010011

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "activity_close_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa01000e

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "activity_close_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa01000f

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2401
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "task_open_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010027

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2403
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "task_open_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010028

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2405
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "task_close_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010025

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2407
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "task_close_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa010026

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "wallpaper_open_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa01003a

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "wallpaper_open_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa01003b

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "wallpaper_close_enter"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0xa01003c

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v4, "wallpaper_close_exit"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const v3, 0xa01003d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2419
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const v2, 0x10a0099

    const v3, 0xa010013

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    const v2, 0x10a0098

    const v3, 0xa010012

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    .end local v0  # "res":Landroid/content/res/Resources;
    :cond_db
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2423
    .local v0, "overlayId":I
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_154

    .line 2424
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2427
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez p2, :cond_117

    if-lez v0, :cond_117

    .line 2428
    :try_start_f1
    const-string v6, "mzOverlayAnim anim=%s(%s), overlayAnim=%s(%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 2429
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 2430
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 2431
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    .line 2432
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 2428
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "message":Ljava/lang/String;
    goto :goto_14c

    .line 2433
    .end local v2  # "message":Ljava/lang/String;
    :cond_117
    if-lez p2, :cond_138

    .line 2434
    const-string v6, "mzOverlayAnim anim=%s(%s), overlayAnim=%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2435
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 2436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2437
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2434
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2  # "message":Ljava/lang/String;
    goto :goto_14c

    .line 2439
    .end local v2  # "message":Ljava/lang/String;
    :cond_138
    const-string v2, "mzOverlayAnim anim=%s, overlayAnim=%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2441
    .restart local v2  # "message":Ljava/lang/String;
    :goto_14c
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_151} :catch_153

    .line 2443
    nop

    .end local v2  # "message":Ljava/lang/String;
    goto :goto_154

    .line 2442
    :catch_153
    move-exception v2

    .line 2445
    .end local v1  # "res":Landroid/content/res/Resources;
    :cond_154
    :goto_154
    if-lez v0, :cond_157

    .line 2446
    return v0

    .line 2448
    :cond_157
    return p2
.end method

.method private needsBoosting()Z
    .registers 6

    .line 503
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

    .line 504
    .local v0, "recentsAnimRunning":Z
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
    .param p1, "transit"  # I

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(IJJJ)I
    .registers 20
    .param p1, "transit"  # I
    .param p2, "duration"  # J
    .param p4, "statusBarAnimationStartTime"  # J
    .param p6, "statusBarAnimationDuration"  # J

    .line 538
    move-object v0, p0

    const/4 v1, 0x0

    .line 539
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 540
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(IJJJ)I

    move-result v3

    or-int/2addr v1, v3

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 543
    .end local v2  # "i":I
    :cond_22
    return v1
.end method

.method private prepare()Z
    .registers 3

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 422
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 424
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 425
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 426
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 427
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_17
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .registers 10
    .param p1, "left"  # I
    .param p2, "top"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I
    .param p5, "buffer"  # Landroid/graphics/GraphicBuffer;

    .line 837
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 839
    return-void
.end method

.method private setAppTransition(II)V
    .registers 5
    .param p1, "transit"  # I
    .param p2, "flags"  # I

    .line 338
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 339
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 340
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 342
    return-void
.end method

.method private setAppTransitionState(I)V
    .registers 2
    .param p1, "state"  # I

    .line 489
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 490
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 491
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .registers 5
    .param p1, "uiMode"  # I
    .param p2, "orientation"  # I

    .line 2341
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-ne p2, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .line 2157
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_34

    .line 2177
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

    .line 2175
    :pswitch_19  #0x9
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2163
    :pswitch_1c  #0x7
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2173
    :pswitch_1f  #0x6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2171
    :pswitch_22  #0x5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2169
    :pswitch_25  #0x4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2167
    :pswitch_28  #0x3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2165
    :pswitch_2b  #0x2
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2161
    :pswitch_2e  #0x1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2159
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
    .param p1, "anim"  # I
    .param p2, "transit"  # I

    .line 672
    const/16 v0, 0x18

    if-ne p2, v0, :cond_d

    const v0, 0x10a0096

    if-ne p1, v0, :cond_d

    .line 673
    const v0, 0x10a0099

    return v0

    .line 675
    :cond_d
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1a

    const v0, 0x10a0095

    if-ne p1, v0, :cond_1a

    .line 676
    const v0, 0x10a0098

    return v0

    .line 678
    :cond_1a
    return p1
.end method

.method private static wrapToCornerAnimation(Landroid/content/Context;IFFLandroid/view/DisplayInfo;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "id"  # I
    .param p2, "fromRadius"  # F
    .param p3, "toRadius"  # F
    .param p4, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 2473
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2474
    return-object v0

    .line 2476
    :cond_4
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2477
    .local v1, "animation":Landroid/view/animation/Animation;
    if-nez v1, :cond_b

    .line 2478
    return-object v0

    .line 2481
    :cond_b
    new-instance v0, Lcom/android/server/wm/AppTransition$CornerAnimation;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/android/server/wm/AppTransition$CornerAnimation;-><init>(FFII)V

    .line 2483
    .local v0, "radiusCornerAnimation":Lcom/android/server/wm/AppTransition$CornerAnimation;
    instance-of v2, v1, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_20

    .line 2484
    move-object v2, v1

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getRealDuration()J

    move-result-wide v2

    .local v2, "duration":J
    goto :goto_24

    .line 2486
    .end local v2  # "duration":J
    :cond_20
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 2488
    .restart local v2  # "duration":J
    :goto_24
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/AppTransition$CornerAnimation;->setDuration(J)V

    .line 2489
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition$CornerAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2492
    instance-of v4, v1, Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_37

    .line 2493
    move-object v4, v1

    check-cast v4, Landroid/view/animation/AnimationSet;

    .local v4, "animationSet":Landroid/view/animation/AnimationSet;
    goto :goto_40

    .line 2495
    .end local v4  # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_37
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2496
    .restart local v4  # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2498
    :goto_40
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2499
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 2500
    return-object v4
.end method

.method private static wrapToCornerAnimation(Landroid/content/Context;ILandroid/view/DisplayInfo;)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "resId"  # I
    .param p2, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 2453
    sget-boolean v0, Lcom/android/server/wm/AppTransition;->sDisableFlymeAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2454
    return-object v1

    .line 2456
    :cond_6
    const/high16 v0, 0x42c00000  # 96.0f

    packed-switch p1, :pswitch_data_20

    packed-switch p1, :pswitch_data_2c

    .line 2469
    return-object v1

    .line 2458
    :pswitch_f  #0xa01003c
    invoke-static {p0, p1, v0, v0, p2}, Lcom/android/server/wm/AppTransition;->wrapToCornerAnimation(Landroid/content/Context;IFFLandroid/view/DisplayInfo;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 2460
    :pswitch_14  #0xa01003b
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/wm/AppTransition;->wrapToCornerAnimation(Landroid/content/Context;IFFLandroid/view/DisplayInfo;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 2465
    :pswitch_1a  #0xa010025, 0xa010026, 0xa010027, 0xa010028
    invoke-static {p0, p1, v0, v0, p2}, Lcom/android/server/wm/AppTransition;->wrapToCornerAnimation(Landroid/content/Context;IFFLandroid/view/DisplayInfo;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0xa010025
        :pswitch_1a  #0a010025
        :pswitch_1a  #0a010026
        :pswitch_1a  #0a010027
        :pswitch_1a  #0a010028
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0xa01003b
        :pswitch_14  #0a01003b
        :pswitch_f  #0a01003c
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .registers 4

    .line 1613
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

    .line 460
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_23

    .line 461
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTransition#clear, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 467
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 468
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 469
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 470
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 471
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 39
    .param p1, "thumbTransitState"  # I
    .param p2, "uiMode"  # I
    .param p3, "orientation"  # I
    .param p4, "transit"  # I
    .param p5, "containingFrame"  # Landroid/graphics/Rect;
    .param p6, "contentInsets"  # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"  # Landroid/graphics/Rect;
    .param p8, "stableInsets"  # Landroid/graphics/Rect;
    .param p9, "freeform"  # Z
    .param p10, "taskId"  # I

    .line 1260
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1261
    .local v15, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1262
    .local v16, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1263
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1264
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000  # 1.0f

    if-lez v6, :cond_29

    int-to-float v1, v6

    goto :goto_2a

    :cond_29
    move v1, v0

    :goto_2a
    move/from16 v17, v1

    .line 1265
    .local v17, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1266
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_36

    int-to-float v1, v4

    goto :goto_37

    :cond_36
    move v1, v0

    :goto_37
    move/from16 v18, v1

    .line 1267
    .local v18, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1268
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v19, v1, v2

    .line 1270
    .local v19, "thumbStartY":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_93

    const/16 v3, 0xe

    if-eq v8, v1, :cond_7b

    const/4 v1, 0x2

    if-eq v8, v1, :cond_63

    const/4 v1, 0x3

    if-ne v8, v1, :cond_5b

    goto :goto_93

    .line 1383
    :cond_5b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_63
    if-ne v9, v3, :cond_70

    .line 1376
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 1378
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_70
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1380
    .restart local v0  # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_217

    .line 1362
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_7b
    if-ne v9, v3, :cond_88

    .line 1365
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 1367
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_88
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1369
    .restart local v0  # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_217

    .line 1273
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_93
    :goto_93
    const/4 v1, 0x0

    if-nez v8, :cond_98

    const/4 v3, 0x1

    goto :goto_99

    :cond_98
    move v3, v1

    .line 1274
    .local v3, "scaleUp":Z
    :goto_99
    if-eqz p9, :cond_a6

    if-eqz v3, :cond_a6

    .line 1275
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 1277
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_a6
    if-eqz p9, :cond_b1

    .line 1278
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 1281
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_b1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1284
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1285
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1289
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1290
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1293
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1294
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1296
    move/from16 v2, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v21

    if-eqz v21, :cond_1cb

    .line 1298
    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v1, v15, v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v17, v1

    .line 1300
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_f7

    .line 1301
    div-float v2, v18, v1

    float-to-int v2, v2

    .line 1302
    .local v2, "unscaledThumbHeight":I
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1305
    .end local v2  # "unscaledThumbHeight":I
    :cond_f7
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1307
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1308
    if-eqz v3, :cond_103

    move/from16 v22, v1

    goto :goto_105

    :cond_103
    const/high16 v22, 0x3f800000  # 1.0f

    :goto_105
    if-eqz v3, :cond_10a

    const/high16 v23, 0x3f800000  # 1.0f

    goto :goto_10c

    :cond_10a
    move/from16 v23, v1

    .line 1309
    :goto_10c
    if-eqz v3, :cond_111

    move/from16 v24, v1

    goto :goto_113

    :cond_111
    const/high16 v24, 0x3f800000  # 1.0f

    :goto_113
    if-eqz v3, :cond_118

    const/high16 v25, 0x3f800000  # 1.0f

    goto :goto_11a

    :cond_118
    move/from16 v25, v1

    .line 1310
    :goto_11a
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000  # 2.0f

    div-float v26, v8, v9

    .line 1311
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v27, v8, v9

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1312
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1313
    .local v8, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v20, 0x40000000  # 2.0f

    div-float v9, v9, v20

    .line 1314
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    mul-float/2addr v12, v1

    sub-float/2addr v9, v12

    .line 1315
    .local v9, "x":F
    iget-object v12, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    int-to-float v12, v12

    .line 1316
    .local v12, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x40000000  # 2.0f

    div-float v14, v14, v20

    .line 1317
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v20

    mul-float/2addr v10, v1

    sub-float/2addr v14, v10

    .line 1321
    .local v14, "y":F
    iget-boolean v10, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v10, :cond_183

    iget v10, v11, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_183

    if-eqz v3, :cond_183

    .line 1322
    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    .end local v1  # "scale":F
    .local v20, "scale":F
    iget v1, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v15

    .end local v15  # "appWidth":I
    .local v21, "appWidth":I
    iget v15, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v10, Landroid/graphics/Rect;->top:I

    .line 1323
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v14, v1

    goto :goto_187

    .line 1321
    .end local v20  # "scale":F
    .end local v21  # "appWidth":I
    .restart local v1  # "scale":F
    .restart local v15  # "appWidth":I
    :cond_183
    move/from16 v20, v1

    move/from16 v21, v15

    .line 1325
    .end local v1  # "scale":F
    .end local v15  # "appWidth":I
    .restart local v20  # "scale":F
    .restart local v21  # "appWidth":I
    :goto_187
    sub-float v1, v8, v9

    .line 1326
    .local v1, "startX":F
    sub-float v10, v12, v14

    .line 1327
    .local v10, "startY":F
    if-eqz v3, :cond_19b

    .line 1328
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move/from16 v22, v8

    .end local v8  # "targetX":F
    .local v22, "targetX":F
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v23, v9

    .end local v9  # "x":F
    .local v23, "x":F
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1a8

    .line 1329
    .end local v22  # "targetX":F
    .end local v23  # "x":F
    .restart local v8  # "targetX":F
    .restart local v9  # "x":F
    :cond_19b
    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8  # "targetX":F
    .end local v9  # "x":F
    .restart local v22  # "targetX":F
    .restart local v23  # "x":F
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1a8
    move-object v8, v15

    .line 1330
    .local v8, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1b6

    .line 1331
    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    const/4 v15, 0x0

    invoke-direct {v7, v1, v15, v9, v15}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_1c0

    .line 1332
    :cond_1b6
    const/4 v15, 0x0

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    invoke-direct {v7, v15, v1, v15, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    :goto_1c0
    nop

    .line 1334
    .local v9, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1335
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1336
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1338
    .end local v1  # "startX":F
    .end local v2  # "scaleAnim":Landroid/view/animation/Animation;
    .end local v8  # "clipAnim":Landroid/view/animation/Animation;
    .end local v9  # "translateAnim":Landroid/view/animation/Animation;
    .end local v10  # "startY":F
    .end local v12  # "targetY":F
    .end local v14  # "y":F
    .end local v20  # "scale":F
    .end local v22  # "targetX":F
    .end local v23  # "x":F
    goto :goto_211

    .line 1340
    .end local v21  # "appWidth":I
    .restart local v15  # "appWidth":I
    :cond_1cb
    move/from16 v21, v15

    .end local v15  # "appWidth":I
    .restart local v21  # "appWidth":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1341
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1343
    if-eqz v3, :cond_1e7

    .line 1344
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1f0

    .line 1345
    :cond_1e7
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1f0
    nop

    .line 1346
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1ff

    .line 1347
    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_20a

    .line 1349
    :cond_1ff
    const/4 v9, 0x0

    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    invoke-direct {v7, v9, v2, v9, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_20a
    nop

    .line 1352
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1353
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1355
    .end local v1  # "clipAnim":Landroid/view/animation/Animation;
    .end local v2  # "translateAnim":Landroid/view/animation/Animation;
    :goto_211
    move-object v1, v0

    .line 1356
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1358
    .end local v0  # "set":Landroid/view/animation/AnimationSet;
    move-object v8, v1

    .line 1386
    .end local v1  # "a":Landroid/view/animation/Animation;
    .end local v3  # "scaleUp":Z
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_217
    nop

    .line 1387
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 1386
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v21

    move/from16 v3, v16

    move v14, v4

    move v15, v5

    .end local v4  # "thumbHeightI":I
    .end local v5  # "thumbStartX":I
    .local v14, "thumbHeightI":I
    .local v15, "thumbStartX":I
    move-wide v4, v9

    move v9, v6

    .end local v6  # "thumbWidthI":I
    .local v9, "thumbWidthI":I
    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .registers 13
    .param p1, "thumbnailDrawableRes"  # I
    .param p2, "frame"  # Landroid/graphics/Rect;

    .line 1064
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1065
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1067
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1068
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1069
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const v5, 0x3f19999a  # 0.6f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1070
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1072
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1073
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1078
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1079
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1080
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1082
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "appRect"  # Landroid/graphics/Rect;

    .line 1086
    const-string v0, "android"

    const v1, 0x10a00a8

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1088
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1089
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1088
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .registers 36
    .param p1, "appRect"  # Landroid/graphics/Rect;
    .param p2, "contentInsets"  # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"  # Landroid/graphics/GraphicBuffer;
    .param p4, "taskId"  # I
    .param p5, "uiMode"  # I
    .param p6, "orientation"  # I

    .line 1099
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1100
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000  # 1.0f

    if-lez v10, :cond_10

    int-to-float v1, v10

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    move v11, v1

    .line 1101
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1102
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1104
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1105
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1112
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1113
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1114
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1118
    .local v2, "fromY":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v21, v0

    mul-float/2addr v3, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 1119
    .local v3, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v0, v21

    sub-float v15, v0, v15

    mul-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 1120
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1121
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1122
    .local v0, "pivotY":F
    move/from16 v16, v0

    .end local v0  # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v0, :cond_7e

    .line 1125
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1126
    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    move v0, v2

    move/from16 v22, v15

    move/from16 v23, v16

    move v2, v1

    move v1, v14

    goto :goto_9f

    .line 1122
    :cond_7e
    move v0, v2

    move/from16 v22, v15

    move/from16 v23, v16

    move v2, v1

    move v1, v14

    goto :goto_9f

    .line 1129
    .end local v1  # "fromX":F
    .end local v2  # "fromY":F
    .end local v3  # "toX":F
    .end local v14  # "toY":F
    .end local v15  # "pivotX":F
    .end local v16  # "pivotY":F
    :cond_86
    const/4 v0, 0x0

    .line 1130
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1131
    .local v1, "pivotY":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 1132
    .local v2, "fromX":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1133
    .local v3, "fromY":F
    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    .line 1134
    .local v14, "toX":F
    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move/from16 v22, v0

    move/from16 v23, v1

    move v0, v3

    move v3, v14

    move v1, v15

    .line 1136
    .end local v14  # "toX":F
    .local v0, "fromY":F
    .local v1, "toY":F
    .local v3, "toX":F
    .local v22, "pivotX":F
    .local v23, "pivotY":F
    :goto_9f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1137
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1138
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v16, v14

    .end local v14  # "duration":J
    .local v16, "duration":J
    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_187

    .line 1140
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v18, 0x3f800000  # 1.0f

    const/high16 v19, 0x3f800000  # 1.0f

    move v5, v14

    move-wide/from16 v24, v16

    .end local v16  # "duration":J
    .local v24, "duration":J
    move-object v14, v4

    move v5, v15

    move/from16 v15, v18

    move/from16 v16, v21

    move/from16 v17, v19

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1141
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    move-wide/from16 v14, v24

    .end local v24  # "duration":J
    .restart local v14  # "duration":J
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1143
    move/from16 v24, v11

    .end local v11  # "thumbWidth":F
    .local v24, "thumbWidth":F
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v25, v13

    const/high16 v13, 0x3f800000  # 1.0f

    .end local v13  # "appWidth":I
    .local v25, "appWidth":I
    invoke-direct {v11, v13, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    .line 1144
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_e6

    .line 1145
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_e8

    :cond_e6
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1144
    :goto_e8
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_f6

    .line 1147
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    move-wide/from16 v8, v16

    goto :goto_f7

    .line 1148
    :cond_f6
    move-wide v8, v14

    .line 1146
    :goto_f7
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1149
    invoke-direct {v7, v2, v3, v0, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1150
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1151
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1153
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1154
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1158
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1159
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1160
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1162
    move-object/from16 v9, p2

    if-eqz v9, :cond_156

    .line 1163
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move/from16 v26, v10

    .end local v10  # "thumbWidthI":I
    .local v26, "thumbWidthI":I
    iget v10, v9, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v27, v12

    .end local v12  # "thumbHeightI":I
    .local v27, "thumbHeightI":I
    iget v12, v9, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v21

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    move/from16 v28, v0

    .end local v0  # "fromY":F
    .local v28, "fromY":F
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_15c

    .line 1162
    .end local v26  # "thumbWidthI":I
    .end local v27  # "thumbHeightI":I
    .end local v28  # "fromY":F
    .restart local v0  # "fromY":F
    .restart local v10  # "thumbWidthI":I
    .restart local v12  # "thumbHeightI":I
    :cond_156
    move/from16 v28, v0

    move/from16 v26, v10

    move/from16 v27, v12

    .line 1169
    .end local v0  # "fromY":F
    .end local v10  # "thumbWidthI":I
    .end local v12  # "thumbHeightI":I
    .restart local v26  # "thumbWidthI":I
    .restart local v27  # "thumbHeightI":I
    .restart local v28  # "fromY":F
    :goto_15c
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1170
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1171
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1174
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1175
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1176
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_17b

    .line 1178
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1180
    :cond_17b
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1181
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1182
    move-object v0, v10

    .line 1183
    .end local v4  # "scale":Landroid/view/animation/Animation;
    .end local v5  # "alpha":Landroid/view/animation/Animation;
    .end local v8  # "translate":Landroid/view/animation/Animation;
    .end local v10  # "set":Landroid/view/animation/AnimationSet;
    .local v0, "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move-wide v10, v14

    move/from16 v5, v28

    goto :goto_1dd

    .line 1185
    .end local v14  # "duration":J
    .end local v24  # "thumbWidth":F
    .end local v25  # "appWidth":I
    .end local v26  # "thumbWidthI":I
    .end local v27  # "thumbHeightI":I
    .end local v28  # "fromY":F
    .local v0, "fromY":F
    .local v10, "thumbWidthI":I
    .restart local v11  # "thumbWidth":F
    .restart local v12  # "thumbHeightI":I
    .restart local v13  # "appWidth":I
    .restart local v16  # "duration":J
    :cond_187
    move/from16 v28, v0

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v12

    move/from16 v25, v13

    move v5, v15

    move-wide/from16 v14, v16

    .end local v0  # "fromY":F
    .end local v10  # "thumbWidthI":I
    .end local v11  # "thumbWidth":F
    .end local v12  # "thumbHeightI":I
    .end local v13  # "appWidth":I
    .end local v16  # "duration":J
    .restart local v14  # "duration":J
    .restart local v24  # "thumbWidth":F
    .restart local v25  # "appWidth":I
    .restart local v26  # "thumbWidthI":I
    .restart local v27  # "thumbHeightI":I
    .restart local v28  # "fromY":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000  # 1.0f

    const/high16 v18, 0x3f800000  # 1.0f

    move-wide v10, v14

    .end local v14  # "duration":J
    .local v10, "duration":J
    move-object v14, v0

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1186
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1187
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1188
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1189
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1190
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1191
    move/from16 v5, v28

    .end local v28  # "fromY":F
    .local v5, "fromY":F
    invoke-direct {v7, v3, v2, v1, v5}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1192
    .restart local v8  # "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1193
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1196
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1197
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1198
    iget-boolean v13, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v13, :cond_1d8

    .line 1200
    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    :cond_1d8
    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    move-object v0, v12

    move-object v8, v0

    .line 1206
    .end local v0  # "scale":Landroid/view/animation/Animation;
    .end local v4  # "alpha":Landroid/view/animation/Animation;
    .end local v12  # "set":Landroid/view/animation/AnimationSet;
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_1dd
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v15, v5

    .end local v5  # "fromY":F
    .local v15, "fromY":F
    move-object/from16 v0, p0

    move/from16 v16, v1

    .end local v1  # "toY":F
    .local v16, "toY":F
    move-object v1, v8

    move/from16 v17, v2

    .end local v2  # "fromX":F
    .local v17, "fromX":F
    move/from16 v2, v25

    move/from16 v18, v3

    .end local v3  # "toX":F
    .local v18, "toX":F
    move v3, v4

    move-wide v4, v12

    move-object v12, v6

    .end local v6  # "interpolator":Landroid/view/animation/Interpolator;
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .registers 28
    .param p1, "thumbTransitState"  # I
    .param p2, "containingFrame"  # Landroid/graphics/Rect;
    .param p3, "transit"  # I
    .param p4, "taskId"  # I

    .line 1502
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1503
    .local v3, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1504
    .local v4, "appHeight":I
    move/from16 v5, p4

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    .line 1506
    .local v6, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1507
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    goto :goto_21

    :cond_20
    move v7, v3

    .line 1508
    .local v7, "thumbWidthI":I
    :goto_21
    const/high16 v8, 0x3f800000  # 1.0f

    if-lez v7, :cond_27

    int-to-float v9, v7

    goto :goto_28

    :cond_27
    move v9, v8

    .line 1509
    .local v9, "thumbWidth":F
    :goto_28
    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    goto :goto_30

    :cond_2f
    move v10, v4

    .line 1510
    .local v10, "thumbHeightI":I
    :goto_30
    if-lez v10, :cond_34

    int-to-float v11, v10

    goto :goto_35

    :cond_34
    move v11, v8

    .line 1512
    .local v11, "thumbHeight":F
    :goto_35
    if-eqz v1, :cond_9e

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v1, v13, :cond_8c

    const/4 v14, 0x2

    if-eq v1, v14, :cond_85

    const/4 v14, 0x3

    if-ne v1, v14, :cond_7d

    .line 1543
    int-to-float v14, v3

    div-float v14, v9, v14

    .line 1544
    .local v14, "scaleW":F
    int-to-float v15, v4

    div-float v15, v11, v15

    .line 1545
    .local v15, "scaleH":F
    new-instance v22, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000  # 1.0f

    const/high16 v18, 0x3f800000  # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 1546
    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v20

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1547
    invoke-static {v13, v15}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v21

    move v13, v15

    .end local v15  # "scaleH":F
    .local v13, "scaleH":F
    move-object/from16 v15, v22

    move/from16 v17, v14

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1549
    .local v15, "scale":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1551
    .local v1, "alpha":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1552
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1553
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1554
    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1555
    move-object v12, v8

    .line 1556
    .local v12, "a":Landroid/view/animation/Animation;
    goto :goto_c2

    .line 1559
    .end local v1  # "alpha":Landroid/view/animation/Animation;
    .end local v8  # "set":Landroid/view/animation/AnimationSet;
    .end local v12  # "a":Landroid/view/animation/Animation;
    .end local v13  # "scaleH":F
    .end local v14  # "scaleW":F
    .end local v15  # "scale":Landroid/view/animation/Animation;
    :cond_7d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v8, "Invalid thumbnail transition state"

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1538
    :cond_85
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1539
    .restart local v12  # "a":Landroid/view/animation/Animation;
    goto :goto_c2

    .line 1524
    .end local v12  # "a":Landroid/view/animation/Animation;
    :cond_8c
    const/16 v1, 0xe

    if-ne v2, v1, :cond_97

    .line 1528
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .restart local v12  # "a":Landroid/view/animation/Animation;
    goto :goto_c2

    .line 1531
    .end local v12  # "a":Landroid/view/animation/Animation;
    :cond_97
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1533
    .restart local v12  # "a":Landroid/view/animation/Animation;
    goto :goto_c2

    .line 1515
    .end local v12  # "a":Landroid/view/animation/Animation;
    :cond_9e
    int-to-float v1, v3

    div-float v1, v9, v1

    .line 1516
    .local v1, "scaleW":F
    int-to-float v8, v4

    div-float v8, v11, v8

    .line 1517
    .local v8, "scaleH":F
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 1518
    invoke-static {v12, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1519
    invoke-static {v12, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v1

    move v15, v8

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1520
    .restart local v12  # "a":Landroid/view/animation/Animation;
    nop

    .line 1562
    .end local v1  # "scaleW":F
    .end local v8  # "scaleH":F
    :goto_c2
    invoke-virtual {v0, v12, v3, v4, v2}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "appWidth"  # I
    .param p2, "appHeight"  # I
    .param p3, "transit"  # I
    .param p4, "thumbnailHeader"  # Landroid/graphics/GraphicBuffer;

    .line 1461
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1462
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1463
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v3, :cond_15

    int-to-float v5, v3

    goto :goto_16

    :cond_15
    move v5, v4

    .line 1464
    .local v5, "thumbWidth":F
    :goto_16
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1465
    .local v6, "thumbHeightI":I
    if-lez v6, :cond_1e

    int-to-float v7, v6

    goto :goto_1f

    :cond_1e
    move v7, v4

    .line 1467
    .local v7, "thumbHeight":F
    :goto_1f
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_69

    .line 1469
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1470
    .local v8, "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1471
    .local v16, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v12, 0x3f800000  # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    .line 1472
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    .line 1473
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1474
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1476
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 1477
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1480
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1481
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1482
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1483
    move-object v4, v10

    .line 1484
    .end local v8  # "scaleW":F
    .end local v9  # "scale":Landroid/view/animation/Animation;
    .end local v10  # "set":Landroid/view/animation/AnimationSet;
    .end local v16  # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_92

    .line 1486
    .end local v4  # "a":Landroid/view/animation/Animation;
    :cond_69
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1487
    .restart local v8  # "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1488
    .restart local v16  # "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v13, 0x3f800000  # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    .line 1489
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    .line 1490
    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v4, v17

    .line 1493
    .end local v8  # "scaleW":F
    .end local v16  # "scaleH":F
    .restart local v4  # "a":Landroid/view/animation/Animation;
    :goto_92
    move/from16 v8, p3

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v9

    return-object v9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_28

    .line 2193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    :cond_28
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const-string v1, "mNextAppTransitionPackage="

    packed-switch v0, :pswitch_data_130

    goto/16 :goto_e2

    .line 2206
    :pswitch_31  #0x7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    goto/16 :goto_e2

    .line 2227
    :pswitch_4f  #0x3, 0x4, 0x5, 0x6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_e2

    .line 2212
    :pswitch_77  #0x2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2215
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2219
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2221
    goto :goto_e2

    .line 2198
    :pswitch_b7  #0x1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    nop

    .line 2236
    :goto_e2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_f3

    .line 2237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2240
    :cond_f3
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_12f

    .line 2241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastChangingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
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

    .line 474
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 479
    .local v0, "transit":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_b

    .line 480
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 482
    :cond_b
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 483
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 485
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 486
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 554
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 555
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 560
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 562
    :cond_9
    return v0
.end method

.method getAppStackClipMode()I
    .registers 3

    .line 1850
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x15

    if-ne v0, v1, :cond_b

    goto :goto_1e

    .line 1856
    :cond_b
    const/16 v1, 0x12

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    goto :goto_1c

    .line 1858
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    .line 1857
    :cond_1c
    :goto_1c
    const/4 v0, 0x2

    .line 1854
    :goto_1d
    return v0

    .line 1852
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .registers 2

    .line 334
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .registers 4
    .param p1, "taskId"  # I

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 380
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 383
    :cond_c
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method getDefaultWindowAnimationStyleResId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 548
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getLastClipRevealMaxTranslation()I
    .registers 2

    .line 852
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .registers 3

    .line 845
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "taskId"  # I
    .param p2, "rect"  # Landroid/graphics/Rect;

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 823
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 826
    :cond_c
    if-eqz v0, :cond_19

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_13

    goto :goto_19

    .line 831
    :cond_13
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 827
    :cond_19
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting rect for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requested, but not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "WindowManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 833
    :goto_3c
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .registers 2

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"  # Z

    .line 1043
    if-eqz p1, :cond_a

    .line 1044
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 1045
    const/4 v0, 0x0

    return v0

    .line 1047
    :cond_8
    const/4 v0, 0x2

    return v0

    .line 1050
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 1051
    const/4 v0, 0x1

    return v0

    .line 1053
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .registers 2

    .line 1862
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I
    .registers 15
    .param p1, "transit"  # I
    .param p2, "topOpeningApp"  # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    .line 437
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 439
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 440
    if-eqz p2, :cond_11

    .line 441
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    goto :goto_12

    .line 442
    :cond_11
    const/4 v0, 0x0

    :goto_12
    nop

    .line 443
    .local v0, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 444
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v1

    goto :goto_1d

    :cond_1b
    const-wide/16 v1, 0x0

    :goto_1d
    move-wide v5, v1

    .line 445
    if-eqz v0, :cond_26

    .line 446
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_2b

    .line 447
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    :goto_2b
    const-wide/16 v9, 0x78

    .line 443
    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(IJJJ)I

    move-result v1

    .line 449
    .local v1, "redoLayout":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    .line 450
    invoke-virtual {v2, p3, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 452
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v2, :cond_43

    .line 453
    invoke-virtual {v2}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 455
    :cond_43
    return v1
.end method

.method hadClipRevealAnimation()Z
    .registers 2

    .line 859
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .registers 3

    .line 409
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

    .line 403
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

    .line 398
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

    .line 388
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

    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .line 353
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

    .line 363
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

    .line 371
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
    .param p1, "transit"  # I

    .line 330
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTransitionSet()Z
    .registers 3

    .line 326
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
    .registers 7
    .param p1, "future"  # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2037
    const/4 v0, 0x0

    .line 2039
    .local v0, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_1
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2040
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 2043
    goto :goto_25

    .line 2041
    :catch_e
    move-exception v1

    .line 2042
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch app transition specs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_25
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2045
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2046
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2049
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2050
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2051
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2052
    return-void

    .line 2050
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public synthetic lambda$new$0$AppTransition()V
    .registers 1

    .line 273
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .registers 35
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"  # I
    .param p3, "enter"  # Z
    .param p4, "uiMode"  # I
    .param p5, "orientation"  # I
    .param p6, "frame"  # Landroid/graphics/Rect;
    .param p7, "displayFrame"  # Landroid/graphics/Rect;
    .param p8, "insets"  # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"  # Landroid/graphics/Rect;
    .param p10, "stableInsets"  # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"  # Z
    .param p12, "freeform"  # Z
    .param p13, "taskId"  # I

    .line 1649
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v14, :cond_1d

    .line 1650
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_4b7

    .line 1651
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_1d
    const/16 v0, 0x16

    if-ne v13, v0, :cond_29

    .line 1652
    const/4 v0, 0x0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4b7

    .line 1653
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_29
    const/16 v1, 0x17

    if-ne v13, v1, :cond_55

    if-nez v14, :cond_55

    .line 1656
    iget-object v0, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.meizu.net.nativelockscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1657
    const v0, 0xa010046

    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4b7

    .line 1659
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_47
    const v0, 0xa010014

    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4b7

    .line 1662
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_55
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_61

    .line 1663
    const/4 v0, 0x0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0  # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4b7

    .line 1664
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_61
    const/16 v2, 0x8

    const/4 v3, 0x6

    const-string v10, " isEntrance="

    const-string v9, " transit="

    const-string v8, " Callers="

    const-string v7, "WindowManager"

    const/4 v6, 0x3

    if-eqz p11, :cond_c1

    if-eq v13, v3, :cond_77

    if-eq v13, v2, :cond_77

    const/16 v4, 0xa

    if-ne v13, v4, :cond_c1

    .line 1667
    :cond_77
    if-eqz v14, :cond_7d

    .line 1668
    const v0, 0x10a014a

    goto :goto_80

    .line 1669
    :cond_7d
    const v0, 0x10a014b

    .line 1667
    :goto_80
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1670
    .restart local v0  # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_8c

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_ba

    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation voice: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1670
    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_ba
    :goto_ba
    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_4b7

    .line 1674
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_c1
    const/16 v4, 0x9

    const/4 v5, 0x7

    if-eqz p11, :cond_112

    if-eq v13, v5, :cond_ce

    if-eq v13, v4, :cond_ce

    const/16 v0, 0xb

    if-ne v13, v0, :cond_112

    .line 1677
    :cond_ce
    if-eqz v14, :cond_d4

    .line 1678
    const v0, 0x10a0148

    goto :goto_d7

    .line 1679
    :cond_d4
    const v0, 0x10a0149

    .line 1677
    :goto_d7
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1680
    .restart local v0  # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_e3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_ba

    :cond_e3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation voice: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1684
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_112
    const/16 v0, 0x12

    const-string v4, " nextAppTransition="

    const-string v3, "applyAnimation: anim="

    if-ne v13, v0, :cond_15e

    .line 1685
    move-object/from16 v0, p8

    invoke-direct {v11, v15, v0}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1686
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_128

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_156

    :cond_128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1686
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_156
    :goto_156
    move/from16 v7, p13

    move-object v0, v1

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_4b7

    .line 1691
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_15e
    move-object/from16 v0, p8

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a9

    .line 1692
    iget-object v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_16c

    .line 1693
    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_16e

    :cond_16c
    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1692
    :goto_16e
    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1694
    .restart local v1  # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_17a

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_156

    :cond_17a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1694
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 1699
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_1a9
    if-ne v1, v5, :cond_1e5

    .line 1700
    iget-object v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1701
    .restart local v1  # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_1bb

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_156

    :cond_1bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM_IN_PLACE transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1701
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 1706
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_1e5
    const/16 v2, 0x8

    if-ne v1, v2, :cond_227

    .line 1707
    move-object/from16 v1, p7

    invoke-direct {v11, v13, v14, v15, v1}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1708
    .local v2, "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_1f7

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_21f

    :cond_1f7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CLIP_REVEAL transit="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1708
    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_21f
    :goto_21f
    move/from16 v7, p13

    move-object v0, v2

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_4b7

    .line 1713
    .end local v2  # "a":Landroid/view/animation/Animation;
    :cond_227
    const/4 v2, 0x2

    if-ne v1, v2, :cond_266

    .line 1714
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1715
    .restart local v1  # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_236

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_156

    :cond_236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_SCALE_UP transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1715
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 1720
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_266
    if-eq v1, v6, :cond_44e

    const/4 v2, 0x4

    if-ne v1, v2, :cond_276

    move-object v13, v3

    move-object v12, v4

    move/from16 v16, v6

    move-object v5, v7

    move-object v4, v8

    move-object v15, v9

    move-object v0, v10

    move v3, v14

    goto/16 :goto_457

    .line 1734
    :cond_276
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3c5

    const/4 v5, 0x6

    if-ne v1, v5, :cond_27e

    goto/16 :goto_3c5

    .line 1749
    :cond_27e
    const/16 v4, 0x9

    if-ne v1, v4, :cond_2bf

    if-eqz v14, :cond_2bf

    .line 1750
    const v1, 0x10a0140

    const-string v2, "android"

    invoke-direct {v11, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1752
    .restart local v1  # "a":Landroid/view/animation/Animation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance=true Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1752
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, p13

    move-object v0, v1

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_4b7

    .line 1756
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_2bf
    const/16 v1, 0x1b

    if-ne v13, v1, :cond_307

    .line 1758
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1759
    .restart local v1  # "a":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x150

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1760
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_2d9

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_156

    .line 1761
    :cond_2d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 1766
    .end local v1  # "a":Landroid/view/animation/Animation;
    :cond_307
    const/4 v1, 0x0

    .line 1767
    .local v1, "animAttr":I
    const/16 v4, 0x13

    if-eq v13, v4, :cond_371

    const/16 v4, 0x18

    if-eq v13, v4, :cond_36a

    const/16 v4, 0x19

    if-eq v13, v4, :cond_364

    packed-switch v13, :pswitch_data_4b8

    goto/16 :goto_37b

    .line 1822
    :pswitch_319  #0x10
    if-eqz v14, :cond_31e

    .line 1823
    const/16 v2, 0x19

    goto :goto_320

    .line 1824
    :cond_31e
    const/16 v2, 0x18

    :goto_320
    move v1, v2

    goto/16 :goto_37b

    .line 1817
    :pswitch_323  #0xf
    if-eqz v14, :cond_328

    .line 1818
    const/16 v19, 0x16

    goto :goto_32a

    .line 1819
    :cond_328
    const/16 v19, 0x17

    :goto_32a
    move/from16 v1, v19

    .line 1820
    goto/16 :goto_37b

    .line 1812
    :pswitch_32e  #0xe
    if-eqz v14, :cond_333

    .line 1813
    const/16 v2, 0x14

    goto :goto_335

    .line 1814
    :cond_333
    const/16 v2, 0x15

    :goto_335
    move v1, v2

    .line 1815
    goto :goto_37b

    .line 1802
    :pswitch_337  #0xd
    if-eqz v14, :cond_33c

    .line 1803
    const/16 v2, 0x10

    goto :goto_33e

    .line 1804
    :cond_33c
    const/16 v2, 0x11

    :goto_33e
    move v1, v2

    .line 1805
    goto :goto_37b

    .line 1807
    :pswitch_340  #0xc
    if-eqz v14, :cond_345

    .line 1808
    const/16 v2, 0x12

    goto :goto_347

    .line 1809
    :cond_345
    const/16 v2, 0x13

    :goto_347
    move v1, v2

    .line 1810
    goto :goto_37b

    .line 1797
    :pswitch_349  #0xb
    if-eqz v14, :cond_34e

    .line 1798
    const/16 v2, 0xe

    goto :goto_350

    .line 1799
    :cond_34e
    const/16 v2, 0xf

    :goto_350
    move v1, v2

    .line 1800
    goto :goto_37b

    .line 1792
    :pswitch_352  #0xa
    if-eqz v14, :cond_357

    .line 1793
    const/16 v2, 0xc

    goto :goto_359

    .line 1794
    :cond_357
    const/16 v2, 0xd

    :goto_359
    move v1, v2

    .line 1795
    goto :goto_37b

    .line 1787
    :pswitch_35b  #0x9
    if-eqz v14, :cond_360

    .line 1788
    const/16 v2, 0xa

    goto :goto_362

    .line 1789
    :cond_360
    const/16 v2, 0xb

    :goto_362
    move v1, v2

    .line 1790
    goto :goto_37b

    .line 1776
    :cond_364
    :pswitch_364  #0x7
    if-eqz v14, :cond_367

    .line 1777
    goto :goto_368

    .line 1778
    :cond_367
    const/4 v5, 0x7

    :goto_368
    move v1, v5

    .line 1779
    goto :goto_37b

    .line 1770
    :cond_36a
    :pswitch_36a  #0x6
    if-eqz v14, :cond_36e

    .line 1771
    const/4 v2, 0x4

    goto :goto_36f

    .line 1772
    :cond_36e
    nop

    :goto_36f
    move v1, v2

    .line 1773
    goto :goto_37b

    .line 1782
    :cond_371
    :pswitch_371  #0x8
    if-eqz v14, :cond_376

    .line 1783
    const/16 v20, 0x8

    goto :goto_378

    .line 1784
    :cond_376
    const/16 v20, 0x9

    :goto_378
    move/from16 v1, v20

    .line 1785
    nop

    .line 1826
    :goto_37b
    if-eqz v1, :cond_382

    invoke-virtual {v11, v12, v1, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_383

    :cond_382
    const/4 v2, 0x0

    .line 1827
    .restart local v2  # "a":Landroid/view/animation/Animation;
    :goto_383
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_38b

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_21f

    :cond_38b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " animAttr=0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1827
    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21f

    .line 1736
    .end local v1  # "animAttr":I
    .end local v2  # "a":Landroid/view/animation/Animation;
    :cond_3c5
    :goto_3c5
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v2, :cond_3cb

    const/4 v2, 0x1

    goto :goto_3cc

    :cond_3cb
    const/4 v2, 0x0

    :goto_3cc
    iput-boolean v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1738
    nop

    .line 1739
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1738
    move-object/from16 v0, p0

    move/from16 v2, p4

    move-object v5, v3

    move/from16 v3, p5

    move-object v12, v4

    move/from16 v4, p2

    move-object v13, v5

    move-object/from16 v5, p6

    move/from16 v16, v6

    move-object/from16 v6, p8

    move-object v15, v7

    move-object/from16 v7, p9

    move-object/from16 v17, v15

    move-object v15, v8

    move-object/from16 v8, p10

    move-object/from16 v18, v15

    move-object v15, v9

    move/from16 v9, p12

    move-object v14, v10

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1741
    .restart local v0  # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_404

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_401

    goto :goto_404

    :cond_401
    move/from16 v3, p3

    goto :goto_446

    .line 1742
    :cond_404
    :goto_404
    iget-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_40b

    .line 1743
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_40d

    :cond_40b
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .line 1744
    .local v1, "animName":Ljava/lang/String;
    :goto_40d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-static/range {v16 .. v16}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1744
    move-object/from16 v5, v17

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    .end local v1  # "animName":Ljava/lang/String;
    nop

    .line 1834
    :goto_446
    move/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v7, p13

    goto/16 :goto_4b7

    .line 1720
    .end local v0  # "a":Landroid/view/animation/Animation;
    :cond_44e
    move-object v13, v3

    move-object v12, v4

    move/from16 v16, v6

    move-object v5, v7

    move-object v4, v8

    move-object v15, v9

    move-object v0, v10

    move v3, v14

    .line 1722
    :goto_457
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    move/from16 v2, v16

    if-ne v1, v2, :cond_45f

    const/4 v1, 0x1

    goto :goto_460

    :cond_45f
    const/4 v1, 0x0

    :goto_460
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1724
    invoke-virtual {v11, v3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move-object/from16 v6, p6

    move/from16 v7, p13

    move-object v9, v5

    move-object v8, v13

    move/from16 v5, p2

    invoke-virtual {v11, v1, v6, v5, v7}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1726
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v10, :cond_47a

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v10, :cond_4b6

    .line 1727
    :cond_47a
    iget-boolean v10, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v10, :cond_481

    .line 1728
    const-string v10, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_483

    :cond_481
    const-string v10, "ANIM_THUMBNAIL_SCALE_DOWN"

    .line 1729
    .local v10, "animName":Ljava/lang/String;
    :goto_483
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    .end local v10  # "animName":Ljava/lang/String;
    nop

    .line 1834
    :cond_4b6
    move-object v0, v1

    .end local v1  # "a":Landroid/view/animation/Animation;
    .restart local v0  # "a":Landroid/view/animation/Animation;
    :goto_4b7
    return-object v0

    :pswitch_data_4b8
    .packed-switch 0x6
        :pswitch_36a  #00000006
        :pswitch_364  #00000007
        :pswitch_371  #00000008
        :pswitch_35b  #00000009
        :pswitch_352  #0000000a
        :pswitch_349  #0000000b
        :pswitch_340  #0000000c
        :pswitch_337  #0000000d
        :pswitch_32e  #0000000e
        :pswitch_323  #0000000f
        :pswitch_319  #00000010
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"  # I
    .param p3, "transit"  # I

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 604
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 606
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 607
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 608
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 611
    .end local v2  # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 613
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->mzOverlayAnim(Landroid/content/Context;I)I

    move-result v0

    .line 615
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 617
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/AppTransition;->wrapToCornerAnimation(Landroid/content/Context;ILandroid/view/DisplayInfo;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 618
    .local v2, "animation":Landroid/view/animation/Animation;
    if-eqz v2, :cond_33

    .line 619
    return-object v2

    .line 622
    :cond_33
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 624
    .end local v2  # "animation":Landroid/view/animation/Animation;
    :cond_38
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "resId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 664
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 665
    :catch_5
    move-exception v0

    .line 666
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "WindowManager"

    const-string v2, "Unable to load animation resource"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 520
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "anim"  # I

    .line 2003
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2005
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2006
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 2007
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 2009
    :cond_10
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enterAnim"  # I
    .param p3, "exitAnim"  # I
    .param p4, "startedCallback"  # Landroid/os/IRemoteCallback;

    .line 1876
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_40

    .line 1877
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overridePendingAppTransition for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exitAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1877
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1889
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1890
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1891
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1892
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1893
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1895
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1897
    :cond_57
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "srcThumb"  # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"  # I
    .param p3, "startY"  # I
    .param p4, "targetWidth"  # I
    .param p5, "targetHeight"  # I
    .param p6, "startedCallback"  # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"  # Z

    .line 1934
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1936
    if-eqz p7, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1937
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1938
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1939
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1942
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1944
    :cond_20
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 12
    .param p1, "startX"  # I
    .param p2, "startY"  # I
    .param p3, "startWidth"  # I
    .param p4, "startHeight"  # I

    .line 1911
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1913
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1914
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1917
    :cond_19
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "specs"  # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"  # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"  # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"  # Z

    .line 1949
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1951
    if-eqz p4, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1952
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1953
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1954
    if-eqz p1, :cond_3c

    .line 1955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_3c

    .line 1956
    aget-object v1, p1, v0

    .line 1957
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_39

    .line 1958
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v3, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1959
    if-nez v0, :cond_39

    .line 1962
    iget-object v2, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1963
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1964
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1963
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1955
    .end local v1  # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2  # "rect":Landroid/graphics/Rect;
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1969
    .end local v0  # "i":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1970
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1971
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1973
    :cond_43
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5
    .param p1, "specsFuture"  # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"  # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"  # Z

    .line 1978
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1980
    if-eqz p3, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1981
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1982
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1983
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1984
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1986
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 1989
    :cond_1f
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 5
    .param p1, "remoteAnimationAdapter"  # Landroid/view/RemoteAnimationAdapter;

    .line 1992
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override pending remote transitionSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1992
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1996
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1997
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 2000
    :cond_3e
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 12
    .param p1, "startX"  # I
    .param p2, "startY"  # I
    .param p3, "startWidth"  # I
    .param p4, "startHeight"  # I

    .line 1901
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1903
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1904
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1907
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .registers 2

    .line 2015
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2017
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2020
    :cond_10
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13
    .param p1, "srcThumb"  # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"  # I
    .param p3, "startY"  # I
    .param p4, "startedCallback"  # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"  # Z

    .line 1921
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1923
    if-eqz p5, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    .line 1924
    :cond_d
    const/4 v0, 0x4

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1925
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1926
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1928
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1930
    :cond_20
    return-void
.end method

.method postAnimationCallback()V
    .registers 4

    .line 1866
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_12

    .line 1867
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1871
    :cond_12
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .registers 11
    .param p1, "transit"  # I
    .param p2, "alwaysKeepCurrent"  # Z
    .param p3, "flags"  # I
    .param p4, "forceOverride"  # Z

    .line 2262
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare app transition: transit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " alwaysKeepCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2266
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 2267
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2262
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_49
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_57

    if-ne p1, v1, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    .line 2270
    .local v0, "allowSetCrashing":Z
    :goto_58
    if-nez p4, :cond_a9

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_a9

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v2, :cond_a9

    if-eqz v0, :cond_6d

    goto :goto_a9

    .line 2277
    :cond_6d
    if-nez p2, :cond_ac

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_ac

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v2, v1, :cond_ac

    .line 2279
    const/16 v1, 0x8

    if-ne p1, v1, :cond_89

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 2281
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_ac

    .line 2282
    :cond_89
    const/4 v1, 0x6

    if-ne p1, v1, :cond_97

    const/4 v1, 0x7

    .line 2283
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 2285
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_ac

    .line 2286
    :cond_97
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2289
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_ac

    .line 2272
    :cond_a9
    :goto_a9
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2292
    :cond_ac
    :goto_ac
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v1

    .line 2293
    .local v1, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2295
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2297
    :cond_c2
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "a"  # Landroid/view/animation/Animation;
    .param p2, "appWidth"  # I
    .param p3, "appHeight"  # I
    .param p4, "transit"  # I

    .line 1026
    const/4 v0, 0x6

    if-eq p4, v0, :cond_9

    const/4 v0, 0x7

    if-eq p4, v0, :cond_9

    .line 1032
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_c

    .line 1029
    .end local v0  # "duration":I
    :cond_9
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 1030
    .restart local v0  # "duration":I
    nop

    .line 1035
    :goto_c
    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "a"  # Landroid/view/animation/Animation;
    .param p2, "appWidth"  # I
    .param p3, "appHeight"  # I
    .param p4, "duration"  # J
    .param p6, "interpolator"  # Landroid/view/animation/Interpolator;

    .line 1007
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_9

    .line 1008
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1010
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1011
    if-eqz p6, :cond_12

    .line 1012
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1014
    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1015
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .registers 3

    .line 2376
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2377
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"  # I

    .line 2253
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2254
    return-void
.end method

.method setIdle()V
    .registers 2

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 368
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 7
    .param p1, "transit"  # I
    .param p2, "openingApp"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"  # Lcom/android/server/wm/AppWindowToken;
    .param p4, "changingApp"  # Lcom/android/server/wm/AppWindowToken;

    .line 346
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 350
    return-void
.end method

.method setReady()V
    .registers 2

    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 360
    return-void
.end method

.method setTimeout()V
    .registers 2

    .line 375
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 376
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2058
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
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method updateBooster()V
    .registers 3

    .line 499
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 500
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 2182
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2183
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2184
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2185
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2186
    return-void
.end method
