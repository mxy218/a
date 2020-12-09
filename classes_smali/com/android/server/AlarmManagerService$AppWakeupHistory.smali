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

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 299
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    .line 300
    return-void
.end method

.method private snapToWindow(Landroid/util/LongArrayQueue;)V
    .registers 6

    .line 330
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 331
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    .line 333
    :cond_13
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .registers 11

    .line 354
    const-string v0, "App Alarm history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 356
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 357
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 358
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongArrayQueue;

    .line 359
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v4, ", u"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 362
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 365
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_48
    if-lt v4, v2, :cond_59

    .line 366
    invoke-virtual {v3, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 367
    const-string v5, ", "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 369
    :cond_59
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 371
    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 372
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 7

    .line 350
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 351
    return-void
.end method

.method getLastWakeupForPackage(Ljava/lang/String;II)J
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongArrayQueue;

    .line 342
    const-wide/16 v0, 0x0

    if-nez p1, :cond_15

    .line 343
    return-wide v0

    .line 345
    :cond_15
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result p2

    sub-int/2addr p2, p3

    .line 346
    if-gez p2, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p1, p2}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v0

    :goto_21
    return-wide v0
.end method

.method getTotalWakeupsInWindow(Ljava/lang/String;I)I
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongArrayQueue;

    .line 337
    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    :goto_18
    return p1
.end method

.method recordAlarmForPackage(Ljava/lang/String;IJ)V
    .registers 7

    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/LongArrayQueue;

    .line 305
    if-nez p2, :cond_1c

    .line 306
    new-instance p2, Landroid/util/LongArrayQueue;

    invoke-direct {p2}, Landroid/util/LongArrayQueue;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_1c
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v0

    cmp-long p1, v0, p3

    if-gez p1, :cond_2d

    .line 310
    :cond_2a
    invoke-virtual {p2, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 312
    :cond_2d
    invoke-direct {p0, p2}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->snapToWindow(Landroid/util/LongArrayQueue;)V

    .line 313
    return-void
.end method

.method removeForPackage(Ljava/lang/String;I)V
    .registers 3

    .line 325
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 326
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method removeForUser(I)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 317
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 318
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 319
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 316
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 322
    :cond_24
    return-void
.end method
