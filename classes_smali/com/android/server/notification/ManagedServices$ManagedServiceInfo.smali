.class public Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagedServiceInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public connection:Landroid/content/ServiceConnection;

.field public isSystem:Z

.field public service:Landroid/os/IInterface;

.field public targetSdkVersion:I

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/notification/ManagedServices;
    .param p2, "service"  # Landroid/os/IInterface;
    .param p3, "component"  # Landroid/content/ComponentName;
    .param p4, "userid"  # I
    .param p5, "isSystem"  # Z
    .param p6, "connection"  # Landroid/content/ServiceConnection;
    .param p7, "targetSdkVersion"  # I

    .line 1311
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1313
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1314
    iput p4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 1315
    iput-boolean p5, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 1316
    iput-object p6, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 1317
    iput p7, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 1318
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1375
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->access$1000(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1381
    return-void
.end method

.method public enabledAndUserMatches(I)Z
    .registers 7
    .param p1, "nid"  # I

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1359
    return v1

    .line 1361
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_f

    return v3

    .line 1362
    :cond_f
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_14

    return v3

    .line 1363
    :cond_14
    if-eq p1, v2, :cond_35

    if-ne p1, v0, :cond_19

    goto :goto_35

    .line 1364
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 1365
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$900(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1366
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isPermittedForProfile(I)Z

    move-result v0

    if-eqz v0, :cond_33

    move v1, v3

    goto :goto_34

    :cond_33
    nop

    .line 1364
    :goto_34
    return v1

    .line 1363
    :cond_35
    :goto_35
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 1412
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1413
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 1414
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1415
    .local v2, "that":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v3, v4, :cond_46

    iget-boolean v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    iget-boolean v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-ne v3, v4, :cond_46

    iget v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1418
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1419
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 1420
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 1415
    :goto_47
    return v0

    .line 1413
    .end local v2  # "that":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_48
    :goto_48
    return v1
.end method

.method public getOwner()Lcom/android/server/notification/ManagedServices;
    .registers 2

    .line 1325
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1425
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabledForCurrentProfiles()Z
    .registers 3

    .line 1385
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 1386
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 1387
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$1100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGuest(Lcom/android/server/notification/ManagedServices;)Z
    .registers 3
    .param p1, "host"  # Lcom/android/server/notification/ManagedServices;

    .line 1321
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPermittedForProfile(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1396
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$900(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1397
    const/4 v0, 0x1

    return v0

    .line 1399
    :cond_e
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 1400
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1401
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1403
    .local v1, "identity":J
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1404
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1403
    invoke-virtual {v0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2c

    .line 1406
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1403
    return v3

    .line 1406
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSameUser(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1352
    return v1

    .line 1354
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v0, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public supportsProfiles()Z
    .registers 3

    .line 1370
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManagedServiceInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1331
    const-string v1, "component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1332
    const-string v1, ",userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1333
    const-string v1, ",isSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1334
    const-string v1, ",targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1335
    const-string v1, ",connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3a
    const-string v1, "<connection>"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "host"  # Lcom/android/server/notification/ManagedServices;

    .line 1341
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1342
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1343
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1344
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1345
    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1346
    invoke-virtual {p0, p4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1347
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1348
    return-void
.end method
