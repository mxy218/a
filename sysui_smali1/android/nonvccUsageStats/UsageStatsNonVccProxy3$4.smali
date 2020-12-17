.class Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;
.super Ljava/lang/Object;
.source "UsageStatsNonVccProxy3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onAppEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

.field final synthetic val$customPackageName:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6

    .line 180
    iput-object p1, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    iput-object p2, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$pageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$properties:Ljava/util/Map;

    iput-object p5, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$customPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 183
    iget-object v0, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->this$0:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    invoke-static {v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->access$000(Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;)Landroid/nonvccUsageStats/INonVccStatsInterfaces;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 186
    :try_start_8
    iget-object v1, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$pageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$properties:Ljava/util/Map;

    iget-object p0, p0, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3$4;->val$customPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Landroid/nonvccUsageStats/INonVccStatsInterfaces;->onAppEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_3d

    :catch_14
    move-exception p0

    .line 188
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

    :cond_3d
    :goto_3d
    return-void
.end method
