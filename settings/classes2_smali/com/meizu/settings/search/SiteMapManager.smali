.class public Lcom/meizu/settings/search/SiteMapManager;
.super Ljava/lang/Object;
.source "SiteMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;
    }
.end annotation


# static fields
.field private static final CLASS_TO_SCREEN_TITLE_COLUMNS:[Ljava/lang/String;

.field public static final SITE_MAP_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mInitialized:Z

.field private final mPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "parent_class"

    const-string v1, "parent_title"

    const-string v2, "child_class"

    const-string v3, "child_title"

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SiteMapManager;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    const-string v0, "class_name"

    const-string v1, "screen_title"

    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SiteMapManager;->CLASS_TO_SCREEN_TITLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/SiteMapManager;->mPairs:Ljava/util/List;

    return-void
.end method

.method private lookUpParent(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;
    .registers 5

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/search/SiteMapManager;->mPairs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;

    .line 185
    iget-object v1, v0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->childClass:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->childTitle:Ljava/lang/String;

    .line 186
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SiteMapManager;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-boolean v0, p0, Lcom/meizu/settings/search/SiteMapManager;->mInitialized:Z

    if-nez v0, :cond_19

    const-string p2, "SiteMapManager"

    const-string p3, "SiteMap is not initialized yet, skipping"

    .line 82
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_32

    .line 83
    monitor-exit p0

    return-object p1

    .line 85
    :cond_19
    :try_start_19
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_1c
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/search/SiteMapManager;->lookUpParent(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;

    move-result-object p2
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_32

    if-nez p2, :cond_24

    .line 95
    monitor-exit p0

    return-object p1

    :cond_24
    const/4 p3, 0x0

    .line 97
    :try_start_25
    iget-object v0, p2, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->parentTitle:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    iget-object p3, p2, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->parentClass:Ljava/lang/String;

    .line 99
    iget-object p2, p2, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->parentTitle:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    move-object v1, p3

    move-object p3, p2

    move-object p2, v1

    goto :goto_1c

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized init(Landroid/content/Context;)V
    .registers 12

    monitor-enter p0

    .line 114
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/settings/search/SiteMapManager;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_106

    if-eqz v0, :cond_7

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "site_map"

    .line 122
    sget-object v3, Lcom/meizu/settings/search/SiteMapManager;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    :goto_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 125
    new-instance v2, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;

    const-string v3, "parent_class"

    .line 126
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent_title"

    .line 127
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "child_class"

    .line 128
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "child_title"

    .line 129
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/meizu/settings/search/SiteMapManager;->mPairs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 132
    :cond_5d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v2, "prefs_index"

    .line 137
    sget-object v3, Lcom/meizu/settings/search/SiteMapManager;->CLASS_TO_SCREEN_TITLE_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    :goto_73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "class_name"

    .line 141
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_title"

    .line 142
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 144
    :cond_91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a4
    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 152
    sget-object v2, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_bd

    goto :goto_a4

    .line 157
    :cond_bd
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_c6

    goto :goto_a4

    .line 162
    :cond_c6
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 163
    invoke-virtual {v4, p1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 165
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_f3

    .line 166
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_f3
    if-nez v6, :cond_f6

    goto :goto_ce

    .line 172
    :cond_f6
    iget-object v4, p0, Lcom/meizu/settings/search/SiteMapManager;->mPairs:Ljava/util/List;

    new-instance v7, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;

    invoke-direct {v7, v2, v3, v6, v5}, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    :cond_101
    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lcom/meizu/settings/search/SiteMapManager;->mInitialized:Z
    :try_end_104
    .catchall {:try_start_7 .. :try_end_104} :catchall_106

    .line 180
    monitor-exit p0

    return-void

    :catchall_106
    move-exception p1

    monitor-exit p0

    throw p1
.end method
