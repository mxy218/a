.class Lcom/android/server/usage/AppStandbyController$2;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2

    .line 1816
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 1819
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    .line 1825
    if-nez p1, :cond_25

    .line 1826
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result p1

    .line 1827
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1828
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 1829
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw p1

    .line 1831
    :cond_25
    :goto_25
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 1822
    return-void
.end method
