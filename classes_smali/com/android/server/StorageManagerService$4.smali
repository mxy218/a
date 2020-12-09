.class Lcom/android/server/StorageManagerService$4;
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

    .line 1110
    iput-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .registers 9

    .line 1113
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1114
    :try_start_7
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
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

    move-result v1

    if-eqz v1, :cond_1e

    move v2, v5

    goto :goto_32

    :cond_29
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    :goto_32
    if-eqz v2, :cond_3a

    if-eq v2, v5, :cond_37

    goto :goto_3d

    .line 1120
    :cond_37
    and-int/lit8 p2, p2, -0x2

    goto :goto_3d

    .line 1117
    :cond_3a
    or-int/lit8 p2, p2, 0x1

    .line 1118
    nop

    .line 1123
    :goto_3d
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/os/storage/DiskInfo;

    invoke-direct {v2, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    monitor-exit v0

    .line 1125
    return-void

    .line 1124
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 4

    .line 1152
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1153
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 1154
    if-eqz p1, :cond_1e

    .line 1155
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3100(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1157
    :cond_1e
    monitor-exit v0

    .line 1158
    return-void

    .line 1157
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1140
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1141
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 1142
    if-eqz p1, :cond_1b

    .line 1143
    iput-wide p2, p1, Landroid/os/storage/DiskInfo;->size:J

    .line 1144
    iput-object p4, p1, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1145
    iput-object p5, p1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1147
    :cond_1b
    monitor-exit v0

    .line 1148
    return-void

    .line 1147
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 4

    .line 1129
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 1131
    if-eqz p1, :cond_1a

    .line 1132
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService;->access$2900(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1134
    :cond_1a
    monitor-exit v0

    .line 1135
    return-void

    .line 1134
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1162
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1163
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/DiskInfo;

    .line 1164
    new-instance v1, Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1165
    iget-object p2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1, v1}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1167
    monitor-exit v0

    .line 1168
    return-void

    .line 1167
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 4

    .line 1218
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1219
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    monitor-exit v0

    .line 1221
    return-void

    .line 1220
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1208
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 1210
    if-eqz p1, :cond_17

    .line 1211
    iput-object p2, p1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1213
    :cond_17
    monitor-exit v0

    .line 1214
    return-void

    .line 1213
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1186
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1187
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 1188
    if-eqz p1, :cond_1b

    .line 1189
    iput-object p2, p1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1190
    iput-object p3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1191
    iput-object p4, p1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1193
    :cond_1b
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1198
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1199
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 1200
    if-eqz p1, :cond_17

    .line 1201
    iput-object p2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1203
    :cond_17
    monitor-exit v0

    .line 1204
    return-void

    .line 1203
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 6

    .line 1172
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1173
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 1174
    if-eqz p1, :cond_1f

    .line 1175
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1176
    nop

    .line 1177
    iput p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1178
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, p1, v1, p2}, Lcom/android/server/StorageManagerService;->access$3300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1180
    :cond_1f
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p1
.end method
