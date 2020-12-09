.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1205
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25

    .line 1208
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1209
    if-nez v0, :cond_b

    .line 1210
    return-void

    .line 1213
    :cond_b
    nop

    .line 1214
    nop

    .line 1215
    nop

    .line 1216
    nop

    .line 1217
    nop

    .line 1218
    nop

    .line 1219
    nop

    .line 1221
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const/4 v14, 0x0

    if-nez v3, :cond_62

    .line 1222
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1223
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 1224
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 1225
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    .line 1226
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 1227
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 1228
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 1229
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1db

    .line 1230
    :cond_5b
    move v15, v9

    goto :goto_65

    .line 1224
    :cond_5d
    move v15, v14

    goto :goto_65

    .line 1230
    :cond_5f
    move v8, v14

    move v15, v8

    goto :goto_65

    .line 1221
    :cond_62
    move v3, v14

    move v8, v3

    move v15, v8

    .line 1230
    :goto_65
    const/4 v9, -0x1

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1232
    nop

    .line 1233
    nop

    .line 1234
    const/4 v11, 0x1

    if-eqz v3, :cond_7b

    .line 1235
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v3, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7b

    move v10, v11

    goto :goto_7c

    :cond_7b
    move v10, v14

    .line 1236
    :goto_7c
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v13, "NotificationService"

    if-eqz v3, :cond_9e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_9e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "android.intent.extra.changed_uid_list"

    const-string v9, "android.intent.extra.changed_package_list"

    if-eqz v3, :cond_b6

    .line 1238
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move-object v13, v2

    move v2, v11

    move v3, v14

    move v4, v3

    goto/16 :goto_173

    .line 1240
    :cond_b6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 1241
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1242
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 1243
    nop

    .line 1244
    move-object v13, v2

    move v3, v11

    move v2, v14

    move v4, v2

    goto/16 :goto_173

    .line 1245
    :cond_cb
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1246
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 1248
    nop

    .line 1249
    move-object v13, v2

    move v4, v11

    move v2, v14

    move v3, v2

    goto/16 :goto_173

    .line 1250
    :cond_e0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1251
    nop

    .line 1252
    const-string v0, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v2, v0, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1254
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ff

    .line 1256
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 1258
    nop

    .line 1259
    move-object v4, v2

    move v3, v14

    move-object v2, v0

    move v0, v11

    goto :goto_10c

    .line 1261
    :cond_ff
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 1263
    nop

    .line 1264
    move-object v4, v2

    move v3, v11

    move-object v2, v0

    move v0, v14

    .line 1267
    :goto_10c
    move-object v13, v4

    move v4, v3

    move v3, v0

    move-object v0, v2

    move v2, v14

    goto/16 :goto_173

    :cond_113
    const-string v3, "android.intent.extra.UID"

    if-eqz v15, :cond_12b

    .line 1268
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1269
    new-array v4, v11, [I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v4, v14

    move-object v13, v4

    move v2, v11

    move v3, v14

    move v4, v3

    goto :goto_173

    .line 1271
    :cond_12b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_132

    .line 1273
    return-void

    .line 1275
    :cond_132
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1276
    if-nez v4, :cond_139

    .line 1277
    return-void

    .line 1279
    :cond_139
    if-eqz v8, :cond_160

    .line 1282
    :try_start_13b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1284
    const/4 v5, -0x1

    if-eq v12, v5, :cond_146

    move v5, v12

    goto :goto_147

    .line 1285
    :cond_146
    move v5, v14

    .line 1282
    :goto_147
    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_14b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13b .. :try_end_14b} :catch_156
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_14b} :catch_154

    .line 1286
    if-eq v0, v11, :cond_152

    if-nez v0, :cond_150

    goto :goto_152

    :cond_150
    move v0, v11

    goto :goto_153

    .line 1288
    :cond_152
    :goto_152
    move v0, v14

    .line 1298
    :goto_153
    goto :goto_161

    .line 1296
    :catch_154
    move-exception v0

    goto :goto_160

    .line 1290
    :catch_156
    move-exception v0

    .line 1293
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_160

    .line 1294
    const-string v5, "Exception trying to look up app enabled setting"

    invoke-static {v13, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    :cond_160
    :goto_160
    move v0, v11

    :goto_161
    new-array v5, v11, [Ljava/lang/String;

    aput-object v4, v5, v14

    .line 1301
    new-array v4, v11, [I

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v4, v14

    move v2, v0

    move-object v13, v4

    move-object v0, v5

    move v3, v14

    move v4, v3

    .line 1303
    :goto_173
    if-eqz v0, :cond_1d0

    array-length v5, v0

    if-lez v5, :cond_1d0

    .line 1304
    if-eqz v2, :cond_1be

    .line 1305
    array-length v9, v0

    move v8, v14

    :goto_17c
    if-ge v8, v9, :cond_1bb

    aget-object v5, v0, v8

    .line 1306
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2000()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    if-nez v15, :cond_193

    move/from16 v17, v11

    goto :goto_195

    :cond_193
    move/from16 v17, v14

    :goto_195
    const/16 v18, 0x0

    move/from16 v19, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    move v14, v10

    move v10, v12

    move/from16 v21, v11

    const/16 v20, 0x5

    move/from16 v11, v20

    move/from16 p1, v15

    move v15, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1305
    add-int/lit8 v8, v19, 0x1

    move v10, v14

    move v12, v15

    move/from16 v9, v16

    move/from16 v11, v21

    const/4 v14, 0x0

    move/from16 v15, p1

    goto :goto_17c

    :cond_1bb
    move v14, v10

    move v15, v12

    goto :goto_1d2

    .line 1309
    :cond_1be
    move v14, v10

    move v15, v12

    if-eqz v3, :cond_1c8

    .line 1310
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_1d2

    .line 1311
    :cond_1c8
    if-eqz v4, :cond_1d2

    .line 1312
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_1d2

    .line 1303
    :cond_1d0
    move v14, v10

    move v15, v12

    .line 1316
    :cond_1d2
    :goto_1d2
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v14, v15, v0, v13}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    .line 1318
    :cond_1db
    return-void
.end method
