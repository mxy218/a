.class public Lcom/android/systemui/statusbar/notification/InstantAppNotifier;
.super Lcom/android/systemui/SystemUI;
.source "InstantAppNotifier.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# instance fields
.field private final mCurrentNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private final mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mHandler:Landroid/os/Handler;

    .line 73
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$2;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)Landroid/os/Handler;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method private checkAndPostForPrimaryScreen(Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/pm/IPackageManager;",
            ")V"
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 203
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->checkAndPostForStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_12
    return-void
.end method

.method private checkAndPostForStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$StackInfo;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/pm/IPackageManager;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_41

    .line 222
    :try_start_2
    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    goto :goto_41

    .line 223
    :cond_7
    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v0, Landroid/util/Pair;

    iget v1, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    const/16 p2, 0x2000

    .line 228
    iget v0, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 229
    invoke-interface {p4, v2, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 232
    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object p2, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget v6, p2, p1

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->postInstantAppNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 241
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_41
    :goto_41
    return-void
.end method

.method private getTaskIntent(II)Landroid/content/Intent;
    .registers 5

    .line 363
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 364
    invoke-interface {p0, v0, v1, p2}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 366
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2a

    .line 367
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne p2, p1, :cond_27

    .line 368
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_2a

    return-object p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catch_2a
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private postInstantAppNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 252
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 253
    iget-object v0, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->instant_apps:I

    .line 254
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.substName"

    .line 253
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    new-instance v6, Landroid/util/Pair;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->instant_apps_help_url:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 259
    iget-object v8, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3d

    .line 262
    sget v9, Lcom/android/systemui/R$string;->instant_apps_message_with_help:I

    goto :goto_3f

    .line 263
    :cond_3d
    sget v9, Lcom/android/systemui/R$string;->instant_apps_message:I

    .line 260
    :goto_3f
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 265
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 266
    iget-object v9, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    const-string v12, "package"

    .line 271
    invoke-static {v12, v2, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x4000000

    const/4 v13, 0x0

    move-object v7, v14

    move-object v14, v15

    .line 267
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 275
    new-instance v10, Landroid/app/Notification$Action$Builder;

    iget-object v11, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/systemui/R$string;->app_info:I

    .line 277
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 278
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    const-string v13, "android.intent.action.VIEW"

    if-eqz v6, :cond_99

    .line 281
    iget-object v9, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x4000000

    const/4 v0, 0x0

    move-object v6, v13

    move-object v13, v0

    move-object/from16 v16, v14

    move-object v14, v15

    .line 281
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    move/from16 v0, p5

    goto :goto_9f

    :cond_99
    move-object v6, v13

    move-object/from16 v16, v14

    move/from16 v0, p5

    move-object v14, v7

    .line 290
    :goto_9f
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->getTaskIntent(II)Landroid/content/Intent;

    move-result-object v11

    .line 291
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v13, v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v11, :cond_156

    .line 293
    invoke-virtual {v11}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 296
    invoke-virtual {v11, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v9, 0x200

    .line 298
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v9, 0x10000000

    .line 299
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v9, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    const/4 v0, 0x0

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v18, v14

    move-object v14, v15

    .line 302
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 311
    :try_start_d7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v14
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_df} :catch_e0

    goto :goto_e5

    :catch_e0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v14, v7

    .line 315
    :goto_e5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.category.BROWSABLE"

    .line 319
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unique:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    .line 321
    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    const-string v10, "android.intent.extra.VERSION_CODE"

    .line 322
    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-wide v10, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const-string v6, "android.intent.extra.LONG_VERSION_CODE"

    .line 325
    invoke-virtual {v0, v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.extra.INSTANT_APP_FAILURE"

    .line 326
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    .line 328
    iget-object v9, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    const/4 v13, 0x0

    move-object v14, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 330
    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v9, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->go_to_web:I

    .line 332
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 333
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    move-object/from16 v6, v17

    .line 334
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_159

    :cond_156
    move-object v6, v13

    move-object/from16 v18, v14

    :goto_159
    const/4 v0, 0x7

    .line 340
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v6, v16

    .line 341
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v14, v18

    .line 342
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$color;->instant_apps_color:I

    .line 343
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->instant_apps_title:I

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 347
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v9

    .line 345
    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 348
    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 351
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$drawable;->instant_icon:I

    .line 350
    invoke-static {v1, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 349
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 353
    invoke-virtual {v4, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 354
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v3, p4

    .line 337
    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateForegroundInstantApps()V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 153
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public appTransitionStarting(IJJZ)V
    .registers 7

    .line 112
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p2, p1, :cond_b

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    :cond_b
    return-void
.end method

.method public synthetic lambda$start$0$InstantAppNotifier(Ljava/lang/Boolean;)V
    .registers 2

    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mDockedStackExists:Z

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method public synthetic lambda$updateForegroundInstantApps$1$InstantAppNotifier(Landroid/app/NotificationManager;Landroid/util/Pair;)V
    .registers 4

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v0, Landroid/os/UserHandle;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 185
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p2, 0x7

    .line 182
    invoke-virtual {p1, p0, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$updateForegroundInstantApps$2$InstantAppNotifier(Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .registers 7

    .line 156
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 159
    :try_start_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 161
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 163
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    .line 166
    :cond_1f
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->checkAndPostForStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    .line 169
    :cond_22
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mDockedStackExists:Z

    if-eqz v1, :cond_2e

    .line 170
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->checkAndPostForPrimaryScreen(Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p2

    .line 173
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 178
    :cond_2e
    :goto_2e
    new-instance p2, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Landroid/app/NotificationManager;)V

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method public preloadRecentApps()V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method public start()V
    .registers 7

    .line 82
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 86
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    const-string v2, "InstantAppNotifier"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_15

    .line 91
    :catch_15
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$QG8UJHrN7yIZpZAc2flF-n_csdY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$QG8UJHrN7yIZpZAc2flF-n_csdY;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 102
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_55

    .line 104
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_58
    return-void
.end method
