.class public Lcom/meizu/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/meizu/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0}, Lcom/meizu/settings/wifi/AdvancedWifiSettings$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/wifi/AdvancedWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x67

    return p0
.end method
