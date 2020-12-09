.class public Lcom/android/server/wm/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/wm/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mDisplayId:I

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 11

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/android/server/wm/BarController;->mDisplayId:I

    .line 82
    iput p3, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    .line 83
    iput p4, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    .line 84
    iput p5, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    .line 85
    iput p6, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    .line 86
    iput p7, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    .line 87
    iput p8, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    .line 88
    new-instance p1, Lcom/android/server/wm/BarController$BarHandler;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BarController$BarHandler;-><init>(Lcom/android/server/wm/BarController;)V

    iput-object p1, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BarController;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    return-object p0
.end method

.method private computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I
    .registers 10

    .line 209
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 210
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 211
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p3

    .line 212
    iget v1, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    if-nez p4, :cond_19

    if-nez v0, :cond_19

    .line 213
    return v2

    .line 214
    :cond_19
    iget v1, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v4, 0x0

    if-ne v1, v2, :cond_21

    if-eqz v0, :cond_21

    .line 215
    return v4

    .line 216
    :cond_21
    if-eqz p4, :cond_2d

    .line 217
    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    if-eqz p3, :cond_2c

    .line 218
    return v3

    .line 220
    :cond_2c
    return v4

    .line 224
    :cond_2d
    iget p1, p0, Lcom/android/server/wm/BarController;->mState:I

    return p1
.end method

.method private setTransientBarState(I)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_15

    .line 314
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    if-ne p1, v1, :cond_13

    .line 315
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 317
    :cond_13
    iput p1, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    .line 320
    :cond_15
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4

    .line 332
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string p0, "TRANSIENT_BAR_HIDING"

    return-object p0

    .line 333
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "TRANSIENT_BAR_SHOWING"

    return-object p0

    .line 334
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string p0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object p0

    .line 335
    :cond_12
    if-nez p0, :cond_17

    const-string p0, "TRANSIENT_BAR_NONE"

    return-object p0

    .line 336
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    if-eq p1, v0, :cond_16

    .line 229
    iput p1, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BarController$1;-><init>(Lcom/android/server/wm/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    const/4 p1, 0x1

    return p1

    .line 242
    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method adjustSystemUiVisibilityLw(II)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_17

    .line 134
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 135
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_28

    .line 136
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_28

    and-int p1, p2, v0

    if-nez p1, :cond_28

    .line 138
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 140
    :cond_28
    :goto_28
    return-void
.end method

.method applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_44

    .line 144
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_38

    .line 146
    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p3

    .line 147
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_1e

    .line 148
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v0

    goto :goto_22

    .line 150
    :cond_1e
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v0, v0

    and-int/2addr p2, v0

    .line 152
    :goto_22
    const/high16 v0, -0x80000000

    and-int/2addr p3, v0

    if-eqz p3, :cond_32

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 154
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p1, p2

    move p2, p1

    goto :goto_37

    .line 156
    :cond_32
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    move p2, p1

    .line 158
    :goto_37
    goto :goto_44

    .line 159
    :cond_38
    iget p1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v0, p1

    and-int/2addr p2, v0

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    .line 160
    iget p2, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int v0, p2

    and-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p2, p1

    .line 163
    :cond_44
    :goto_44
    return p2
.end method

.method checkHiddenLw()Z
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    .line 250
    :cond_1f
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 252
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 255
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 257
    :cond_39
    return v2

    .line 260
    :cond_3a
    return v1
.end method

.method checkShowTransientBarLw()Z
    .registers 4

    .line 264
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 266
    return v1

    .line 267
    :cond_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 269
    return v1

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_10

    .line 272
    return v1

    .line 273
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 275
    return v1

    .line 277
    :cond_17
    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4b

    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mState"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 350
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 352
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/wm/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContentFrame="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 355
    :cond_4b
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 325
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 327
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 328
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method isTransientShowRequested()Z
    .registers 3

    .line 123
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method isTransientShowing()Z
    .registers 3

    .line 119
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 167
    const/4 v0, 0x1

    if-eqz p1, :cond_12

    iget v1, p0, Lcom/android/server/wm/BarController;->mState:I

    if-eq v1, v0, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 167
    :goto_13
    return v0
.end method

.method setBarShowingLw(Z)Z
    .registers 9

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 173
    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    iget v2, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 174
    iput-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 175
    return v1

    .line 177
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->skipAnimation()Z

    move-result v4

    .line 180
    if-eqz p1, :cond_33

    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_2d

    if-nez v4, :cond_2d

    move v4, v0

    goto :goto_2e

    :cond_2d
    move v4, v1

    :goto_2e
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-result v4

    goto :goto_42

    .line 181
    :cond_33
    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_3d

    if-nez v4, :cond_3d

    move v4, v0

    goto :goto_3e

    :cond_3d
    move v4, v1

    :goto_3e
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-result v4

    .line 182
    :goto_42
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 183
    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/server/wm/BarController;->computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I

    move-result v2

    .line 184
    invoke-direct {p0, v2}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    move-result v2

    .line 186
    if-eqz v4, :cond_5d

    iget-object v3, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    if-eqz v3, :cond_5d

    .line 187
    iget-object v3, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 190
    :cond_5d
    if-nez v4, :cond_63

    if-eqz v2, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :cond_63
    :goto_63
    return v0
.end method

.method setContentFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 102
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V
    .registers 5

    .line 195
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 196
    if-eqz p2, :cond_16

    .line 198
    iget-object p1, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 199
    iget p2, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_e

    move p2, v1

    goto :goto_f

    :cond_e
    move p2, v0

    .line 198
    :goto_f
    invoke-virtual {p1, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 201
    :cond_16
    return-void
.end method

.method setShowTransparent(Z)V
    .registers 3

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_b

    .line 106
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 108
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 110
    :cond_b
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    .line 93
    return-void
.end method

.method showTransient()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 116
    :cond_8
    return-void
.end method

.method protected skipAnimation()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method updateVisibilityLw(ZII)I
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    return p3

    .line 283
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 284
    :cond_12
    if-eqz p1, :cond_23

    .line 285
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p3, p1

    .line 286
    and-int/2addr p1, p2

    if-nez p1, :cond_1e

    .line 287
    iget p1, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p1, p3

    move p3, p1

    .line 289
    :cond_1e
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    goto :goto_26

    .line 291
    :cond_23
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 294
    :cond_26
    :goto_26
    iget-boolean p1, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eqz p1, :cond_36

    .line 295
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p3, p1

    .line 296
    iget-boolean p1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz p1, :cond_36

    .line 297
    iget p1, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p3, p1

    .line 298
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 301
    :cond_36
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eqz p1, :cond_3f

    .line 302
    iget p1, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p1, p3

    .line 303
    and-int/lit8 p3, p1, -0x2

    .line 305
    :cond_3f
    iget p1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    and-int v0, p3, p1

    if-nez v0, :cond_4f

    and-int/2addr p1, p2

    if-nez p1, :cond_4f

    or-int p1, p3, p2

    iget p2, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_55

    .line 307
    :cond_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 309
    :cond_55
    return p3
.end method

.method wasRecentlyTranslucent()Z
    .registers 5

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 340
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 341
    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 342
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 343
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 344
    return-void
.end method
