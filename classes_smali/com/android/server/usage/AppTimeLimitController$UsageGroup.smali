.class abstract Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UsageGroup"
.end annotation


# instance fields
.field protected mActives:I

.field protected mLastKnownUsageTimeMs:J

.field protected mLastUsageEndTimeMs:J

.field protected mLimitReachedCallback:Landroid/app/PendingIntent;

.field protected mObserved:[Ljava/lang/String;

.field protected mObserverAppRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field protected mObserverId:I

.field protected mTimeLimitMs:J

.field protected mUsageTimeMs:J

.field protected mUserRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .registers 9

    .line 259
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    .line 261
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 262
    iput p4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 263
    iput-object p5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 264
    iput-wide p6, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 265
    iput-object p8, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    .line 266
    return-void
.end method


# virtual methods
.method checkTimeout(J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 352
    if-nez v0, :cond_b

    return-void

    .line 354
    :cond_b
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v1, v3

    .line 359
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_17

    return-void

    .line 366
    :cond_17
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->isActive([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 370
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v3, p1, v3

    .line 371
    cmp-long v0, v1, v3

    if-gtz v0, :cond_34

    .line 374
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 375
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 376
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    goto :goto_3a

    .line 379
    :cond_34
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    sub-long/2addr v1, v3

    invoke-static {p1, p0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 383
    :cond_3a
    :goto_3a
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 397
    const-string v0, "        Group id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    const-string v0, " timeLimit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 401
    const-string v0, " used="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 403
    const-string v0, " lastKnownUsage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 405
    const-string v0, " mActives="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 407
    const-string v0, " observed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public getTimeLimitMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 269
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    return-wide v0
.end method

.method public getUsageTimeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 272
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    return-wide v0
.end method

.method noteUsageStart(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 287
    return-void
.end method

.method noteUsageStart(JJ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 291
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_24

    .line 297
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_f

    move-wide p1, v0

    .line 298
    :cond_f
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 299
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p3

    add-long/2addr v0, p1

    .line 301
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_23

    .line 306
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 308
    :cond_23
    goto :goto_6b

    .line 309
    :cond_24
    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    iget-object p2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length p3, p2

    if-le p1, p3, :cond_6b

    .line 311
    array-length p1, p2

    iput p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 312
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 313
    if-nez p1, :cond_39

    return-void

    .line 314
    :cond_39
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many noted usage starts! Observed entities: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 316
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   Active Entities: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    const-string p2, "AppTimeLimitController"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_6b
    :goto_6b
    return-void
.end method

.method noteUsageStop(J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 324
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 325
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    .line 326
    :goto_13
    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 328
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    .line 329
    if-eqz v1, :cond_2d

    iget-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2d

    .line 332
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 334
    :cond_2d
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 335
    goto :goto_76

    .line 336
    :cond_33
    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-gez p1, :cond_76

    .line 338
    iput v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 339
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 340
    if-nez p1, :cond_44

    return-void

    .line 341
    :cond_44
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many noted usage stops! Observed entities: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 343
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Active Entities: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    const-string p2, "AppTimeLimitController"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_76
    :goto_76
    return-void
.end method

.method public onLimitReached()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 388
    if-nez v0, :cond_b

    return-void

    .line 389
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 390
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v7, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v9, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v9}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    .line 393
    :cond_28
    return-void
.end method

.method public remove()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 277
    if-eqz v0, :cond_d

    .line 278
    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->removeUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 281
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    .line 282
    return-void
.end method
