.class Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxJobCounts"
.end annotation


# instance fields
.field private final mMaxBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mMinBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mTotal:Landroid/util/KeyValueListParser$IntValue;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p2, p1}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    .line 340
    new-instance p1, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {p1, p4, p3}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    .line 341
    new-instance p1, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {p1, p6, p5}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    .line 342
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 397
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 398
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    const-wide v1, 0x10500000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 399
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v1, 0x10500000002L

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 400
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v1, 0x10500000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 401
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 402
    return-void
.end method

.method public getMaxBg()I
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinBg()I
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 349
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1e

    .line 350
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1, v0}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_2d

    .line 351
    :cond_1e
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    const/16 v1, 0x10

    if-le p1, v1, :cond_2d

    .line 352
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 355
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    if-ge p1, v0, :cond_3b

    .line 356
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1, v0}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_54

    .line 357
    :cond_3b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    if-le p1, v1, :cond_54

    .line 358
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 360
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    if-gez p1, :cond_63

    .line 361
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_96

    .line 363
    :cond_63
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    if-le p1, v1, :cond_7c

    .line 364
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 366
    :cond_7c
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {p1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    if-lt p1, v1, :cond_96

    .line 367
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v1}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 370
    :cond_96
    :goto_96
    return-void
.end method
