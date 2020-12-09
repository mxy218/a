.class final Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V
    .registers 3

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$400(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    .line 280
    monitor-exit v0

    return-void

    .line 282
    :cond_11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-eqz p2, :cond_19

    .line 283
    monitor-exit v0

    return-void

    .line 285
    :cond_19
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 286
    add-int/lit8 p2, p2, -0x1

    :goto_25
    if-ltz p2, :cond_5c

    .line 287
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 288
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    .line 289
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->access$600(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 290
    goto :goto_59

    .line 292
    :cond_3e
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 293
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 294
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    :cond_59
    :goto_59
    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    .line 297
    :cond_5c
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 298
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 299
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 301
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$702(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 303
    :cond_90
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_92
    move-exception p1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_7 .. :try_end_94} :catchall_92

    throw p1
.end method
