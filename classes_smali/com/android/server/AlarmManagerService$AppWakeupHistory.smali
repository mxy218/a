.class Lcom/android/server/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppWakeupHistory"
.end annotation


# instance fields
.field private mPackageHistory:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/LongArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowSize:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "windowSize"  # J

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 329
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    .line 330
    return-void
.end method

.method private snapToWindow(Landroid/util/LongArrayQueue;)V
    .registers 6
    .param p1, "history"  # Landroid/util/LongArrayQueue;

    .line 360
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 361
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    .line 363
    :cond_13
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .registers 11
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "nowElapsed"  # J

    .line 384
    const-string v0, "App Alarm history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 387
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 388
    .local v1, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongArrayQueue;

    .line 389
    .local v2, "timestamps":Landroid/util/LongArrayQueue;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v3, ", u"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 392
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 395
    .local v3, "lastIdx":I
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_48
    if-lt v4, v3, :cond_59

    .line 396
    invoke-virtual {v2, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 397
    const-string v5, ", "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 399
    .end local v4  # "j":I
    :cond_59
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 386
    .end local v1  # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2  # "timestamps":Landroid/util/LongArrayQueue;
    .end local v3  # "lastIdx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 401
    .end local v0  # "i":I
    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 402
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "nowElapsed"  # J

    .line 380
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 381
    return-void
.end method

.method getLastWakeupForPackage(Ljava/lang/String;II)J
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "positionFromEnd"  # I

    .line 371
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArrayQueue;

    .line 372
    .local v0, "history":Landroid/util/LongArrayQueue;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_15

    .line 373
    return-wide v1

    .line 375
    :cond_15
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v3

    sub-int/2addr v3, p3

    .line 376
    .local v3, "i":I
    if-gez v3, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {v0, v3}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    :goto_21
    return-wide v1
.end method

.method getTotalWakeupsInWindow(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 366
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArrayQueue;

    .line 367
    .local v0, "history":Landroid/util/LongArrayQueue;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v1

    :goto_18
    return v1
.end method

.method recordAlarmForPackage(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "nowElapsed"  # J

    .line 333
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 334
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArrayQueue;

    .line 335
    .local v1, "history":Landroid/util/LongArrayQueue;
    if-nez v1, :cond_1d

    .line 336
    new-instance v2, Landroid/util/LongArrayQueue;

    invoke-direct {v2}, Landroid/util/LongArrayQueue;-><init>()V

    move-object v1, v2

    .line 337
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1d
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_2e

    .line 340
    :cond_2b
    invoke-virtual {v1, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 342
    :cond_2e
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->snapToWindow(Landroid/util/LongArrayQueue;)V

    .line 343
    return-void
.end method

.method removeForPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 355
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 356
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method removeForUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 346
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 347
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 348
    .local v1, "packageUserKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_21

    .line 349
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 346
    .end local v1  # "packageUserKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 352
    .end local v0  # "i":I
    :cond_24
    return-void
.end method
