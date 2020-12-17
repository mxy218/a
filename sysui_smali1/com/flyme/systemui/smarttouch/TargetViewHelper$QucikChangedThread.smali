.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;
.super Ljava/lang/Thread;
.source "TargetViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QucikChangedThread"
.end annotation


# instance fields
.field private isRecentLeft:Z

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private mRate:F

.field private mRunning:Z

.field private mSwipeTouchX:F

.field private mSwipeTouchY:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/IOverviewProxy;FFZ)V
    .registers 6

    .line 350
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    .line 345
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    const/high16 v0, 0x41f00000  # 30.0f

    .line 348
    iput v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRate:F

    .line 351
    iput-boolean p4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    .line 352
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 353
    iput p2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchY:F

    .line 354
    iput p3, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchX:F

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    return-void
.end method

.method public run()V
    .registers 15

    const-string v0, "SmartTouch"

    const/4 v1, 0x1

    .line 359
    iput-boolean v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    .line 360
    iget-boolean v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchX:F

    goto :goto_e

    :cond_d
    move v2, v3

    .line 362
    :goto_e
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    if-eqz v4, :cond_83

    const-wide/16 v4, 0xa

    const/4 v12, 0x0

    .line 364
    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 365
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchX:F

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_2e

    :cond_24
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    if-nez v4, :cond_30

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_30

    :cond_2e
    move v8, v12

    goto :goto_48

    .line 367
    :cond_30
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    if-eqz v4, :cond_38

    cmpg-float v4, v2, v3

    if-lez v4, :cond_42

    :cond_38
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    if-nez v4, :cond_46

    iget v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchX:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_46

    .line 369
    :cond_42
    iput-boolean v12, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_44} :catch_7c

    move v8, v1

    goto :goto_48

    :cond_46
    const/4 v4, 0x2

    move v8, v4

    .line 374
    :goto_48
    :try_start_48
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v4, :cond_62

    .line 375
    iget-object v13, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget v10, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mSwipeTouchY:F

    const/4 v11, 0x0

    move v9, v2

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-interface {v13, v4, v1, v12}, Lcom/android/systemui/shared/recents/IOverviewProxy;->updateGesture(Landroid/view/MotionEvent;IZ)V

    goto :goto_70

    :cond_62
    const-string v4, "mOverviewProxyService.getProxy() is null !!!"

    .line 378
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_67} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_67} :catch_7c

    goto :goto_70

    :catch_68
    move-exception v4

    :try_start_69
    const-string v5, "Cannot send toggle recents through proxy service."

    .line 381
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    iput-boolean v12, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    .line 384
    :goto_70
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->isRecentLeft:Z

    if-eqz v4, :cond_78

    iget v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRate:F

    neg-float v4, v4

    goto :goto_7a

    :cond_78
    iget v4, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRate:F
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_7a} :catch_7c

    :goto_7a
    add-float/2addr v2, v4

    goto :goto_e

    :catch_7c
    move-exception v4

    .line 388
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 389
    iput-boolean v12, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->mRunning:Z

    goto :goto_e

    :cond_83
    return-void
.end method
