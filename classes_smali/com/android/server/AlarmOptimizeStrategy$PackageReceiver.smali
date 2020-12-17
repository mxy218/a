.class Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmOptimizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmOptimizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmOptimizeStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmOptimizeStrategy;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/AlarmOptimizeStrategy;

    .line 313
    iput-object p1, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 318
    invoke-static {p1}, Lcom/android/server/AlarmOptimizeStrategy;->access$000(Lcom/android/server/AlarmOptimizeStrategy;)Lcom/android/server/AlarmManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v0}, Lcom/android/server/AlarmOptimizeStrategy;->access$000(Lcom/android/server/AlarmOptimizeStrategy;)Lcom/android/server/AlarmManagerService;

    move-result-object v0

    monitor-enter v0

    .line 324
    :try_start_7
    const-string v1, "AlarmOptimizeStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageReceiver  action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v3}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 328
    .local v3, "index":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3c

    .line 329
    monitor-exit v0

    return-void

    .line 331
    :cond_3c
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 332
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4}, Lcom/android/server/AlarmOptimizeStrategy;->access$200(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_53

    .line 333
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4, v2}, Lcom/android/server/AlarmOptimizeStrategy;->access$202(Lcom/android/server/AlarmOptimizeStrategy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_d9

    .line 334
    :cond_53
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4}, Lcom/android/server/AlarmOptimizeStrategy;->access$200(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    .line 335
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v5}, Lcom/android/server/AlarmOptimizeStrategy;->access$200(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v3, :cond_d9

    .line 336
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4, v2}, Lcom/android/server/AlarmOptimizeStrategy;->access$202(Lcom/android/server/AlarmOptimizeStrategy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d9

    .line 340
    :cond_77
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4}, Lcom/android/server/AlarmOptimizeStrategy;->access$200(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 341
    add-int/lit8 v3, v3, 0x1

    .line 342
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v4}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_98

    .line 343
    iget-object v4, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/AlarmOptimizeStrategy;->access$202(Lcom/android/server/AlarmOptimizeStrategy;Ljava/lang/String;)Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_7 .. :try_end_97} :catchall_db

    goto :goto_d9

    .line 346
    :cond_98
    move v4, v3

    .local v4, "i":I
    :goto_99
    :try_start_99
    iget-object v5, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v5}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d4

    .line 347
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v6}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 348
    iget-object v5, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    iget-object v6, p0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v6}, Lcom/android/server/AlarmOptimizeStrategy;->access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/AlarmOptimizeStrategy;->access$202(Lcom/android/server/AlarmOptimizeStrategy;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_d0} :catch_d5
    .catchall {:try_start_99 .. :try_end_d0} :catchall_db

    .line 349
    goto :goto_d4

    .line 346
    :cond_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 354
    .end local v4  # "i":I
    :cond_d4
    :goto_d4
    goto :goto_d9

    .line 352
    :catch_d5
    move-exception v4

    .line 353
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_d6
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 359
    .end local v1  # "action":Ljava/lang/String;
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "index":I
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_d9
    :goto_d9
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_db
    move-exception v1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_db

    throw v1
.end method
