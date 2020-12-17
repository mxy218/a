.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startAppsReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 235
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v2}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "package"

    .line 237
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "notification"

    .line 239
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 238
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    const/16 v5, 0x200

    .line 240
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 242
    :goto_3f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_b9

    .line 243
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x3

    .line 245
    :try_start_4d
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v11, v12}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_71

    .line 246
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "miscellaneous"

    invoke-interface {v4, v11, v12, v13, v9}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v11

    if-eqz v11, :cond_71

    .line 249
    invoke-virtual {v11, v10}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v12, 0x4

    .line 250
    invoke-virtual {v11, v12}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 251
    iget-object v12, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v12, v13, v11}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 254
    :cond_71
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v11, v12, v9}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_78} :catch_78

    .line 257
    :catch_78
    iget-boolean v11, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_93

    .line 258
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_93

    iget-object v10, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-static {v10, v11}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$500(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_93

    .line 261
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10, v6, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 267
    :cond_93
    :try_start_93
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v3, v9, v10}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 268
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v9}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const-string v9, "com.android.mms"

    .line 269
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 270
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v9}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_b6} :catch_b6

    :catch_b6
    :cond_b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 276
    :cond_b9
    :try_start_b9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_c0

    .line 279
    :catch_c0
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 280
    invoke-virtual {v1, v9}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 282
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 283
    array-length v3, v0

    move v4, v6

    :goto_cd
    if-ge v4, v3, :cond_dd

    aget v5, v0, v4

    .line 285
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, v2, :cond_da

    .line 286
    invoke-virtual {v1, v5, v6}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_da
    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    .line 290
    :cond_dd
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
