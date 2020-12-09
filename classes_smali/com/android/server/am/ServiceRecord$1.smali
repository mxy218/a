.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;

.field final synthetic val$record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;IIILcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 802
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iput-object p7, p0, Lcom/android/server/am/ServiceRecord$1;->val$record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 804
    const-string v0, "ActivityManager"

    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/notification/NotificationManagerInternal;

    .line 806
    if-nez v2, :cond_e

    .line 807
    return-void

    .line 809
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    .line 811
    :try_start_10
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_f7

    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to start a foreground service ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") with a broken notification (no icon: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 823
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 822
    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 824
    if-nez v3, :cond_56

    .line 825
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_56} :catch_17c

    .line 827
    :cond_56
    nop

    .line 829
    :try_start_57
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 832
    new-instance v6, Landroid/app/Notification$Builder;

    .line 833
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 839
    const/16 v5, 0x40

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 841
    new-instance v10, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    const-string/jumbo v5, "package"

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 845
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v11, 0x8000000

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 847
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 845
    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 848
    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x106001c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 851
    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x104009c

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v4

    .line 852
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 851
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 856
    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x104009b

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    .line 857
    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 856
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 861
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 863
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1
    :try_end_f5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_f5} :catch_f6
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_f5} :catch_17c

    .line 865
    goto :goto_f7

    .line 864
    :catch_f6
    move-exception v3

    .line 867
    :cond_f7
    :goto_f7
    :try_start_f7
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    .line 868
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 867
    invoke-interface {v2, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3
    :try_end_103
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_103} :catch_17c

    if-nez v3, :cond_143

    .line 869
    nop

    .line 871
    const/16 v3, 0x1b

    :try_start_108
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 872
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v7, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 874
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_122
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_108 .. :try_end_122} :catch_123
    .catch Ljava/lang/RuntimeException; {:try_start_108 .. :try_end_122} :catch_17c

    .line 876
    goto :goto_125

    .line 875
    :catch_123
    move-exception v4

    move v4, v3

    .line 877
    :goto_125
    if-ge v4, v3, :cond_128

    goto :goto_143

    .line 878
    :cond_128
    :try_start_128
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid channel for service notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 883
    :cond_143
    :goto_143
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_161

    .line 891
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v6, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v9, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v9, v1

    invoke-interface/range {v2 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 895
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v1, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 902
    goto :goto_193

    .line 888
    :cond_161
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid service notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17c
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_17c} :catch_17c

    .line 896
    :catch_17c
    move-exception v1

    .line 897
    const-string v2, "Error showing notification for service"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$record:Lcom/android/server/am/ServiceRecord;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActiveServices;->killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V

    .line 903
    :goto_193
    return-void
.end method
