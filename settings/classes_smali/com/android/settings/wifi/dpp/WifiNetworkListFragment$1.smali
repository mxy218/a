.class Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;
.super Ljava/lang/Object;
.source "WifiNetworkListFragment.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_13

    const p1, 0x7f1218db

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_13
    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
