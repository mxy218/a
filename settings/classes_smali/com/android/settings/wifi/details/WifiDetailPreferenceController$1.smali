.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16fd136b

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2f

    const v1, -0x147b62d9

    if-eq v0, v1, :cond_25

    const v1, 0x60e99352

    if-eq v0, v1, :cond_1b

    goto :goto_39

    :cond_1b
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    move p1, v2

    goto :goto_3a

    :cond_25
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    move p1, v4

    goto :goto_3a

    :cond_2f
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    move p1, v3

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p1, -0x1

    :goto_3a
    if-eqz p1, :cond_41

    if-eq p1, v4, :cond_63

    if-eq p1, v3, :cond_63

    goto :goto_68

    :cond_41
    const-string p1, "multipleChanges"

    .line 202
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_63

    const-string/jumbo p1, "wifiConfiguration"

    .line 206
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 207
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 208
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 214
    :cond_63
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :goto_68
    return-void
.end method
