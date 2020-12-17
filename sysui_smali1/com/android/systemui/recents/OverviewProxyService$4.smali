.class Lcom/android/systemui/recents/OverviewProxyService$4;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSetupChanged()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 444
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2400(Lcom/android/systemui/recents/OverviewProxyService;)V

    :cond_11
    return-void
.end method

.method public onUserSwitched()V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1102(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 451
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2400(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method
