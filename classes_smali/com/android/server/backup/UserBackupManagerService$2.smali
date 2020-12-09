.class Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 1217
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$UserBackupManagerService$2(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1257
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3

    .line 1308
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3

    .line 1330
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 1223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1224
    nop

    .line 1225
    nop

    .line 1226
    nop

    .line 1227
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1228
    nop

    .line 1230
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_4e

    .line 1231
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1232
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_4e

    .line 1263
    :cond_28
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1264
    nop

    .line 1265
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move p1, v3

    goto :goto_8a

    .line 1266
    :cond_39
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 1267
    nop

    .line 1268
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move p1, v3

    move v2, p1

    goto :goto_8a

    .line 1266
    :cond_4b
    move p1, v3

    move v2, p1

    goto :goto_8a

    .line 1233
    :cond_4e
    :goto_4e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1234
    if-nez v1, :cond_55

    .line 1235
    return-void

    .line 1238
    :cond_55
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_5f

    .line 1240
    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    .line 1243
    :cond_5f
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1244
    if-eqz v2, :cond_7d

    .line 1246
    nop

    .line 1247
    const-string p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1256
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1258
    return-void

    .line 1261
    :cond_7d
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1262
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1263
    nop

    .line 1271
    :goto_8a
    if-eqz v4, :cond_15b

    array-length p2, v4

    if-nez p2, :cond_91

    goto/16 :goto_15b

    .line 1275
    :cond_91
    const-string p2, "android.intent.extra.UID"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1276
    if-eqz v2, :cond_131

    .line 1277
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1278
    if-eqz p1, :cond_a7

    .line 1281
    :try_start_a2
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1283
    :cond_a7
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4}, Lcom/android/server/backup/UserBackupManagerService;->access$700(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1284
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_12e

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1287
    array-length v0, v4

    move v1, v3

    :goto_b3
    if-ge v1, v0, :cond_126

    aget-object v2, v4, v1

    .line 1289
    :try_start_b7
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1290
    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$900(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1291
    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->access$800(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v6

    .line 1290
    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1292
    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_e8

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1294
    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->access$800(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v6

    .line 1293
    invoke-static {v5, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 1295
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v2, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1296
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_fa

    .line 1301
    :cond_e8
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$100(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_ef
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b7 .. :try_end_ef} :catch_10c

    .line 1302
    :try_start_ef
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$1000(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1303
    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_109

    .line 1304
    :try_start_f5
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$1100(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1307
    :goto_fa
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;

    invoke-direct {v6, p0, v2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_108
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_108} :catch_10c

    .line 1313
    goto :goto_123

    .line 1303
    :catchall_109
    move-exception v6

    :try_start_10a
    monitor-exit v5
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v6
    :try_end_10c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_10c} :catch_10c

    .line 1309
    :catch_10c
    move-exception v5

    .line 1311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t resolve new app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BackupManagerService"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :goto_123
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 1318
    :cond_126
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string p2, "@pm@"

    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1319
    goto :goto_15a

    .line 1284
    :catchall_12e
    move-exception p1

    :try_start_12f
    monitor-exit v0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw p1

    .line 1320
    :cond_131
    if-nez p1, :cond_144

    .line 1323
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 1324
    :try_start_13a
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1325
    monitor-exit p1

    goto :goto_144

    :catchall_141
    move-exception p2

    monitor-exit p1
    :try_end_143
    .catchall {:try_start_13a .. :try_end_143} :catchall_141

    throw p2

    .line 1328
    :cond_144
    :goto_144
    array-length p1, v4

    :goto_145
    if-ge v3, p1, :cond_15a

    aget-object p2, v4, v3

    .line 1329
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;

    invoke-direct {v1, p0, p2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1328
    add-int/lit8 v3, v3, 0x1

    goto :goto_145

    .line 1333
    :cond_15a
    :goto_15a
    return-void

    .line 1272
    :cond_15b
    :goto_15b
    return-void
.end method
