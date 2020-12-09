.class public Lcom/android/server/notification/PulledStats;
.super Ljava/lang/Object;
.source "PulledStats.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PulledStats"


# instance fields
.field private mTimePeriodEndMs:J

.field private final mTimePeriodStartMs:J

.field private mUndecoratedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public addUndecoratedPackage(Ljava/lang/String;J)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 128
    return-void
.end method

.method public dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    .line 84
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown pulled stats request: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    .line 86
    :cond_18
    const-string p1, "  Packages with undecordated notifications ("

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 88
    const-string p1, " - "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 90
    const-string p1, "):"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3f

    .line 92
    const-string p1, "    none"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    .line 94
    :cond_3f
    iget-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget-boolean v1, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_5d

    iget-object v1, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 96
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    :cond_71
    goto :goto_45

    .line 100
    :cond_72
    nop

    .line 106
    :goto_73
    return-void
.end method

.method public endTimeMs()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    return-wide v0
.end method

.method toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 50
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown pulled stats request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PulledStats"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 52
    :cond_1e
    new-instance v1, Lcom/android/server/notification/PulledStats$1;

    const-string v2, "NotificationManager pulled metric output"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/android/server/notification/PulledStats$1;-><init>(Lcom/android/server/notification/PulledStats;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;I)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    nop

    .line 73
    :goto_29
    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1
.end method

.method writeToProto(ILandroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown pulled stats request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PulledStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 112
    :cond_1a
    iget-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    const-wide v1, 0x20b00000001L

    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 114
    const-wide v3, 0x10900000001L

    invoke-virtual {p2, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 115
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 116
    goto :goto_20

    .line 117
    :cond_41
    nop

    .line 123
    :goto_42
    return-void
.end method
