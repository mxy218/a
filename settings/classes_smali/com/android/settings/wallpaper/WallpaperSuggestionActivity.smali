.class public Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.super Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;
.source "WallpaperSuggestionActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;

    invoke-direct {v0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;->isWallpaperServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, "wallpaper"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    .line 53
    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p0

    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method


# virtual methods
.method protected addExtras(Landroid/content/Intent;)V
    .registers 3

    const-string p0, "com.android.launcher3.WALLPAPER_FLAVOR"

    const-string v0, "focus_wallpaper"

    .line 43
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
