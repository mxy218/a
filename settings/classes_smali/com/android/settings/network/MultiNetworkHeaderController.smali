.class public Lcom/android/settings/network/MultiNetworkHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MultiNetworkHeaderController.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;
.implements Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiNetworkHdrCtrl"


# instance fields
.field private mOriginalExpandedChildrenCount:I

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field private mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 63
    new-instance v6, Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    const/16 v5, 0xa

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;Ljava/lang/String;I)V

    return-object v6
.end method

.method createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/WifiConnectionPreferenceController;
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    new-instance v7, Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x2ea

    move-object v0, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;Ljava/lang/String;II)V

    return-object v7
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    iput-object p1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    iget-object p0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x2

    return p0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 3

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    return-void
.end method

.method public onChildrenUpdated()V
    .registers 5

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    .line 93
    iget v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1f

    if-eqz v0, :cond_1a

    .line 95
    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 96
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 95
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    goto :goto_1f

    .line 98
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 101
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
