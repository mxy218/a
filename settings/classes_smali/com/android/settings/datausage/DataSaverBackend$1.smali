.class Lcom/android/settings/datausage/DataSaverBackend$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRestrictBackgroundChanged$1$DataSaverBackend$1(Z)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V

    return-void
.end method

.method public synthetic lambda$onUidPoliciesChanged$0$DataSaverBackend$1(II)V
    .registers 3

    .line 189
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V

    return-void
.end method

.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSubscriptionOverride(III)V
    .registers 4

    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .registers 4

    .line 189
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
