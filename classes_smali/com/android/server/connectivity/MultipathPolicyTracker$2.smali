.class Lcom/android/server/connectivity/MultipathPolicyTracker$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;->registerNetworkPolicyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onMeteredIfacesChanged$0$MultipathPolicyTracker$2()V
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method

.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 3

    .line 505
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method
