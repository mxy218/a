.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
    }
.end annotation


# static fields
.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .registers 2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v0, "nfc"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z
    .registers 2

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v0, "nfc"

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    return-void

    .line 58
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 60
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    const/4 p0, 0x3

    :goto_7
    return p0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 99
    const-class p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-object p0
.end method

.method public hasAsyncUpdate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    :cond_7
    return-void
.end method

.method public setChecked(Z)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 72
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_d

    .line 74
    :cond_8
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :goto_d
    const/4 p0, 0x1

    return p0
.end method
