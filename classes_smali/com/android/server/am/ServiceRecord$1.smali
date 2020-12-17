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
    .param p1, "this$0"  # Lcom/android/server/am/ServiceRecord;

    .line 813
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
    .registers 20

    .line 815
    move-object/from16 v1, p0

    const-string v2, "ActivityManager"

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/notification/NotificationManagerInternal;

    .line 817
    .local v12, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v12, :cond_10

    .line 818
    return-void

    .line 820
    :cond_10
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    .line 822
    .local v3, "localForegroundNoti":Landroid/app/Notification;
    :try_start_12
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    if-nez v0, :cond_10a

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to start a foreground service ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") with a broken notification (no icon: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 834
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 833
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 835
    .local v0, "appName":Ljava/lang/CharSequence;
    if-nez v0, :cond_5c

    .line 836
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_5a} :catch_1c5

    move-object v0, v6

    goto :goto_5d

    .line 835
    :cond_5c
    move-object v6, v0

    .line 838
    .end local v0  # "appName":Ljava/lang/CharSequence;
    .local v6, "appName":Ljava/lang/CharSequence;
    :goto_5d
    const/4 v7, 0x0

    .line 840
    .local v7, "ctx":Landroid/content/Context;
    :try_start_5e
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroid/os/UserHandle;

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v5, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    move-object v7, v0

    .line 843
    new-instance v0, Landroid/app/Notification$Builder;

    .line 844
    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 847
    .local v0, "notiBuilder":Landroid/app/Notification$Builder;
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 850
    const/16 v8, 0x40

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 852
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v8, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v10, "package"

    iget-object v11, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v11, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 856
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x8000000

    const/16 v17, 0x0

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 858
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v18

    .line 856
    move-object v15, v8

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 859
    .local v10, "pi":Landroid/app/PendingIntent;
    iget-object v11, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 862
    iget-object v11, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1040099

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v6, v14, v5

    .line 863
    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 862
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 867
    iget-object v11, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1040098

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v5

    .line 868
    invoke-virtual {v11, v13, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 867
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 872
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 874
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    move-object v3, v9

    .line 877
    iget v9, v3, Landroid/app/Notification;->flags:I

    or-int/2addr v9, v4

    iput v9, v3, Landroid/app/Notification;->flags:I
    :try_end_105
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_105} :catch_107
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_105} :catch_1c5

    .line 880
    .end local v0  # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v8  # "runningIntent":Landroid/content/Intent;
    .end local v10  # "pi":Landroid/app/PendingIntent;
    move-object v13, v3

    goto :goto_10b

    .line 879
    :catch_107
    move-exception v0

    move-object v13, v3

    goto :goto_10b

    .line 822
    .end local v6  # "appName":Ljava/lang/CharSequence;
    .end local v7  # "ctx":Landroid/content/Context;
    :cond_10a
    move-object v13, v3

    .line 882
    .end local v3  # "localForegroundNoti":Landroid/app/Notification;
    .local v13, "localForegroundNoti":Landroid/app/Notification;
    :goto_10b
    :try_start_10b
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    .line 883
    invoke-virtual {v13}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 882
    invoke-interface {v12, v0, v3, v6}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_117
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_117} :catch_1c3

    if-nez v0, :cond_159

    .line 884
    const/16 v3, 0x1b

    .line 886
    .local v3, "targetSdkVersion":I
    :try_start_11b
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 887
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v7, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 889
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_135
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11b .. :try_end_135} :catch_137
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_135} :catch_1c3

    move v3, v5

    .line 891
    .end local v0  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_138

    .line 890
    :catch_137
    move-exception v0

    .line 892
    :goto_138
    const/16 v0, 0x1b

    if-ge v3, v0, :cond_13d

    goto :goto_159

    .line 893
    :cond_13d
    :try_start_13d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid channel for service notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v12  # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .end local v13  # "localForegroundNoti":Landroid/app/Notification;
    .end local p0  # "this":Lcom/android/server/am/ServiceRecord$1;
    throw v0

    .line 898
    .end local v3  # "targetSdkVersion":I
    .restart local v12  # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .restart local v13  # "localForegroundNoti":Landroid/app/Notification;
    .restart local p0  # "this":Lcom/android/server/am/ServiceRecord$1;
    :cond_159
    :goto_159
    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1a7

    .line 908
    iget-object v0, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_18e

    iget-object v0, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    const v3, 0x109009e

    if-ne v0, v3, :cond_18e

    .line 909
    iget-object v0, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 910
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v3, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.text"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 911
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v5, :cond_18d

    if-nez v0, :cond_18d

    if-nez v3, :cond_18d

    .line 912
    iget v5, v13, Landroid/app/Notification;->flags:I

    or-int/2addr v4, v5

    iput v4, v13, Landroid/app/Notification;->flags:I

    .line 914
    :cond_18d
    return-void

    .line 918
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v3  # "text":Ljava/lang/CharSequence;
    :cond_18e
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v7, v1, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v3, v12

    move-object v10, v13

    invoke-interface/range {v3 .. v11}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 922
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v13, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 929
    goto :goto_1dd

    .line 903
    :cond_1a7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v12  # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .end local v13  # "localForegroundNoti":Landroid/app/Notification;
    .end local p0  # "this":Lcom/android/server/am/ServiceRecord$1;
    throw v0
    :try_end_1c3
    .catch Ljava/lang/RuntimeException; {:try_start_13d .. :try_end_1c3} :catch_1c3

    .line 923
    .restart local v12  # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .restart local v13  # "localForegroundNoti":Landroid/app/Notification;
    .restart local p0  # "this":Lcom/android/server/am/ServiceRecord$1;
    :catch_1c3
    move-exception v0

    goto :goto_1c7

    .end local v13  # "localForegroundNoti":Landroid/app/Notification;
    .local v3, "localForegroundNoti":Landroid/app/Notification;
    :catch_1c5
    move-exception v0

    move-object v13, v3

    .line 924
    .end local v3  # "localForegroundNoti":Landroid/app/Notification;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v13  # "localForegroundNoti":Landroid/app/Notification;
    :goto_1c7
    const-string v3, "Error showing notification for service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$1;->val$record:Lcom/android/server/am/ServiceRecord;

    iget v4, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v5, v1, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V

    .line 930
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_1dd
    return-void
.end method
