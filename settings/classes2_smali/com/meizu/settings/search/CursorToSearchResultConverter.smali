.class public Lcom/meizu/settings/search/CursorToSearchResultConverter;
.super Ljava/lang/Object;
.source "CursorToSearchResultConverter.java"


# static fields
.field private static final prioritySettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whiteList:[Ljava/lang/String;


# instance fields
.field private final LONG_TITLE_LENGTH:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "main_toggle_wifi"

    const-string v1, "main_toggle_bluetooth"

    const-string v2, "main_toggle_bluetooth_obsolete"

    const-string v3, "toggle_airplane"

    const-string v4, "tether_settings"

    const-string v5, "battery_saver"

    const-string v6, "toggle_nfc"

    const-string v7, "restrict_background"

    const-string v8, "data_usage_enable"

    const-string v9, "button_roaming_key"

    .line 69
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->whiteList:[Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/meizu/settings/search/CursorToSearchResultConverter;->whiteList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->prioritySettings:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 67
    iput v0, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->LONG_TITLE_LENGTH:I

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildSingleSearchResultFromCursor(Lcom/meizu/settings/search/SiteMapManager;Ljava/util/Map;Landroid/database/Cursor;I)Lcom/meizu/settings/search/SearchResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SiteMapManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;",
            "Landroid/database/Cursor;",
            "I)",
            "Lcom/meizu/settings/search/SearchResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    .line 129
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 131
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 132
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    .line 133
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 134
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    .line 135
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xc

    .line 136
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 137
    invoke-static {v8, v7}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->getUnmarshalledPayload([BI)Lcom/meizu/settings/search/ResultPayload;

    move-result-object v7

    .line 139
    invoke-direct {p0, p1, p3}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->getBreadcrumbs(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-direct {p0, v2, p4, v5}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->getRank(Ljava/lang/String;ILjava/lang/String;)I

    move-result p4

    .line 142
    new-instance v5, Lcom/meizu/settings/search/SearchResult$Builder;

    invoke-direct {v5}, Lcom/meizu/settings/search/SearchResult$Builder;-><init>()V

    .line 143
    invoke-virtual {v5, v0}, Lcom/meizu/settings/search/SearchResult$Builder;->setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 144
    invoke-virtual {v5, v2}, Lcom/meizu/settings/search/SearchResult$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 145
    invoke-virtual {v5, v3}, Lcom/meizu/settings/search/SearchResult$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 146
    invoke-virtual {v5, p1}, Lcom/meizu/settings/search/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 147
    invoke-virtual {v5, p4}, Lcom/meizu/settings/search/SearchResult$Builder;->setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 148
    invoke-direct {p0, p2, v1, v4, v6}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->getIconForPackage(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/meizu/settings/search/SearchResult$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/meizu/settings/search/SearchResult$Builder;

    const/16 p0, 0xd

    .line 150
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/meizu/settings/search/SearchResult$Builder;->addRowId(Ljava/lang/String;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 152
    invoke-virtual {v5, v7}, Lcom/meizu/settings/search/SearchResult$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 153
    invoke-virtual {v5}, Lcom/meizu/settings/search/SearchResult$Builder;->build()Lcom/meizu/settings/search/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method private getBreadcrumbs(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SiteMapManager;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 189
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 190
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 192
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 194
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_1c
    if-nez p1, :cond_20

    const/4 p0, 0x0

    goto :goto_26

    .line 197
    :cond_20
    iget-object p0, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, v0}, Lcom/meizu/settings/search/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_26
    return-object p0
.end method

.method private getIconForPackage(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 158
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move p4, v1

    goto :goto_d

    .line 159
    :cond_9
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    :goto_d
    const/4 v0, 0x0

    if-nez p4, :cond_11

    goto :goto_4c

    .line 165
    :cond_11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_46

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_46

    .line 166
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    if-nez p3, :cond_48

    .line 169
    :try_start_25
    iget-object p0, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p3
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2b} :catch_2f

    .line 174
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 171
    :catch_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot create Context for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CursorConverter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 177
    :cond_46
    iget-object p3, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    .line 180
    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {p3, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-object v0
.end method

.method private getRank(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    .line 217
    sget-object p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->prioritySettings:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p3, 0x1

    if-eqz p0, :cond_11

    sget-object p0, Lcom/meizu/settings/search/DatabaseResultLoader;->BASE_RANKS:[I

    aget p0, p0, p3

    if-ge p2, p0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x14

    if-le p0, p1, :cond_1a

    add-int/2addr p2, p3

    :cond_1a
    return p2
.end method

.method public static getUnmarshalledPayload([BI)Lcom/meizu/settings/search/ResultPayload;
    .registers 3

    if-eqz p1, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    goto :goto_3b

    .line 117
    :cond_9
    :try_start_9
    sget-object p1, Lcom/meizu/settings/search/InlineListPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/meizu/settings/search/ResultPayloadUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/ResultPayload;

    return-object p0

    .line 114
    :cond_12
    sget-object p1, Lcom/meizu/settings/search/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/meizu/settings/search/ResultPayloadUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/ResultPayload;

    return-object p0

    .line 111
    :cond_1b
    sget-object p1, Lcom/meizu/settings/search/ResultPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/meizu/settings/search/ResultPayloadUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/ResultPayload;
    :try_end_23
    .catch Landroid/os/BadParcelableException; {:try_start_9 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error creating parcelable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CursorConverter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public convertCursor(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SiteMapManager;",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 96
    :cond_e
    :goto_e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 97
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->buildSingleSearchResultFromCursor(Lcom/meizu/settings/search/SiteMapManager;Ljava/util/Map;Landroid/database/Cursor;I)Lcom/meizu/settings/search/SearchResult;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 100
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method public getSearchResultList(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SiteMapManager;",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/meizu/settings/search/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/meizu/settings/search/IndexDatabaseHelper;->isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    .line 241
    :cond_1f
    :goto_1f
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 242
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->buildSingleSearchResultFromCursor(Lcom/meizu/settings/search/SiteMapManager;Ljava/util/Map;Landroid/database/Cursor;I)Lcom/meizu/settings/search/SearchResult;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 245
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_2f
    return-object v1
.end method
