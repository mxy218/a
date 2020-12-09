.class public Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ImmersiveModeConfirmation$H;,
        Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"

.field private static sConfirmed:Z


# instance fields
.field private mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field private mLockTaskState:I

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mVrModeEnabled:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 369
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_27

    .line 88
    goto :goto_2b

    :cond_27
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e005f

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 93
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 62
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .line 62
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 200
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 200
    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 184
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 192
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 193
    const-string v0, "ImmersiveModeConfirmation"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const v0, 0x10302fa

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 196
    return-object v6
.end method

.method private getNavBarExitDuration()J
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    return-wide v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_10

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 350
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 352
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_10

    .line 178
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 181
    :cond_10
    return-void
.end method

.method private handleShow()V
    .registers 4

    .line 358
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 366
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-void
.end method

.method static loadSetting(ILandroid/content/Context;)Z
    .registers 6

    .line 102
    sget-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 105
    nop

    .line 107
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string p1, "confirmed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 114
    goto :goto_32

    .line 112
    :catchall_1b
    move-exception p1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading confirmations, value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_32
    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq p1, p0, :cond_37

    const/4 v0, 0x1

    :cond_37
    return v0
.end method

.method private static saveSetting(Landroid/content/Context;)V
    .registers 4

    .line 121
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 122
    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "immersive_mode_confirmations"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 129
    goto :goto_2c

    .line 127
    :catchall_13
    move-exception p0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error saving confirmations, sConfirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImmersiveModeConfirmation"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_2c
    return-void
.end method


# virtual methods
.method confirmCurrentPrompt()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_b
    return-void
.end method

.method getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method immersiveModeChangedLw(Ljava/lang/String;ZZZ)V
    .registers 7

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 135
    if-eqz p2, :cond_2e

    .line 136
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result p1

    .line 139
    if-nez p1, :cond_2d

    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez p1, :cond_2d

    if-eqz p3, :cond_2d

    iget-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez p1, :cond_2d

    if-nez p4, :cond_2d

    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2d

    iget p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq p1, v1, :cond_2d

    .line 146
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {p1, v1, p2, p3}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    :cond_2d
    goto :goto_34

    .line 149
    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 151
    :goto_34
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .registers 2

    .line 411
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 412
    return-void
.end method

.method onPowerKeyDown(ZJZZ)Z
    .registers 11

    .line 155
    const/4 v0, 0x0

    if-nez p1, :cond_13

    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 159
    :cond_13
    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1c

    if-nez p5, :cond_1c

    .line 161
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_20

    .line 163
    :cond_1c
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 165
    :goto_20
    return v0
.end method

.method onVrStateChangedLw(Z)V
    .registers 3

    .line 403
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 404
    iget-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-eqz p1, :cond_12

    .line 405
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 406
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 408
    :cond_12
    return-void
.end method
