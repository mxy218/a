.class Lcom/android/server/connectivity/tethering/EntitlementManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 496
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string p2, "Received provisioning alarm"

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object p1

    .line 498
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 500
    :cond_26
    return-void
.end method
