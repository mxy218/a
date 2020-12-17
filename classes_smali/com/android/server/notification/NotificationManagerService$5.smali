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
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 1262
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 42
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1265
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_b

    .line 1267
    return-void

    .line 1270
    :cond_b
    const/4 v0, 0x0

    .line 1271
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1272
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1273
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1274
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1275
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1276
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1278
    .local v20, "reason":I
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v11, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v12, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v14, "android.intent.action.PACKAGE_RESTARTED"

    if-nez v9, :cond_71

    .line 1279
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_6d

    .line 1280
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 1281
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_69

    .line 1282
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_6d

    .line 1283
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 1284
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 1285
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 1286
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_6d

    :cond_5f
    move-object/from16 v16, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v18, v8

    goto/16 :goto_342

    .line 1281
    :cond_69
    move/from16 v21, v5

    move v5, v0

    goto :goto_74

    .line 1287
    :cond_6d
    :goto_6d
    move/from16 v21, v5

    move v5, v0

    goto :goto_74

    .line 1278
    :cond_71
    move/from16 v21, v5

    move v5, v0

    .line 1287
    .end local v0  # "queryRestart":Z
    .local v5, "queryRestart":Z
    .local v21, "packageChanged":Z
    :goto_74
    const-string v9, "android.intent.extra.user_handle"

    move-object/from16 v16, v15

    const/4 v15, -0x1

    move/from16 v17, v6

    .end local v6  # "cancelNotifications":Z
    .local v17, "cancelNotifications":Z
    invoke-virtual {v2, v9, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1289
    .local v6, "changeUserId":I
    const/16 v18, 0x0

    .line 1290
    .local v18, "pkgList":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 1291
    .local v19, "uidList":[I
    const/4 v15, 0x0

    if-eqz v4, :cond_90

    .line 1292
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_90

    const/4 v0, 0x1

    goto :goto_91

    :cond_90
    move v0, v15

    :goto_91
    move/from16 v24, v0

    .line 1293
    .local v24, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v15, "NotificationService"

    if-eqz v0, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v4

    .end local v4  # "queryRemove":Z
    .local v26, "queryRemove":Z
    const-string v4, "action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removing="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v24

    .end local v24  # "removingPackage":Z
    .local v4, "removingPackage":Z
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .end local v26  # "queryRemove":Z
    .local v4, "queryRemove":Z
    .restart local v24  # "removingPackage":Z
    :cond_ba
    move/from16 v26, v4

    move/from16 v4, v24

    .line 1294
    .end local v24  # "removingPackage":Z
    .local v4, "removingPackage":Z
    .restart local v26  # "queryRemove":Z
    :goto_be
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "android.intent.extra.UID"

    move/from16 v24, v7

    .end local v7  # "hideNotifications":Z
    .local v24, "hideNotifications":Z
    const-string v7, "android.intent.extra.changed_uid_list"

    move/from16 v27, v8

    .end local v8  # "unhideNotifications":Z
    .local v27, "unhideNotifications":Z
    const-string v8, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_e0

    .line 1295
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1296
    .end local v18  # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    move/from16 v22, v17

    move/from16 v8, v27

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    .end local v19  # "uidList":[I
    .local v7, "uidList":[I
    goto/16 :goto_1be

    .line 1297
    .end local v0  # "pkgList":[Ljava/lang/String;
    .end local v7  # "uidList":[I
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    :cond_e0
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1298
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1299
    .end local v18  # "pkgList":[Ljava/lang/String;
    .restart local v0  # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1300
    .end local v19  # "uidList":[I
    .restart local v7  # "uidList":[I
    const/4 v8, 0x0

    .line 1301
    .end local v17  # "cancelNotifications":Z
    .local v8, "cancelNotifications":Z
    const/4 v10, 0x1

    move/from16 v22, v8

    move/from16 v24, v10

    move/from16 v8, v27

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    .end local v24  # "hideNotifications":Z
    .local v10, "hideNotifications":Z
    goto/16 :goto_1be

    .line 1302
    .end local v0  # "pkgList":[Ljava/lang/String;
    .end local v7  # "uidList":[I
    .end local v8  # "cancelNotifications":Z
    .end local v10  # "hideNotifications":Z
    .restart local v17  # "cancelNotifications":Z
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    .restart local v24  # "hideNotifications":Z
    :cond_fc
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 1303
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1304
    .end local v18  # "pkgList":[Ljava/lang/String;
    .restart local v0  # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1305
    .end local v19  # "uidList":[I
    .restart local v7  # "uidList":[I
    const/4 v8, 0x0

    .line 1306
    .end local v17  # "cancelNotifications":Z
    .restart local v8  # "cancelNotifications":Z
    const/4 v10, 0x1

    move/from16 v22, v8

    move v8, v10

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    .end local v27  # "unhideNotifications":Z
    .local v10, "unhideNotifications":Z
    goto/16 :goto_1be

    .line 1307
    .end local v0  # "pkgList":[Ljava/lang/String;
    .end local v7  # "uidList":[I
    .end local v8  # "cancelNotifications":Z
    .end local v10  # "unhideNotifications":Z
    .restart local v17  # "cancelNotifications":Z
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    .restart local v27  # "unhideNotifications":Z
    :cond_115
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1308
    nop

    .line 1309
    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1311
    .local v0, "distractionRestrictions":I
    and-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_137

    .line 1313
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1314
    .end local v18  # "pkgList":[Ljava/lang/String;
    .local v8, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1315
    .end local v19  # "uidList":[I
    .restart local v7  # "uidList":[I
    const/4 v10, 0x0

    .line 1316
    .end local v17  # "cancelNotifications":Z
    .local v10, "cancelNotifications":Z
    const/4 v11, 0x1

    move-object v0, v8

    move/from16 v24, v11

    move/from16 v11, v27

    .end local v24  # "hideNotifications":Z
    .local v11, "hideNotifications":Z
    goto :goto_142

    .line 1318
    .end local v7  # "uidList":[I
    .end local v8  # "pkgList":[Ljava/lang/String;
    .end local v10  # "cancelNotifications":Z
    .end local v11  # "hideNotifications":Z
    .restart local v17  # "cancelNotifications":Z
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    .restart local v24  # "hideNotifications":Z
    :cond_137
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1319
    .end local v18  # "pkgList":[Ljava/lang/String;
    .restart local v8  # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1320
    .end local v19  # "uidList":[I
    .restart local v7  # "uidList":[I
    const/4 v10, 0x0

    .line 1321
    .end local v17  # "cancelNotifications":Z
    .restart local v10  # "cancelNotifications":Z
    const/4 v11, 0x1

    move-object v0, v8

    .line 1324
    .end local v8  # "pkgList":[Ljava/lang/String;
    .end local v27  # "unhideNotifications":Z
    .local v0, "pkgList":[Ljava/lang/String;
    .local v11, "unhideNotifications":Z
    :goto_142
    move/from16 v22, v10

    move v8, v11

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    goto/16 :goto_1be

    .end local v0  # "pkgList":[Ljava/lang/String;
    .end local v7  # "uidList":[I
    .end local v10  # "cancelNotifications":Z
    .end local v11  # "unhideNotifications":Z
    .restart local v17  # "cancelNotifications":Z
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    .restart local v27  # "unhideNotifications":Z
    :cond_14b
    if-eqz v5, :cond_168

    .line 1325
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1326
    .end local v18  # "pkgList":[Ljava/lang/String;
    .restart local v0  # "pkgList":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v7, -0x1

    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v7, 0x0

    aput v10, v8, v7

    move-object v7, v8

    move/from16 v22, v17

    move/from16 v8, v27

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    .end local v19  # "uidList":[I
    .restart local v7  # "uidList":[I
    goto :goto_1be

    .line 1329
    .end local v0  # "pkgList":[Ljava/lang/String;
    .end local v7  # "uidList":[I
    .restart local v18  # "pkgList":[Ljava/lang/String;
    .restart local v19  # "uidList":[I
    :cond_168
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1330
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1334
    :cond_173
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1335
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_17a

    .line 1336
    return-void

    .line 1338
    :cond_17a
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1339
    .local v8, "pkgName":Ljava/lang/String;
    if-nez v8, :cond_181

    .line 1340
    return-void

    .line 1342
    :cond_181
    if-eqz v21, :cond_1a9

    .line 1345
    :try_start_183
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1347
    const/4 v10, -0x1

    if-eq v6, v10, :cond_18e

    move v10, v6

    goto :goto_18f

    .line 1348
    :cond_18e
    const/4 v10, 0x0

    .line 1345
    :goto_18f
    invoke-interface {v0, v8, v10}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_193
    .catch Ljava/lang/IllegalArgumentException; {:try_start_183 .. :try_end_193} :catch_19e
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_193} :catch_19c

    .line 1349
    .local v0, "enabled":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_198

    if-nez v0, :cond_19b

    .line 1351
    :cond_198
    const/4 v10, 0x0

    move/from16 v17, v10

    .line 1361
    .end local v0  # "enabled":I
    :cond_19b
    :goto_19b
    goto :goto_1a9

    .line 1359
    :catch_19c
    move-exception v0

    goto :goto_1a9

    .line 1353
    :catch_19e
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v10, :cond_19b

    .line 1357
    const-string v10, "Exception trying to look up app enabled setting"

    invoke-static {v15, v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19b

    .line 1363
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :cond_1a9
    :goto_1a9
    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v8, v0, v23

    .line 1364
    .end local v18  # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v10, v14, [I

    const/4 v12, -0x1

    invoke-virtual {v2, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    aput v11, v10, v23

    move-object v7, v10

    move/from16 v22, v17

    move/from16 v8, v27

    .line 1367
    .end local v17  # "cancelNotifications":Z
    .end local v19  # "uidList":[I
    .end local v27  # "unhideNotifications":Z
    .local v7, "uidList":[I
    .local v8, "unhideNotifications":Z
    .local v22, "cancelNotifications":Z
    :goto_1be
    if-eqz v0, :cond_32d

    array-length v10, v0

    if-lez v10, :cond_32d

    .line 1368
    array-length v11, v0

    move/from16 v10, v23

    :goto_1c6
    if-ge v10, v11, :cond_326

    move-object/from16 v17, v15

    aget-object v15, v0, v10

    .line 1369
    .local v15, "pkgName":Ljava/lang/String;
    if-eqz v22, :cond_211

    .line 1370
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v19

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    if-nez v5, :cond_1e3

    move/from16 v30, v14

    goto :goto_1e5

    :cond_1e3
    move/from16 v30, v23

    :goto_1e5
    const/16 v31, 0x0

    move-object/from16 v32, v9

    move-object v9, v12

    move/from16 v33, v10

    move/from16 v10, v19

    move/from16 v34, v11

    move/from16 v11, v25

    const/16 v18, -0x1

    move-object v12, v15

    move-object/from16 v35, v13

    move-object/from16 v13, v27

    move/from16 v19, v14

    move/from16 v14, v28

    move-object/from16 v36, v15

    move-object/from16 v37, v16

    move-object/from16 v38, v17

    .end local v15  # "pkgName":Ljava/lang/String;
    .local v36, "pkgName":Ljava/lang/String;
    move/from16 v15, v29

    move/from16 v16, v30

    move/from16 v17, v6

    move/from16 v18, v20

    move-object/from16 v19, v31

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_22e

    .line 1372
    .end local v36  # "pkgName":Ljava/lang/String;
    .restart local v15  # "pkgName":Ljava/lang/String;
    :cond_211
    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v35, v13

    move-object/from16 v36, v15

    move-object/from16 v37, v16

    move-object/from16 v38, v17

    .end local v15  # "pkgName":Ljava/lang/String;
    .restart local v36  # "pkgName":Ljava/lang/String;
    if-eqz v24, :cond_227

    .line 1373
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_22e

    .line 1374
    :cond_227
    if-eqz v8, :cond_22e

    .line 1375
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1380
    :cond_22e
    :goto_22e
    move-object/from16 v9, v37

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27a

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1381
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v10

    move-object/from16 v11, v36

    .end local v36  # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lcom/android/server/notification/PreferencesHelper;->forceAuthorityManagement(Ljava/lang/String;)I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_275

    .line 1382
    invoke-static {v11, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_270

    .line 1383
    move-object/from16 v10, v35

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1384
    .local v14, "uid":I
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v15}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v15

    invoke-virtual {v15, v11, v14}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_26e

    .line 1385
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v15}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v15

    const/4 v12, 0x1

    invoke-virtual {v15, v11, v14, v12}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    .line 1386
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_280

    .line 1384
    :cond_26e
    const/4 v12, 0x1

    goto :goto_280

    .line 1382
    .end local v14  # "uid":I
    :cond_270
    move-object/from16 v10, v35

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_280

    .line 1381
    :cond_275
    move-object/from16 v10, v35

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_280

    .line 1380
    .end local v11  # "pkgName":Ljava/lang/String;
    .restart local v36  # "pkgName":Ljava/lang/String;
    :cond_27a
    move-object/from16 v10, v35

    move-object/from16 v11, v36

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1390
    .end local v36  # "pkgName":Ljava/lang/String;
    .restart local v11  # "pkgName":Ljava/lang/String;
    :goto_280
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_304

    .line 1391
    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1392
    .restart local v14  # "uid":I
    move-object/from16 v15, v32

    invoke-virtual {v2, v15, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1393
    .local v12, "userId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive:app added,uid="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",userId="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkgName="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, v38

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/16 v2, 0x3e7

    if-ne v12, v2, :cond_2fd

    .line 1395
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v14}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;I)I

    move-result v2

    .line 1396
    .local v2, "mainUid":I
    move-object/from16 v16, v3

    .end local v3  # "action":Ljava/lang/String;
    .local v16, "action":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1397
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2d1

    const/4 v3, 0x1

    goto :goto_2d2

    :cond_2d1
    const/4 v3, 0x0

    .line 1398
    .local v3, "mainEnabled":Z
    :goto_2d2
    move/from16 v17, v5

    .end local v5  # "queryRestart":Z
    .local v17, "queryRestart":Z
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v5

    invoke-virtual {v5, v11, v14, v3}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    .line 1399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    .end local v8  # "unhideNotifications":Z
    .local v18, "unhideNotifications":Z
    const-string/jumbo v8, "onReceive:mainUid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mainEnabled="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30e

    .line 1394
    .end local v2  # "mainUid":I
    .end local v16  # "action":Ljava/lang/String;
    .end local v17  # "queryRestart":Z
    .end local v18  # "unhideNotifications":Z
    .local v3, "action":Ljava/lang/String;
    .restart local v5  # "queryRestart":Z
    .restart local v8  # "unhideNotifications":Z
    :cond_2fd
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v8

    .end local v3  # "action":Ljava/lang/String;
    .end local v5  # "queryRestart":Z
    .end local v8  # "unhideNotifications":Z
    .restart local v16  # "action":Ljava/lang/String;
    .restart local v17  # "queryRestart":Z
    .restart local v18  # "unhideNotifications":Z
    goto :goto_30e

    .line 1390
    .end local v12  # "userId":I
    .end local v14  # "uid":I
    .end local v16  # "action":Ljava/lang/String;
    .end local v17  # "queryRestart":Z
    .end local v18  # "unhideNotifications":Z
    .restart local v3  # "action":Ljava/lang/String;
    .restart local v5  # "queryRestart":Z
    .restart local v8  # "unhideNotifications":Z
    :cond_304
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v15, v32

    move-object/from16 v13, v38

    .line 1368
    .end local v3  # "action":Ljava/lang/String;
    .end local v5  # "queryRestart":Z
    .end local v8  # "unhideNotifications":Z
    .end local v11  # "pkgName":Ljava/lang/String;
    .restart local v16  # "action":Ljava/lang/String;
    .restart local v17  # "queryRestart":Z
    .restart local v18  # "unhideNotifications":Z
    :goto_30e
    add-int/lit8 v2, v33, 0x1

    move-object/from16 v3, v16

    move/from16 v5, v17

    move/from16 v8, v18

    move/from16 v11, v34

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v9

    move-object v9, v15

    move-object v15, v13

    move-object v13, v10

    move v10, v2

    move-object/from16 v2, p2

    goto/16 :goto_1c6

    .end local v16  # "action":Ljava/lang/String;
    .end local v17  # "queryRestart":Z
    .end local v18  # "unhideNotifications":Z
    .restart local v3  # "action":Ljava/lang/String;
    .restart local v5  # "queryRestart":Z
    .restart local v8  # "unhideNotifications":Z
    :cond_326
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v8

    .end local v3  # "action":Ljava/lang/String;
    .end local v5  # "queryRestart":Z
    .end local v8  # "unhideNotifications":Z
    .restart local v16  # "action":Ljava/lang/String;
    .restart local v17  # "queryRestart":Z
    .restart local v18  # "unhideNotifications":Z
    goto :goto_333

    .line 1367
    .end local v16  # "action":Ljava/lang/String;
    .end local v17  # "queryRestart":Z
    .end local v18  # "unhideNotifications":Z
    .restart local v3  # "action":Ljava/lang/String;
    .restart local v5  # "queryRestart":Z
    .restart local v8  # "unhideNotifications":Z
    :cond_32d
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v8

    .line 1407
    .end local v3  # "action":Ljava/lang/String;
    .end local v5  # "queryRestart":Z
    .end local v8  # "unhideNotifications":Z
    .restart local v16  # "action":Ljava/lang/String;
    .restart local v17  # "queryRestart":Z
    .restart local v18  # "unhideNotifications":Z
    :goto_333
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v0, v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move/from16 v0, v17

    move/from16 v7, v24

    move/from16 v4, v26

    .line 1409
    .end local v6  # "changeUserId":I
    .end local v17  # "queryRestart":Z
    .end local v24  # "hideNotifications":Z
    .end local v26  # "queryRemove":Z
    .local v0, "queryRestart":Z
    .local v4, "queryRemove":Z
    .local v7, "hideNotifications":Z
    :goto_342
    return-void
.end method
