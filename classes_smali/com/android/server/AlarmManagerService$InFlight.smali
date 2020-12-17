.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFlight"
.end annotation


# instance fields
.field final mAlarmType:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mCreatorUid:I

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mListener:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mUid:I

.field final mWhenElapsed:J

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;J)V
    .registers 9
    .param p1, "service"  # Lcom/android/server/AlarmManagerService;
    .param p2, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;
    .param p3, "nowELAPSED"  # J

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1388
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 1389
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    .line 1390
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 1391
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 1392
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 1393
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 1394
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_32

    .line 1395
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    goto :goto_3a

    .line 1396
    :cond_32
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1397
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1398
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_5d

    .line 1399
    new-instance v1, Lcom/android/server/AlarmManagerService$FilterStats;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    move-object v0, v1

    .line 1400
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_5d
    iput-wide p3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    .line 1403
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1404
    iget v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iput v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    .line 1405
    return-void
.end method


# virtual methods
.method isBroadcast()Z
    .registers 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InFlight{pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 1427
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1429
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1430
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1431
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1432
    iget v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1433
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_38

    .line 1434
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1436
    :cond_38
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    if-eqz v2, :cond_44

    .line 1437
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1439
    :cond_44
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    if-eqz v2, :cond_50

    .line 1440
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1442
    :cond_50
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_5c

    .line 1443
    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/WorkSource;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1446
    :cond_5c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1447
    return-void
.end method
