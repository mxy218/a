.class Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field private static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PIN:Ljava/lang/String; = "pin"

.field static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field private final mOwnerUserId:I

.field private final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .registers 11

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6

    .line 70
    nop

    .line 71
    if-eqz p5, :cond_4

    goto :goto_8

    :cond_4
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p5

    .line 70
    :goto_8
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 65
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 72
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 73
    return-void
.end method

.method public static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 262
    const-string/jumbo v0, "package-name"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-eqz p3, :cond_b

    move v2, p2

    goto :goto_11

    .line 268
    :cond_b
    const-string v2, "launcher-user"

    invoke-static {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 270
    :goto_11
    new-instance v3, Lcom/android/server/pm/ShortcutLauncher;

    invoke-direct {v3, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 273
    const/4 p1, 0x0

    .line 274
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 276
    :goto_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c8

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2b

    .line 277
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_c8

    .line 278
    :cond_2b
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2f

    .line 279
    goto :goto_1b

    .line 281
    :cond_2f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 282
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 283
    add-int/lit8 v6, v1, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v2, v6, :cond_8f

    .line 284
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v9, -0x72a5f22b

    if-eq v6, v9, :cond_57

    const v9, -0x301acbba

    if-eq v6, v9, :cond_4c

    :cond_4b
    goto :goto_62

    :cond_4c
    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move v6, v4

    goto :goto_63

    :cond_57
    const-string/jumbo v6, "package-info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move v6, v7

    goto :goto_63

    :goto_62
    move v6, v8

    :goto_63
    if-eqz v6, :cond_87

    if-eq v6, v4, :cond_68

    goto :goto_8f

    .line 289
    :cond_68
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    if-eqz p3, :cond_70

    move v2, p2

    goto :goto_77

    .line 292
    :cond_70
    const-string/jumbo v2, "package-user"

    invoke-static {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 294
    :goto_77
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 295
    iget-object v5, v3, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 296
    invoke-static {v2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    .line 295
    invoke-virtual {v5, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object p1, v4

    goto :goto_1b

    .line 286
    :cond_87
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 287
    goto :goto_1b

    .line 301
    :cond_8f
    :goto_8f
    add-int/lit8 v4, v1, 0x2

    if-ne v2, v4, :cond_c3

    .line 302
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, 0x1b195

    if-eq v4, v6, :cond_9d

    :cond_9c
    goto :goto_a7

    :cond_9d
    const-string/jumbo v4, "pin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    goto :goto_a8

    :goto_a7
    move v7, v8

    :goto_a8
    if-eqz v7, :cond_ab

    goto :goto_c3

    .line 304
    :cond_ab
    if-nez p1, :cond_b7

    .line 305
    const-string v2, "ShortcutService"

    const-string/jumbo v4, "pin in invalid place"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 307
    :cond_b7
    const-string/jumbo v2, "value"

    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    goto/16 :goto_1b

    .line 313
    :cond_c3
    :goto_c3
    invoke-static {v2, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 314
    goto/16 :goto_1b

    .line 315
    :cond_c8
    return-object v3
.end method

.method private onRestoreBlocked()V
    .registers 5

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 97
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2e

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 101
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_2b

    .line 103
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 99
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 106
    :cond_2e
    return-void
.end method


# virtual methods
.method public addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 190
    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 194
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    :goto_1a
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0, p2, p1, v2, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 199
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 11

    .line 319
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string p3, "Launcher: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string p3, "  Package user: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 326
    const-string p3, "  Owner user: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 328
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    iget-object p3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    .line 334
    const/4 v0, 0x0

    move v2, v0

    :goto_50
    if-ge v2, p3, :cond_a0

    .line 335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 337
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    const-string v4, "Package: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v4, "  User: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget v3, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 346
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 347
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 349
    move v5, v0

    :goto_84
    if-ge v5, v4, :cond_9d

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    const-string v6, "    Pinned: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 334
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 356
    :cond_a0
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 360
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 364
    return-object p1
.end method

.method public ensurePackageInfo()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 207
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 208
    if-nez v0, :cond_2d

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 213
    return-void
.end method

.method getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getOwnerUserId()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return v0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    return-object p1
.end method

.method public hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    .registers 4

    .line 178
    nop

    .line 179
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method protected onRestored(I)V
    .registers 2

    .line 114
    if-eqz p1, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutLauncher;->onRestoreBlocked()V

    .line 117
    :cond_5
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 126
    if-nez v0, :cond_9

    .line 127
    return-void

    .line 130
    :cond_9
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    .line 132
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    .line 133
    if-nez p2, :cond_19

    .line 134
    iget-object p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 136
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 145
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 147
    const/4 v3, 0x0

    :goto_27
    if-ge v3, p2, :cond_52

    .line 148
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 150
    if-nez v5, :cond_36

    .line 151
    goto :goto_4f

    .line 153
    :cond_36
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 154
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-nez v5, :cond_4c

    if-eqz v1, :cond_4a

    .line 155
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    :cond_4a
    if-eqz p4, :cond_4f

    .line 157
    :cond_4c
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 160
    :cond_52
    iget-object p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_57
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 163
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 223
    return-void

    .line 225
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 226
    if-nez v0, :cond_16

    .line 227
    return-void

    .line 230
    :cond_16
    const-string v1, "launcher-pins"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package-name"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v3

    int-to-long v5, v3

    const-string v3, "launcher-user"

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 235
    const/4 v3, 0x0

    move v5, v3

    :goto_3d
    if-ge v5, v0, :cond_8a

    .line 236
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 238
    if-eqz p2, :cond_52

    iget v7, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v8

    if-eq v7, v8, :cond_52

    .line 239
    goto :goto_87

    .line 242
    :cond_52
    const-string/jumbo v7, "package"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    iget-object v8, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 244
    iget v6, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    int-to-long v8, v6

    const-string/jumbo v6, "package-user"

    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 246
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 247
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 248
    move v9, v3

    :goto_73
    if-ge v9, v8, :cond_84

    .line 249
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "pin"

    invoke-static {p1, v11, v10}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 251
    :cond_84
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 254
    :cond_8a
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    return-void
.end method
