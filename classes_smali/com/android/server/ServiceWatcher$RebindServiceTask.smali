.class Lcom/android/server/ServiceWatcher$RebindServiceTask;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebindServiceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/ServiceWatcher;
    .param p2, "x1"  # Lcom/android/server/ServiceWatcher$1;

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher$RebindServiceTask;-><init>(Lcom/android/server/ServiceWatcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_42

    .line 563
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$600(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_provider_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$700(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebind service pckName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-eqz v0, :cond_41

    .line 567
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->onUnbind()V

    .line 568
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 570
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_41
    goto :goto_63

    .line 571
    :cond_42
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$700(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service is bound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$RebindServiceTask;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_63
    return-void
.end method
