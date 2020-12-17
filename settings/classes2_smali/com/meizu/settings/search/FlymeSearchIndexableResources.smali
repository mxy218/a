.class public Lcom/meizu/settings/search/FlymeSearchIndexableResources;
.super Ljava/lang/Object;
.source "FlymeSearchIndexableResources.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 259
    new-instance v0, Lcom/meizu/settings/search/FlymeSearchIndexableResources$1;

    invoke-direct {v0}, Lcom/meizu/settings/search/FlymeSearchIndexableResources$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/FlymeSearchIndexableResources;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNotGuestResMap(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;)V"
        }
    .end annotation

    .line 189
    const-class v0, Lcom/meizu/settings/MobileNetworkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/MobileNetworkSettings;

    .line 193
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x7f0802e9

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 189
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-class v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 202
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0802d9

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 198
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-class v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    .line 208
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-class v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    .line 216
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f080474

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 212
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-class v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    .line 224
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08047d

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 220
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 232
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f080469

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 228
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-class v0, Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/display/BluelightReductionFragment;

    .line 238
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 235
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-class v0, Lcom/meizu/settings/TetherSettingsIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/TetherSettingsIndex;

    .line 246
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f1600fa

    const v6, 0x7f0802df

    invoke-direct {v1, v3, v5, v2, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 242
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-class v0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;

    .line 254
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 250
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSearchIndex(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/provider/SearchIndexableResource;

    const-string v1, "com.android.settings.bluetooth.BluetoothSettings"

    const/4 v2, 0x0

    const v3, 0x7f160033

    const v4, 0x7f0802b6

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v0, Lcom/meizu/settings/location/MzLocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/location/MzLocationSettings;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f160088

    const v5, 0x7f0802c9

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 63
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings/wifi/WifiSettings;

    .line 76
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802df

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 72
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-class v0, Lcom/meizu/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/wifi/AdvancedWifiSettings;

    .line 84
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class v0, Lcom/meizu/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/WirelessSettings;

    .line 92
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class v0, Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/display/MzDisplaySettings;

    .line 100
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802c0

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 96
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802ab

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 104
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/deviceinfo/FlymeMemory;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 111
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/deviceinfo/FlymeInfo;

    .line 122
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 118
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;

    .line 129
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 125
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-class v0, Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/security/FlymeSecuritySettings;

    .line 136
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802d5

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 132
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-class v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    .line 143
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802ad

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 139
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-class v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;

    .line 151
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 147
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-class v0, Lcom/meizu/settings/search/FlymeSearchIndexableResources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/search/FlymeSearchIndexableResources;

    .line 159
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 155
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-class v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;

    .line 167
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802b1

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-class v0, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 170
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 181
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 177
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
