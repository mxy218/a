.class Lcom/android/settings/network/PrivateDnsPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    .line 171
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$102(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 172
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 173
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_16
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 178
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$102(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 179
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 180
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_17
    return-void
.end method
