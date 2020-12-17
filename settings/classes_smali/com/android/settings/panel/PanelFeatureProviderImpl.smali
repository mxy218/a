.class public Lcom/android/settings/panel/PanelFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PanelFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/panel/PanelFeatureProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/panel/PanelContent;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 p0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_7c

    goto :goto_42

    :sswitch_11
    const-string v0, "android.settings.panel.action.WIFI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move p0, v2

    goto :goto_42

    :sswitch_1b
    const-string v0, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move p0, v4

    goto :goto_42

    :sswitch_25
    const-string v0, "android.settings.panel.action.VOLUME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move p0, v1

    goto :goto_42

    :sswitch_2f
    const-string v0, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 p0, 0x0

    goto :goto_42

    :sswitch_39
    const-string v0, "android.settings.panel.action.NFC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move p0, v3

    :cond_42
    :goto_42
    if-eqz p0, :cond_77

    if-eq p0, v4, :cond_72

    if-eq p0, v3, :cond_6d

    if-eq p0, v2, :cond_68

    if-ne p0, v1, :cond_51

    .line 42
    invoke-static {p1}, Lcom/android/settings/panel/VolumePanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;

    move-result-object p0

    return-object p0

    .line 45
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No matching panel for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_68
    invoke-static {p1}, Lcom/android/settings/panel/WifiPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/WifiPanel;

    move-result-object p0

    return-object p0

    .line 38
    :cond_6d
    invoke-static {p1}, Lcom/android/settings/panel/NfcPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/NfcPanel;

    move-result-object p0

    return-object p0

    .line 36
    :cond_72
    invoke-static {p1, p3}, Lcom/android/settings/panel/MediaOutputPanel;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;

    move-result-object p0

    return-object p0

    .line 34
    :cond_77
    invoke-static {p1}, Lcom/android/settings/panel/InternetConnectivityPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;

    move-result-object p0

    return-object p0

    :sswitch_data_7c
    .sparse-switch
        0x3f46fa9 -> :sswitch_39
        0x1babcc93 -> :sswitch_2f
        0x4878fc3c -> :sswitch_25
        0x6ce62c0b -> :sswitch_1b
        0x7a9da8b7 -> :sswitch_11
    .end sparse-switch
.end method
