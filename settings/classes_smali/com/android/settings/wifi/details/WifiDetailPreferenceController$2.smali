.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 224
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 238
    :cond_a
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const/16 p1, 0x10

    .line 248
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_30

    const/16 p1, 0x11

    .line 249
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_30

    const/16 p1, 0x18

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 251
    :cond_30
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 252
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 254
    :cond_50
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 255
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 256
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_5f
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 228
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 229
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_22
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1100(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 264
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_19
    return-void
.end method
