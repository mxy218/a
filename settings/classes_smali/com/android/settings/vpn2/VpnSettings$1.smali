.class Lcom/android/settings/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .registers 3

    .line 412
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_11

    .line 413
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 414
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_26

    .line 416
    :cond_11
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_26

    .line 417
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 418
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnSettings;->access$000(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/android/settings/vpn2/AppManagementFragment;->show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V

    :cond_26
    :goto_26
    return-void
.end method
