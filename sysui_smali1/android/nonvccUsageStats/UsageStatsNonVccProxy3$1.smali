.class Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;
.super Ljava/lang/Object;
.source "UsageStatsNonVccProxy3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 95
    iput-object p1, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    iput-object p2, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$pageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 98
    iget-object v0, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    invoke-static {v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->access$000(Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;)Landroid/nonvccUsageStats/INonVccStatsInterfaces;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 101
    :try_start_8
    iget-object v1, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$pageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$1;->val$properties:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p0}, Landroid/nonvccUsageStats/INonVccStatsInterfaces;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_3b

    :catch_12
    move-exception p0

    .line 103
    invoke-static {}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-void
.end method
