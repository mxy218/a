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

    .line 359
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 360
    const-string p1, "PhotonicModulator"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 352
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 354
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 355
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 361
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 391
    const-string v1, "Photonic Modulator State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
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

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
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

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_99

    throw p1
.end method

.method public run()V
    .registers 8

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 411
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    move v2, v3

    goto :goto_e

    :cond_d
    move v2, v4

    .line 412
    :goto_e
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 413
    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v5, v6, :cond_15

    goto :goto_16

    :cond_15
    move v3, v4

    .line 414
    :goto_16
    if-nez v2, :cond_1f

    .line 416
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)V

    .line 417
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 419
    :cond_1f
    if-nez v3, :cond_23

    .line 420
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_68

    .line 422
    :cond_23
    if-nez v2, :cond_31

    if-nez v3, :cond_31

    .line 424
    :try_start_27
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_68

    goto :goto_2e

    .line 425
    :catch_2d
    move-exception v1

    :goto_2e
    nop

    .line 426
    :try_start_2f
    monitor-exit v0

    goto :goto_0

    .line 428
    :cond_31
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 429
    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 430
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_68

    .line 433
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating screen state: state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", backlight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    const-string v2, "DisplayPowerState"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    .line 438
    goto :goto_0

    .line 430
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

    .line 364
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 366
    :goto_c
    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 367
    :goto_13
    if-nez v1, :cond_17

    if-eqz v4, :cond_6e

    .line 368
    :cond_17
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 369
    const-string v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting new screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", backlight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 374
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 376
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez p1, :cond_4e

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz p1, :cond_4c

    goto :goto_4e

    :cond_4c
    move p1, v3

    goto :goto_4f

    :cond_4e
    :goto_4e
    move p1, v2

    .line 377
    :goto_4f
    if-nez v1, :cond_58

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-eqz p2, :cond_56

    goto :goto_58

    :cond_56
    move p2, v3

    goto :goto_59

    :cond_58
    :goto_58
    move p2, v2

    :goto_59
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 378
    if-nez v4, :cond_64

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz p2, :cond_62

    goto :goto_64

    :cond_62
    move p2, v3

    goto :goto_65

    :cond_64
    :goto_64
    move p2, v2

    :goto_65
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 380
    if-nez p1, :cond_6e

    .line 381
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 384
    :cond_6e
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    move v2, v3

    :goto_74
    monitor-exit v0

    return v2

    .line 385
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p1
.end method
