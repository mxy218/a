.class public Lcom/meizu/settings/MobileNetworkSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MobileNetworkSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/meizu/settings/MobileNetworkSettings$1;

    invoke-direct {v0}, Lcom/meizu/settings/MobileNetworkSettings$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method
