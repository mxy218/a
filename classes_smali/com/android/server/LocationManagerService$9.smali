.class Lcom/android/server/LocationManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/LocationManagerService;

    .line 571
    iput-object p1, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 575
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "changedPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 577
    :try_start_11
    iget-object v2, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 578
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 579
    .local v4, "pckName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 580
    move-object v0, v4

    .line 581
    goto :goto_34

    .line 583
    .end local v4  # "pckName":Ljava/lang/String;
    :cond_33
    goto :goto_1f

    .line 584
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    nop

    .end local v2  # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_40

    throw v2
.end method
