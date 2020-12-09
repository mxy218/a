.class final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mConnectedAtMillis:J

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .registers 15

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    new-instance v7, Landroid/hardware/usb/UsbPort;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    iput-object v7, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1150
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14

    .line 1222
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1224
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-string/jumbo v2, "port"

    const-wide v3, 0x10b00000001L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    .line 1225
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v2, "status"

    const-wide v3, 0x10b00000002L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    .line 1226
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-string v2, "can_change_mode"

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1227
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-string v2, "can_change_power_role"

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1229
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-string v2, "can_change_data_role"

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1231
    iget-wide v5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    const-string v2, "connected_at_millis"

    const-wide v3, 0x10300000006L

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1233
    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    const-string v1, "last_connect_duration_millis"

    const-wide v2, 0x10300000007L

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1236
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1237
    return-void
.end method

.method public setStatus(IZIZIZI)Z
    .registers 15

    .line 1156
    nop

    .line 1158
    iput-boolean p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1159
    iput-boolean p4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1160
    iput-boolean p6, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1161
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz p2, :cond_2c

    .line 1162
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result p2

    if-ne p2, p1, :cond_2c

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1163
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p2

    if-ne p2, p3, :cond_2c

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1164
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p2

    if-ne p2, p5, :cond_2c

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1165
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result p2

    if-eq p2, p7, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_3b

    .line 1167
    :cond_2c
    :goto_2c
    new-instance p2, Landroid/hardware/usb/UsbPortStatus;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1170
    const/4 p1, 0x1

    .line 1173
    :goto_3b
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p2

    const-wide/16 p3, 0x0

    if-eqz p2, :cond_54

    iget-wide p5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long p2, p5, p3

    if-nez p2, :cond_54

    .line 1174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1175
    iput-wide p3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_6d

    .line 1176
    :cond_54
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p2

    if-nez p2, :cond_6d

    iget-wide p5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long p2, p5, p3

    if-eqz p2, :cond_6d

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    iget-wide v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr p5, v0

    iput-wide p5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1178
    iput-wide p3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1181
    :cond_6d
    :goto_6d
    return p1
.end method

.method public setStatus(IZIZIZIII)Z
    .registers 19

    .line 1189
    move-object v0, p0

    .line 1191
    move v1, p2

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1192
    move v1, p4

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1193
    move v1, p6

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1194
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v1, :cond_68

    .line 1195
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v1

    move v3, p1

    if-ne v1, v3, :cond_5f

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1196
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    move v4, p3

    if-ne v1, v4, :cond_57

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1197
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v1

    move v5, p5

    if-ne v1, v5, :cond_50

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1198
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v1

    move/from16 v6, p7

    if-ne v1, v6, :cond_4b

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1200
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v1

    move/from16 v7, p8

    if-ne v1, v7, :cond_48

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1202
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    move/from16 v8, p9

    if-eq v1, v8, :cond_46

    goto :goto_71

    :cond_46
    const/4 v1, 0x0

    goto :goto_83

    .line 1200
    :cond_48
    move/from16 v8, p9

    goto :goto_71

    .line 1198
    :cond_4b
    move/from16 v7, p8

    move/from16 v8, p9

    goto :goto_71

    .line 1197
    :cond_50
    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    goto :goto_71

    .line 1196
    :cond_57
    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    goto :goto_71

    .line 1195
    :cond_5f
    move v4, p3

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    goto :goto_71

    .line 1194
    :cond_68
    move v3, p1

    move v4, p3

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 1204
    :goto_71
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move-object v2, v1

    move v3, p1

    move v4, p3

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1207
    const/4 v1, 0x1

    .line 1210
    :goto_83
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_9c

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_9c

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1212
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_b5

    .line 1213
    :cond_9c
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_b5

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b5

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1215
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1218
    :cond_b5
    :goto_b5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
