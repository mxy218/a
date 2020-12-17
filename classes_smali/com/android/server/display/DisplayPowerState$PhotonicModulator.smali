.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingState:I

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 3

    .line 372
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 373
    const-string p1, "PhotonicModulator"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 365
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 367
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 368
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 374
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 402
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 404
    const-string v1, "Photonic Modulator State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public run()V
    .registers 8

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 424
    .local v1, "state":I
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    move v2, v3

    goto :goto_e

    :cond_d
    move v2, v4

    .line 425
    .local v2, "stateChanged":Z
    :goto_e
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 426
    .local v5, "backlight":I
    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v5, v6, :cond_15

    goto :goto_16

    :cond_15
    move v3, v4

    .line 427
    .local v3, "backlightChanged":Z
    :goto_16
    if-nez v2, :cond_1f

    .line 429
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)V

    .line 430
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 432
    :cond_1f
    if-nez v3, :cond_23

    .line 433
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_68

    .line 435
    :cond_23
    if-nez v2, :cond_31

    if-nez v3, :cond_31

    .line 437
    :try_start_27
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_68

    goto :goto_2e

    .line 438
    :catch_2d
    move-exception v4

    :goto_2e
    nop

    .line 439
    :try_start_2f
    monitor-exit v0

    goto :goto_0

    .line 441
    :cond_31
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 442
    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 443
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_68

    .line 446
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating screen state: state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", backlight="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v4, "DisplayPowerState"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    .line 451
    .end local v1  # "state":I
    .end local v2  # "stateChanged":Z
    .end local v3  # "backlightChanged":Z
    .end local v5  # "backlight":I
    goto :goto_0

    .line 443
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public setState(II)Z
    .registers 11
    .param p1, "state"  # I
    .param p2, "backlight"  # I

    .line 377
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 379
    .local v1, "stateChanged":Z
    :goto_c
    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 380
    .local v4, "backlightChanged":Z
    :goto_13
    if-nez v1, :cond_17

    if-eqz v4, :cond_6e

    .line 381
    :cond_17
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 382
    const-string v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting new screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", backlight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_3f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 387
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 389
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_4e

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v5, :cond_4c

    goto :goto_4e

    :cond_4c
    move v5, v3

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v5, v2

    .line 390
    .local v5, "changeInProgress":Z
    :goto_4f
    if-nez v1, :cond_58

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-eqz v6, :cond_56

    goto :goto_58

    :cond_56
    move v6, v3

    goto :goto_59

    :cond_58
    :goto_58
    move v6, v2

    :goto_59
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 391
    if-nez v4, :cond_64

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v6, :cond_62

    goto :goto_64

    :cond_62
    move v6, v3

    goto :goto_65

    :cond_64
    :goto_64
    move v6, v2

    :goto_65
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 393
    if-nez v5, :cond_6e

    .line 394
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 397
    .end local v5  # "changeInProgress":Z
    :cond_6e
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_73

    goto :goto_74

    :cond_73
    move v2, v3

    :goto_74
    monitor-exit v0

    return v2

    .line 398
    .end local v1  # "stateChanged":Z
    .end local v4  # "backlightChanged":Z
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method
