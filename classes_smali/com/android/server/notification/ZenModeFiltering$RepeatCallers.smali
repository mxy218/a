.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$1;)V
    .registers 2

    .line 293
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 1

    .line 293
    iget p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 3

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 320
    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_2c

    .line 321
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 322
    cmp-long v3, v1, p2

    if-gtz v3, :cond_26

    sub-long v1, p2, v1

    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_29

    .line 323
    :cond_26
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    .line 320
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 326
    :cond_2c
    monitor-exit p0

    return-void

    .line 318
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 5

    monitor-enter p0

    .line 309
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 310
    iget p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v0, 0x0

    if-lez p1, :cond_25

    if-nez p2, :cond_c

    goto :goto_25

    .line 311
    :cond_c
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    .line 312
    if-nez p1, :cond_14

    monitor-exit p0

    return v0

    .line 313
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 315
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    monitor-exit p0

    return p1

    .line 310
    :cond_25
    :goto_25
    monitor-exit p0

    return v0

    .line 308
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 336
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    .line 337
    const/4 v0, 0x0

    if-eqz p0, :cond_41

    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_41

    .line 338
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    const/4 v2, 0x0

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_35

    .line 340
    aget-object v3, p0, v2

    .line 341
    if-nez v3, :cond_19

    goto :goto_32

    .line 342
    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_32

    .line 344
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 345
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 349
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_40
    return-object v0

    .line 337
    :cond_41
    :goto_41
    return-object v0
.end method

.method private declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    monitor-enter p0

    .line 299
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 300
    iget p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-lez p1, :cond_27

    if-nez p2, :cond_b

    goto :goto_27

    .line 301
    :cond_b
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_29

    .line 302
    if-nez p1, :cond_13

    monitor-exit p0

    return-void

    .line 303
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 304
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 305
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 306
    monitor-exit p0

    return-void

    .line 300
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 298
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setThresholdMinutes(Landroid/content/Context;)V
    .registers 3

    .line 329
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_11

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    .line 333
    :cond_11
    return-void
.end method
