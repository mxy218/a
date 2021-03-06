.class public Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemInfo"
.end annotation


# instance fields
.field public currentPss:J

.field public currentUss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:J

.field public pss:[J

.field public startTime:J

.field public uss:[J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .registers 8

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    new-array v1, v0, [J

    .line 497
    iput-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    new-array v0, v0, [J

    .line 498
    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->uss:[J

    const-wide/16 v0, 0x1

    .line 499
    iput-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 503
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    .line 504
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    .line 505
    iput-wide p4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string/jumbo p1, "{ \"pid\": "

    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ", \"name\": \""

    .line 516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    const/16 p3, 0x22

    const/16 v0, 0x2d

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "\", \"start\": "

    .line 518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ", \"pss\": ["

    .line 520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 523
    :goto_2e
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    array-length v0, v0

    const-string v1, ","

    if-ge p3, v0, :cond_49

    if-lez p3, :cond_3a

    .line 524
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    iget v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    add-int/2addr v1, p3

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-wide v0, v0, v1

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2e

    :cond_49
    const-string p3, "], \"uss\": ["

    .line 527
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    :goto_4e
    iget-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->uss:[J

    array-length p3, p3

    if-ge p1, p3, :cond_67

    if-lez p1, :cond_58

    .line 529
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    :cond_58
    iget-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->uss:[J

    iget v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    add-int/2addr v0, p1

    array-length v2, p3

    rem-int/2addr v0, v2

    aget-wide v2, p3, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    :cond_67
    const-string p0, "] }"

    .line 532
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getUptime()J
    .registers 5

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
