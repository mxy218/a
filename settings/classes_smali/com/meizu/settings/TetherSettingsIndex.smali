.class public Lcom/meizu/settings/TetherSettingsIndex;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "TetherSettingsIndex.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/meizu/settings/TetherSettingsIndex$1;

    invoke-direct {v0}, Lcom/meizu/settings/TetherSettingsIndex$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/TetherSettingsIndex;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method
