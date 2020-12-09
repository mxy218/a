.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/telephony/PhoneStateListener;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBSERVED active data subscription change, from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$000(Lcom/android/server/connectivity/Tethering;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$000(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    if-ne p1, v0, :cond_31

    return-void

    .line 266
    :cond_31
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->access$002(Lcom/android/server/connectivity/Tethering;I)I

    .line 267
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    .line 271
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 272
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_68

    .line 274
    :cond_5d
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string v0, "IGNORED reevaluate provisioning due to no carrier config loaded"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 276
    :goto_68
    return-void
.end method
