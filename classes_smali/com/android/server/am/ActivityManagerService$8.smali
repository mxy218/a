.class Lcom/android/server/am/ActivityManagerService$8;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$isInstantApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$pid:I

.field final synthetic val$resolvedUserId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZIILandroid/content/pm/IPackageDataObserver;)V
    .registers 8

    .line 4070
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$8;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$8;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$8;->val$isInstantApp:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$8;->val$uid:I

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4074
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_22

    .line 4075
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4076
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$8;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v1, v4}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 4077
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_22

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4079
    :cond_22
    :goto_22
    new-instance v8, Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4080
    const-string/jumbo v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v8, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4081
    const/high16 v2, 0x1000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4082
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3d

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_3e

    :cond_3d
    const/4 v2, -0x1

    :goto_3e
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v8, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4083
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$resolvedUserId:I

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v8, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4084
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$isInstantApp:Z

    if-eqz v2, :cond_73

    .line 4085
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4086
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x3e8

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$8;->val$uid:I

    iget v7, v0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$resolvedUserId:I

    move/from16 v18, v2

    const/16 v19, 0x0

    const-string v4, "android"

    const-string v14, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    goto :goto_91

    .line 4090
    :cond_73
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x3e8

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$8;->val$uid:I

    iget v7, v0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$resolvedUserId:I

    move/from16 v18, v2

    const/16 v19, 0x0

    const-string v4, "android"

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    .line 4095
    :goto_91
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_9a

    .line 4096
    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 4098
    :cond_9a
    return-void
.end method
