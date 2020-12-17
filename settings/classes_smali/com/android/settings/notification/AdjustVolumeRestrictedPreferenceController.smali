.class public abstract Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "AdjustVolumeRestrictedPreferenceController.java"


# instance fields
.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 42
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 63
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 4

    .line 54
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_5

    return-void

    .line 57
    :cond_5
    iget-object p0, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_adjust_volume"

    .line 57
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    return-void
.end method
