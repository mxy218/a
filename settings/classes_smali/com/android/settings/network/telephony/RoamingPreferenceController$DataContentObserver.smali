.class public Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "RoamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RoamingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;Landroid/os/Handler;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    .line 159
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->access$000(Lcom/android/settings/network/telephony/RoamingPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .registers 7

    const-string v0, "data_roaming"

    .line 169
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .registers 2

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
