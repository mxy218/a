.class public Lcom/android/settings/support/SupportPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SupportPreferenceController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/support/SupportPreferenceController;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/settings/support/SupportPreferenceController;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-nez p0, :cond_6

    const/4 p0, 0x3

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    if-eqz p1, :cond_1e

    .line 52
    iget-object v0, p0, Lcom/android/settings/support/SupportPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1e

    .line 56
    :cond_15
    iget-object p1, p0, Lcom/android/settings/support/SupportPreferenceController;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/support/SupportPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, p0}, Lcom/android/settings/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/settings/support/SupportPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method
