.class public Lcom/meizu/settings/display/QcomDisplayWrapper;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;,
        Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/settings/display/QcomDisplayWrapper;


# instance fields
.field private final EYE_PROTECT_ANIMATION_DURATION:I

.field private final EYE_PROTECT_ANIMATION_STEP:I

.field public MODE_DATA_ARRAY_MAX_LENGTH:I

.field public final TAG:Ljava/lang/String;

.field mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentEyeProtectLevel:I

.field private mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEyeProtectModeOff:Landroid/animation/ValueAnimator;

.field private mEyeProtectModeOffCanceled:Z

.field private mEyeProtectModeOn:Landroid/animation/ValueAnimator;

.field private mEyeProtectModeOnCanceled:Z

.field private mHandler:Landroid/os/Handler;

.field mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field private mSupportModeSelection:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QcomDisplayWrapper"

    .line 22
    iput-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->EYE_PROTECT_ANIMATION_STEP:I

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    const/16 v2, 0x3e8

    .line 36
    iput v2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->EYE_PROTECT_ANIMATION_DURATION:I

    .line 43
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    .line 80
    new-instance v2, Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper$1;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Landroid/content/Context;)V

    .line 131
    new-instance p1, Lcom/meizu/settings/display/QcomDisplayWrapper$2;

    invoke-direct {p1, p0, v2}, Lcom/meizu/settings/display/QcomDisplayWrapper$2;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 142
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    .line 143
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/settings/display/QcomDisplayWrapper$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper$3;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/settings/display/QcomDisplayWrapper$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper$4;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    .line 179
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/settings/display/QcomDisplayWrapper$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper$5;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper$6;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mSupportModeSelection:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/QcomDisplayWrapper;)I
    .registers 1

    .line 20
    iget p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/display/QcomDisplayWrapper;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/QcomDisplayWrapper;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->notifyDisplayConnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/display/QcomDisplayWrapper;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOnCanceled:Z

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOnCanceled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/display/QcomDisplayWrapper;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOffCanceled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOffCanceled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/display/QcomDisplayWrapper;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->updateColorTemperature()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;
    .registers 2

    .line 47
    sget-object v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->sInstance:Lcom/meizu/settings/display/QcomDisplayWrapper;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->sInstance:Lcom/meizu/settings/display/QcomDisplayWrapper;

    .line 50
    :cond_f
    sget-object p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->sInstance:Lcom/meizu/settings/display/QcomDisplayWrapper;

    return-object p0
.end method

.method private notifyDisplayConnect()V
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    if-eqz v0, :cond_6

    .line 348
    invoke-interface {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;->onConnected()V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public static resetColorBalance(Landroid/content/Context;)V
    .registers 3

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const-string v0, "QcomDisplayWrapper"

    const-string/jumbo v1, "resetColorBalance"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 463
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 464
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getColorBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    :cond_28
    return-void
.end method

.method private updateColorTemperature()V
    .registers 3

    const-string v0, "QcomDisplayWrapper"

    const-string/jumbo v1, "updateColorTemperature"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 450
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result v0

    if-eqz v0, :cond_28

    .line 451
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    .line 452
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultColorBalance(I)V

    :cond_28
    return-void
.end method


# virtual methods
.method public animateEyeProtectModeOn(ZZ)V
    .registers 8

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animate Eye Protect Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    const-string/jumbo v1, "on"

    goto :goto_13

    :cond_10
    const-string/jumbo v1, "off"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentEyeProtectLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcomDisplayWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x3c

    if-eqz p1, :cond_9f

    .line 377
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 378
    iget p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    if-eqz p1, :cond_5e

    if-eq p1, v3, :cond_5e

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v4

    add-int/2addr v3, v4

    if-eq p1, v3, :cond_4f

    goto :goto_5e

    .line 388
    :cond_4f
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_e7

    .line 389
    iget p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    goto/16 :goto_e7

    :cond_5e
    :goto_5e
    if-eqz p2, :cond_86

    .line 380
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_e7

    .line 381
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    new-array p2, v2, [I

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v2

    aput v2, p2, v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 382
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e7

    .line 385
    :cond_86
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result p1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 386
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result p1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    goto :goto_e7

    .line 392
    :cond_9f
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 393
    iget p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    if-lez p1, :cond_e4

    if-eq p1, v3, :cond_e4

    if-eqz p2, :cond_d2

    .line 395
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_e7

    .line 396
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    new-array p2, v2, [I

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p2, v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v1

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 397
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mEyeProtectModeOff:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e7

    .line 400
    :cond_d2
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 401
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    .line 402
    invoke-direct {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->updateColorTemperature()V

    goto :goto_e7

    .line 405
    :cond_e4
    invoke-direct {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->updateColorTemperature()V

    :cond_e7
    :goto_e7
    return-void
.end method

.method public createColorBlance(Ljava/lang/String;)Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;
    .registers 8

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_3b

    .line 319
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_22

    .line 322
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_22

    aget-object v4, v0, v3

    .line 323
    new-instance v5, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;

    invoke-direct {v5, p0, v4}, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 326
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;

    .line 327
    iget-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-object v0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorBalance()I
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isColorManagerValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 288
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getColorBalance()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentModeIdBaseline()I
    .registers 3

    .line 433
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/16 v0, 0x3c

    :cond_f
    :goto_f
    return v0
.end method

.method public getCurrentSavedEyeProtectLevel()I
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "save_current_eyeprotectleve_blue"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSavedEyeProtectLevel, value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MODE_DATA_ARRAY_MAX_LENGTH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QcomDisplayWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    if-lez p0, :cond_3d

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_41

    :cond_3d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_41
    return p0
.end method

.method public getSavedColorBalance()I
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_screen_color_temperature"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_12

    add-int/lit8 v0, v0, -0x32

    goto :goto_16

    .line 369
    :cond_12
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getColorBalance()I

    move-result v0

    :goto_16
    return v0
.end method

.method public getSavedEyeProtectLevel()I
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string/jumbo v2, "save_progress_blue"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedEyeProtectLevel, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MODE_DATA_ARRAY_MAX_LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QcomDisplayWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    const/4 v1, 0x0

    if-lez p0, :cond_45

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_49

    :cond_45
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_49
    return p0
.end method

.method public isColorManagerValid()Z
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEyeProtectLevelValid(I)Z
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result v0

    .line 224
    iget v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    .line 226
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    const/4 v2, 0x0

    if-eqz p0, :cond_29

    array-length v3, p0

    if-eqz v3, :cond_29

    array-length p0, p0

    if-lt p1, p0, :cond_14

    goto :goto_29

    :cond_14
    const/4 p0, 0x1

    if-nez v0, :cond_1a

    const/16 v1, 0x3b

    goto :goto_21

    :cond_1a
    if-ne p0, v0, :cond_21

    const/16 v0, 0x3c

    const/16 v1, 0x77

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v2

    :goto_22
    if-lt p1, v0, :cond_27

    if-gt p1, v1, :cond_27

    goto :goto_28

    :cond_27
    move p0, v2

    :goto_28
    return p0

    .line 227
    :cond_29
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "value is invalid index:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QcomDisplayWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    .registers 3

    .line 295
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isColorManagerValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz p0, :cond_15

    .line 341
    invoke-interface {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;->onConnected()V

    :cond_15
    return-void
.end method

.method public saveColorBalance(I)V
    .registers 3

    .line 358
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_screen_color_temperature"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveCurrentEyeProtectLevel(I)V
    .registers 3

    .line 411
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "save_current_eyeprotectleve_blue"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveEyeProtectLevel(I)V
    .registers 3

    .line 421
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "save_progress_blue"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setColorBalance(I)Z
    .registers 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorBalance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcomDisplayWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isColorManagerValid()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 279
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultColorBalance(I)V
    .registers 5

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultColorBalance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcomDisplayWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mSupportModeSelection:Z

    if-nez v0, :cond_21

    const-string p0, "Not support FEATURE_COLOR_MODE_SELECTION ."

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->createColorBlance(Ljava/lang/String;)Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 310
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget p1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->modeID:I

    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto :goto_5a

    .line 312
    :cond_40
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->createNewMode(Ljava/lang/String;)I

    move-result p1

    .line 313
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    :goto_5a
    return-void
.end method

.method public setDefaultEyeProtectLevel(I)Z
    .registers 5

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultEyeProtectLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QcomDisplayWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mSupportModeSelection:Z

    const/4 v2, 0x0

    if-nez v0, :cond_22

    const-string p0, "Not support FEATURE_COLOR_MODE_SELECTION ."

    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 268
    :cond_22
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isColorManagerValid()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isEyeProtectLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 269
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    const/4 p0, 0x1

    return p0

    :cond_3d
    return v2
.end method

.method public setEyeProtectLevel(I)Z
    .registers 6

    .line 243
    iget-boolean v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mSupportModeSelection:Z

    const/4 v1, 0x0

    const-string v2, "QcomDisplayWrapper"

    if-nez v0, :cond_d

    const-string p0, "Not support FEATURE_COLOR_MODE_SELECTION ."

    .line 244
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 247
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isColorManagerValid()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isEyeProtectLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEyeProtectLevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    if-eqz v0, :cond_4c

    array-length v0, v0

    if-nez v0, :cond_36

    goto :goto_4c

    .line 253
    :cond_36
    iput p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    .line 254
    iget v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCurrentEyeProtectLevel:I

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveCurrentEyeProtectLevel(I)V

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    const-string p0, "mModeDataArray is null."

    .line 250
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v1
.end method

.method public unregisterDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mDisplayConnnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
