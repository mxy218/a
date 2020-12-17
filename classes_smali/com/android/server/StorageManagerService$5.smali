.class Lcom/android/server/StorageManagerService$5;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;

    .line 1164
    iput-object p1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "diskId"  # Ljava/lang/String;
    .param p2, "uuid"  # Ljava/lang/String;
    .param p3, "flags"  # I

    .line 1170
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1171
    :try_start_7
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bb67bb3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_29

    const v4, 0x5b18fa1b

    if-eq v3, v4, :cond_1f

    :cond_1e
    goto :goto_32

    :cond_1f
    const-string v3, "force_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v2, v5

    goto :goto_32

    :cond_29
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x0

    :goto_32
    if-eqz v2, :cond_3a

    if-eq v2, v5, :cond_37

    goto :goto_3d

    .line 1177
    :cond_37
    and-int/lit8 p3, p3, -0x2

    goto :goto_3d

    .line 1174
    :cond_3a
    or-int/lit8 p3, p3, 0x1

    .line 1175
    nop

    .line 1182
    :goto_3d
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDiskCreated diskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v2, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    new-instance v3, Landroid/os/storage/DiskInfo;

    invoke-direct {v3, p1, p3, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    nop

    .end local v1  # "value":Ljava/lang/String;
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 5
    .param p1, "diskId"  # Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1214
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1215
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1e

    .line 1216
    iget-object v2, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3200(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1218
    .end local v1  # "disk":Landroid/os/storage/DiskInfo;
    :cond_1e
    monitor-exit v0

    .line 1219
    return-void

    .line 1218
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "diskId"  # Ljava/lang/String;
    .param p2, "sizeBytes"  # J
    .param p4, "label"  # Ljava/lang/String;
    .param p5, "sysPath"  # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1202
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1203
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1b

    .line 1204
    iput-wide p2, v1, Landroid/os/storage/DiskInfo;->size:J

    .line 1205
    iput-object p4, v1, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1206
    iput-object p5, v1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1208
    .end local v1  # "disk":Landroid/os/storage/DiskInfo;
    :cond_1b
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 5
    .param p1, "diskId"  # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1191
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1192
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1a

    .line 1193
    iget-object v2, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1195
    .end local v1  # "disk":Landroid/os/storage/DiskInfo;
    :cond_1a
    monitor-exit v0

    .line 1196
    return-void

    .line 1195
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "type"  # I
    .param p3, "diskId"  # Ljava/lang/String;
    .param p4, "partGuid"  # Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1224
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1225
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    new-instance v2, Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, p1, p2, v1, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1226
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v3, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->access$3300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1228
    .end local v1  # "disk":Landroid/os/storage/DiskInfo;
    .end local v2  # "vol":Landroid/os/storage/VolumeInfo;
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 4
    .param p1, "volId"  # Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1280
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    monitor-exit v0

    .line 1282
    return-void

    .line 1281
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "internalPath"  # Ljava/lang/String;

    .line 1269
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1270
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1271
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_17

    .line 1272
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1274
    .end local v1  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_17
    monitor-exit v0

    .line 1275
    return-void

    .line 1274
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "fsType"  # Ljava/lang/String;
    .param p3, "fsUuid"  # Ljava/lang/String;
    .param p4, "fsLabel"  # Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1248
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1249
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1b

    .line 1250
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1251
    iput-object p3, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1252
    iput-object p4, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1254
    .end local v1  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1b
    monitor-exit v0

    .line 1255
    return-void

    .line 1254
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "path"  # Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1260
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1261
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_17

    .line 1262
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1264
    .end local v1  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_17
    monitor-exit v0

    .line 1265
    return-void

    .line 1264
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "state"  # I

    .line 1233
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1234
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1235
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1f

    .line 1236
    iget v2, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1237
    .local v2, "oldState":I
    move v3, p2

    .line 1238
    .local v3, "newState":I
    iput v3, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1239
    iget-object v4, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$3400(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1241
    .end local v1  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v2  # "oldState":I
    .end local v3  # "newState":I
    :cond_1f
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
