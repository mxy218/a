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
    .registers 7

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1323
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 1324
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

    .line 1325
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 1326
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 1327
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 1328
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 1329
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_32

    .line 1330
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object p1

    goto :goto_3a

    .line 1331
    :cond_32
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object p1

    :goto_3a
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1332
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1333
    if-nez p1, :cond_5c

    .line 1334
    new-instance p1, Lcom/android/server/AlarmManagerService$FilterStats;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    :cond_5c
    iput-wide p3, p1, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    .line 1338
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1339
    iget p1, p2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iput p1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    .line 1340
    return-void
.end method


# virtual methods
.method isBroadcast()Z
    .registers 2

    .line 1343
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

    .line 1348
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
    .registers 8

    .line 1362
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1364
    iget v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1365
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1366
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1367
    iget v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_38

    .line 1369
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/PendingIntent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1371
    :cond_38
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    if-eqz v0, :cond_44

    .line 1372
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1374
    :cond_44
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    if-eqz v0, :cond_50

    .line 1375
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1377
    :cond_50
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_5c

    .line 1378
    const-wide v1, 0x10b00000008L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/WorkSource;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1381
    :cond_5c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1382
    return-void
.end method
