.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_DISABLED_REASON:Ljava/lang/String; = "disabled-reason"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_LOCUS_ID:Ljava/lang/String; = "locus-id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_IS_BOT:Ljava/lang/String; = "is-bot"

.field private static final ATTR_PERSON_IS_IMPORTANT:Ljava/lang/String; = "is-important"

.field private static final ATTR_PERSON_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PERSON_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field private static final TAG_PERSON:Ljava/lang/String; = "person"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field private final mShareTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 5
    .param p1, "shortcutUser"  # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 156
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 7
    .param p1, "shortcutUser"  # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "spi"  # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 148
    nop

    .line 149
    if-eqz p4, :cond_5

    move-object v0, p4

    goto :goto_9

    :cond_5
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    .line 148
    :goto_9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1098
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1265
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 151
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 152
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .registers 8

    .line 780
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 781
    return v1

    .line 783
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 787
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 789
    .local v2, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_44

    .line 790
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 791
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 793
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 794
    goto :goto_41

    .line 796
    :cond_30
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    if-eqz v5, :cond_41

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_41

    .line 800
    const/4 v1, 0x0

    return v1

    .line 789
    .end local v4  # "si":Landroid/content/pm/ShortcutInfo;
    .end local v5  # "activity":Landroid/content/ComponentName;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 803
    .end local v3  # "i":I
    :cond_44
    return v1
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;
    .registers 11
    .param p1, "shortcutId"  # Ljava/lang/String;
    .param p2, "disable"  # Z
    .param p3, "overrideImmutable"  # Z
    .param p4, "ignoreInvisible"  # Z
    .param p5, "disabledReason"  # I

    .line 409
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-ne p2, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable and disabledReason disagree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 414
    .local v2, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_42

    if-eqz p4, :cond_42

    .line 415
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_86

    .line 418
    :cond_42
    if-nez p3, :cond_47

    .line 419
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 421
    :cond_47
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 423
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 424
    const/16 v0, 0x21

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 425
    if-eqz p2, :cond_65

    .line 426
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 428
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    if-nez v0, :cond_65

    .line 429
    invoke-virtual {v2, p5}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 432
    :cond_65
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 436
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 439
    :cond_81
    return-object v2

    .line 441
    :cond_82
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 442
    return-object v3

    .line 416
    :cond_86
    :goto_86
    return-object v3
.end method

.method private disableDynamicWithId(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "shortcutId"  # Ljava/lang/String;
    .param p2, "ignoreInvisible"  # Z
    .param p3, "disabledReason"  # I

    .line 379
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 382
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 6
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p2, "ignoreInvisible"  # Z

    .line 222
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p2, :cond_11

    .line 223
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_31

    .line 224
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be manipulated via APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_31
    :goto_31
    return-void
.end method

.method private forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 253
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_16

    .line 254
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 255
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 258
    :cond_16
    return-object v0
.end method

.method private forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 268
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"  # Ljava/lang/String;

    .line 768
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 769
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 770
    return-object p0

    .line 772
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 6
    .param p2, "cn"  # Landroid/content/ComponentName;
    .param p3, "increment"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .line 1141
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1142
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 1143
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1146
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"  # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"  # Landroid/content/pm/ShortcutInfo;

    .line 1100
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1101
    const/4 v0, -0x1

    return v0

    .line 1103
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1104
    const/4 v0, 0x1

    return v0

    .line 1106
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 5
    .param p0, "a"  # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"  # Landroid/content/pm/ShortcutInfo;

    .line 1267
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1268
    .local v0, "ret":I
    if-eqz v0, :cond_f

    .line 1269
    return v0

    .line 1276
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 1277
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    return v1

    .line 1281
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1282
    if-eqz v0, :cond_32

    .line 1283
    return v0

    .line 1288
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$verifyStates$3(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"  # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"  # Landroid/content/pm/ShortcutInfo;

    .line 1855
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$verifyStates$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"  # Landroid/content/pm/ShortcutInfo;

    .line 1859
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$verifyStates$5(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"  # Landroid/content/pm/ShortcutInfo;

    .line 1862
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 15
    .param p0, "s"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"  # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1604
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    .line 1608
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1610
    .local v1, "ret":Lcom/android/server/pm/ShortcutPackage;
    nop

    .line 1611
    const-string v2, "call-count"

    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1612
    nop

    .line 1613
    const-string/jumbo v2, "last-reset"

    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1616
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1618
    .local v2, "outerDepth":I
    :goto_27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_af

    const/4 v3, 0x3

    if-ne v4, v3, :cond_38

    .line 1619
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_af

    .line 1620
    :cond_38
    const/4 v3, 0x2

    if-eq v4, v3, :cond_3c

    .line 1621
    goto :goto_27

    .line 1623
    :cond_3c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1624
    .local v6, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1625
    .local v7, "tag":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    if-ne v6, v8, :cond_aa

    .line 1626
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x72a5f22b

    if-eq v9, v10, :cond_73

    const v10, -0x642f3cc1

    if-eq v9, v10, :cond_68

    const v10, -0x146a23ba

    if-eq v9, v10, :cond_5d

    :cond_5c
    goto :goto_7d

    :cond_5d
    const-string/jumbo v9, "shortcut"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    move v8, v5

    goto :goto_7d

    :cond_68
    const-string/jumbo v9, "share-target"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    move v8, v3

    goto :goto_7d

    :cond_73
    const-string/jumbo v9, "package-info"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    const/4 v8, 0x0

    :goto_7d
    if-eqz v8, :cond_a1

    if-eq v8, v5, :cond_8e

    if-eq v8, v3, :cond_84

    goto :goto_aa

    .line 1639
    :cond_84
    iget-object v3, v1, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    goto :goto_27

    .line 1632
    :cond_8e
    nop

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v3

    .line 1632
    invoke-static {p2, v0, v3, p3}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 1636
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v5, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    goto :goto_27

    .line 1628
    .end local v3  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_a1
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 1630
    goto/16 :goto_27

    .line 1643
    :cond_aa
    :goto_aa
    invoke-static {v6, v7}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 1644
    .end local v6  # "depth":I
    .end local v7  # "tag":Ljava/lang/String;
    goto/16 :goto_27

    .line 1645
    :cond_af
    return-object v1
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 9
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1783
    const-string/jumbo v0, "intent-base"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1786
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1788
    .local v1, "outerDepth":I
    :goto_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4c

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1c

    .line 1789
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4c

    .line 1790
    :cond_1c
    const/4 v2, 0x2

    if-eq v3, v2, :cond_20

    .line 1791
    goto :goto_b

    .line 1793
    :cond_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1794
    .local v2, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1799
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4cd5119d

    if-eq v6, v7, :cond_33

    :cond_32
    goto :goto_3c

    :cond_33
    const-string v6, "extras"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const/4 v5, 0x0

    :goto_3c
    if-nez v5, :cond_47

    .line 1801
    nop

    .line 1802
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1801
    invoke-static {v0, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1803
    goto :goto_b

    .line 1805
    :cond_47
    invoke-static {v2, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1807
    .end local v2  # "depth":I
    .end local v4  # "tag":Ljava/lang/String;
    :cond_4c
    return-object v0
.end method

.method private static parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;
    .registers 8
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1812
    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1813
    .local v0, "name":Ljava/lang/CharSequence;
    const-string/jumbo v1, "uri"

    invoke-static {p0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v2, "key"

    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1815
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "is-bot"

    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1816
    .local v3, "isBot":Z
    const-string/jumbo v4, "is-important"

    invoke-static {p0, v4}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1819
    .local v4, "isImportant":Z
    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 1820
    .local v5, "builder":Landroid/app/Person$Builder;
    invoke-virtual {v5, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 1821
    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    return-object v6
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 62
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "fromBackup"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1665
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1666
    .local v1, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 1676
    .local v3, "extras":Landroid/os/PersistableBundle;
    const/4 v4, 0x0

    .line 1677
    .local v4, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v5, "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    const-string/jumbo v6, "id"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1680
    .local v6, "id":Ljava/lang/String;
    const-string v7, "activity"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v35

    .line 1682
    .local v35, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v7, "title"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1683
    .local v36, "title":Ljava/lang/String;
    const-string/jumbo v7, "titleid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v37

    .line 1684
    .local v37, "titleResId":I
    const-string/jumbo v7, "titlename"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1685
    .local v38, "titleResName":Ljava/lang/String;
    const-string/jumbo v7, "text"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1686
    .local v39, "text":Ljava/lang/String;
    const-string/jumbo v7, "textid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v40

    .line 1687
    .local v40, "textResId":I
    const-string/jumbo v7, "textname"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1688
    .local v41, "textResName":Ljava/lang/String;
    const-string v7, "dmessage"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1689
    .local v42, "disabledMessage":Ljava/lang/String;
    const-string v7, "dmessageid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v43

    .line 1691
    .local v43, "disabledMessageResId":I
    const-string v7, "dmessagename"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1693
    .local v44, "disabledMessageResName":Ljava/lang/String;
    const-string v7, "disabled-reason"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 1694
    .local v7, "disabledReason":I
    const-string/jumbo v8, "intent"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1695
    .local v15, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v9, "rank"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v14, v9

    .line 1696
    .local v14, "rank":I
    const-string/jumbo v9, "timestamp"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v45

    .line 1697
    .local v45, "lastChangedTimestamp":J
    const-string v9, "flags"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1698
    .local v9, "flags":I
    const-string v10, "icon-res"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v13, v10

    .line 1699
    .local v13, "iconResId":I
    const-string v10, "icon-resname"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1700
    .local v47, "iconResName":Ljava/lang/String;
    const-string v10, "bitmap-path"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1701
    .local v48, "bitmapPath":Ljava/lang/String;
    const-string/jumbo v10, "locus-id"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1703
    .local v11, "locusIdString":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 1705
    .local v10, "outerDepth":I
    :goto_99
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move/from16 v49, v12

    move/from16 v16, v13

    .end local v13  # "iconResId":I
    .local v16, "iconResId":I
    .local v49, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1a5

    const/4 v12, 0x3

    move/from16 v13, v49

    .end local v49  # "type":I
    .local v13, "type":I
    if-ne v13, v12, :cond_bb

    .line 1706
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_b0

    goto :goto_bb

    :cond_b0
    move-object/from16 v49, v3

    move/from16 v21, v10

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v3, 0x0

    goto/16 :goto_1ae

    .line 1707
    :cond_bb
    :goto_bb
    const/4 v12, 0x2

    if-eq v13, v12, :cond_c8

    .line 1708
    move-object/from16 v49, v3

    move-object/from16 v22, v8

    move/from16 v21, v10

    move/from16 v25, v14

    goto/16 :goto_189

    .line 1710
    :cond_c8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1711
    .local v12, "depth":I
    move/from16 v21, v10

    .end local v10  # "outerDepth":I
    .local v21, "outerDepth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1716
    .local v10, "tag":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v23

    move/from16 v24, v13

    .end local v13  # "type":I
    .local v24, "type":I
    const-string v13, "categories"

    move/from16 v25, v14

    .end local v14  # "rank":I
    .local v25, "rank":I
    const-string/jumbo v14, "string-array"

    move-object/from16 v49, v3

    .end local v3  # "extras":Landroid/os/PersistableBundle;
    .local v49, "extras":Landroid/os/PersistableBundle;
    sparse-switch v23, :sswitch_data_234

    :cond_e6
    goto :goto_11f

    :sswitch_e7
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e6

    const/4 v3, 0x3

    goto :goto_121

    :sswitch_ef
    const-string/jumbo v3, "person"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x4

    goto :goto_121

    :sswitch_fa
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x5

    goto :goto_121

    :sswitch_102
    const-string/jumbo v3, "intent-extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x0

    goto :goto_121

    :sswitch_10d
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x1

    goto :goto_121

    :sswitch_115
    const-string v3, "extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x2

    goto :goto_121

    :goto_11f
    move/from16 v3, v22

    :goto_121
    if-eqz v3, :cond_195

    move-object/from16 v22, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_181

    const/4 v8, 0x2

    if-eq v3, v8, :cond_173

    const/4 v8, 0x3

    if-eq v3, v8, :cond_172

    const/4 v8, 0x4

    if-eq v3, v8, :cond_16a

    const/4 v8, 0x5

    if-ne v3, v8, :cond_165

    .line 1733
    const-string/jumbo v3, "name"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 1735
    const/4 v3, 0x0

    invoke-static {v0, v14, v3}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, "ar":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    array-length v13, v3

    invoke-direct {v8, v13}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v8

    .line 1738
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_14e
    array-length v13, v3

    if-ge v8, v13, :cond_159

    .line 1739
    aget-object v13, v3, v8

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1738
    add-int/lit8 v8, v8, 0x1

    goto :goto_14e

    .line 1741
    .end local v3  # "ar":[Ljava/lang/String;
    .end local v8  # "i":I
    :cond_159
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    move-object/from16 v3, v49

    goto/16 :goto_99

    .line 1744
    :cond_165
    invoke-static {v12, v10}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1730
    :cond_16a
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    goto :goto_189

    .line 1728
    :cond_172
    goto :goto_189

    .line 1724
    :cond_173
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1725
    .end local v49  # "extras":Landroid/os/PersistableBundle;
    .local v3, "extras":Landroid/os/PersistableBundle;
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    goto/16 :goto_99

    .line 1721
    .end local v3  # "extras":Landroid/os/PersistableBundle;
    .restart local v49  # "extras":Landroid/os/PersistableBundle;
    :cond_181
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    nop

    .line 1705
    .end local v12  # "depth":I
    .end local v21  # "outerDepth":I
    .end local v24  # "type":I
    .end local v25  # "rank":I
    .end local v49  # "extras":Landroid/os/PersistableBundle;
    .restart local v3  # "extras":Landroid/os/PersistableBundle;
    .local v10, "outerDepth":I
    .restart local v14  # "rank":I
    :cond_189
    :goto_189
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    move-object/from16 v3, v49

    .end local v3  # "extras":Landroid/os/PersistableBundle;
    .end local v10  # "outerDepth":I
    .end local v14  # "rank":I
    .restart local v21  # "outerDepth":I
    .restart local v25  # "rank":I
    .restart local v49  # "extras":Landroid/os/PersistableBundle;
    goto/16 :goto_99

    .line 1718
    .local v10, "tag":Ljava/lang/String;
    .restart local v12  # "depth":I
    .restart local v24  # "type":I
    :cond_195
    move-object/from16 v22, v8

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1719
    move/from16 v13, v16

    move/from16 v10, v21

    move/from16 v14, v25

    move-object/from16 v3, v49

    goto/16 :goto_99

    .line 1705
    .end local v12  # "depth":I
    .end local v21  # "outerDepth":I
    .end local v24  # "type":I
    .end local v25  # "rank":I
    .restart local v3  # "extras":Landroid/os/PersistableBundle;
    .local v10, "outerDepth":I
    .restart local v14  # "rank":I
    .local v49, "type":I
    :cond_1a5
    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v24, v49

    move-object/from16 v49, v3

    const/4 v3, 0x0

    .line 1747
    .end local v3  # "extras":Landroid/os/PersistableBundle;
    .end local v10  # "outerDepth":I
    .end local v14  # "rank":I
    .restart local v21  # "outerDepth":I
    .restart local v24  # "type":I
    .restart local v25  # "rank":I
    .local v49, "extras":Landroid/os/PersistableBundle;
    :goto_1ae
    if-eqz v15, :cond_1b9

    .line 1749
    invoke-static {v15, v1}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1750
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1751
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    :cond_1b9
    if-nez v7, :cond_1c3

    and-int/lit8 v8, v9, 0x40

    if-eqz v8, :cond_1c3

    .line 1759
    const/4 v7, 0x1

    move/from16 v50, v7

    goto :goto_1c5

    .line 1763
    :cond_1c3
    move/from16 v50, v7

    .end local v7  # "disabledReason":I
    .local v50, "disabledReason":I
    :goto_1c5
    if-eqz p3, :cond_1cc

    .line 1764
    or-int/lit16 v7, v9, 0x1000

    move/from16 v51, v7

    .end local v9  # "flags":I
    .local v7, "flags":I
    goto :goto_1ce

    .line 1763
    .end local v7  # "flags":I
    .restart local v9  # "flags":I
    :cond_1cc
    move/from16 v51, v9

    .line 1767
    .end local v9  # "flags":I
    .local v51, "flags":I
    :goto_1ce
    if-nez v11, :cond_1d1

    goto :goto_1d6

    :cond_1d1
    new-instance v3, Landroid/content/LocusId;

    invoke-direct {v3, v11}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :goto_1d6
    move-object/from16 v34, v3

    .line 1769
    .local v34, "locusId":Landroid/content/LocusId;
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    move-object v7, v3

    const/4 v12, 0x0

    .line 1774
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, [Landroid/content/Intent;

    .line 1777
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/app/Person;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v33, v8

    check-cast v33, [Landroid/app/Person;

    move/from16 v8, p2

    move-object v9, v6

    move/from16 v52, v21

    .end local v21  # "outerDepth":I
    .local v52, "outerDepth":I
    move-object/from16 v10, p1

    move-object/from16 v53, v11

    .end local v11  # "locusIdString":Ljava/lang/String;
    .local v53, "locusIdString":Ljava/lang/String;
    move-object/from16 v11, v35

    move/from16 v54, v16

    move/from16 v55, v24

    .end local v16  # "iconResId":I
    .end local v24  # "type":I
    .local v54, "iconResId":I
    .local v55, "type":I
    move-object/from16 v13, v36

    move/from16 v56, v25

    .end local v25  # "rank":I
    .local v56, "rank":I
    move/from16 v14, v37

    move-object/from16 v57, v15

    .end local v15  # "intentLegacy":Landroid/content/Intent;
    .local v57, "intentLegacy":Landroid/content/Intent;
    move-object/from16 v15, v38

    move-object/from16 v16, v39

    move/from16 v17, v40

    move-object/from16 v18, v41

    move-object/from16 v19, v42

    move/from16 v20, v43

    move-object/from16 v21, v44

    move-object/from16 v22, v4

    move/from16 v24, v56

    move-object/from16 v25, v49

    move-wide/from16 v26, v45

    move/from16 v28, v51

    move/from16 v29, v54

    move-object/from16 v30, v47

    move-object/from16 v31, v48

    move/from16 v32, v50

    invoke-direct/range {v7 .. v34}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;)V

    .line 1769
    return-object v3

    nop

    :sswitch_data_234
    .sparse-switch
        -0x4cd5119d -> :sswitch_115
        -0x468ec964 -> :sswitch_10d
        -0x3e3f454c -> :sswitch_102
        -0x3d122a63 -> :sswitch_fa
        -0x3b1c64ab -> :sswitch_ef
        0x4d47461c -> :sswitch_e7
    .end sparse-switch
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 967
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 970
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 971
    .local v1, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_2c

    .line 972
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 974
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 975
    if-nez v1, :cond_22

    .line 976
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v4

    .line 978
    :cond_22
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v3  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 983
    .end local v2  # "i":I
    :cond_2c
    if-eqz p1, :cond_94

    .line 984
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 986
    .local v2, "newListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v2, :cond_94

    .line 987
    const/4 v0, 0x1

    .line 989
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 990
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 992
    .local v5, "newDisabled":Z
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 993
    .local v6, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 995
    .local v7, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    .line 997
    .local v8, "wasPinned":Z
    if-eqz v7, :cond_82

    .line 998
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v9

    if-nez v9, :cond_77

    .line 999
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shortcut with ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ShortcutService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    goto :goto_91

    .line 1004
    :cond_77
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 1005
    const/4 v8, 0x1

    .line 1006
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1009
    :cond_82
    if-eqz v5, :cond_87

    if-nez v8, :cond_87

    .line 1013
    goto :goto_91

    .line 1018
    :cond_87
    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 1020
    if-nez v5, :cond_91

    if-eqz v1, :cond_91

    .line 1022
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 986
    .end local v4  # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5  # "newDisabled":Z
    .end local v6  # "id":Ljava/lang/String;
    .end local v7  # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v8  # "wasPinned":Z
    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1028
    .end local v2  # "newListSize":I
    .end local v3  # "i":I
    :cond_94
    if-eqz v1, :cond_b5

    .line 1034
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9c
    if-ltz v2, :cond_b2

    .line 1035
    const/4 v0, 0x1

    .line 1037
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1039
    .local v3, "id":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 1034
    .end local v3  # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 1043
    .end local v2  # "i":I
    :cond_b2
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 1045
    :cond_b5
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1046
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .registers 11

    .line 1054
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1055
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 1057
    .local v1, "maxShortcuts":I
    const/4 v2, 0x0

    .line 1059
    .local v2, "changed":Z
    nop

    .line 1060
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1061
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "outer":I
    :goto_14
    if-ltz v4, :cond_4e

    .line 1062
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1063
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v1, :cond_23

    .line 1064
    goto :goto_4b

    .line 1067
    :cond_23
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1070
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "inner":I
    :goto_2d
    if-lt v7, v1, :cond_4b

    .line 1071
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1073
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1076
    const-string v9, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1077
    goto :goto_48

    .line 1079
    :cond_41
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 1070
    .end local v8  # "shortcut":Landroid/content/pm/ShortcutInfo;
    :goto_48
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 1061
    .end local v6  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7  # "inner":I
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 1083
    .end local v4  # "outer":I
    :cond_4e
    return v2
.end method

.method private removeOrphans()V
    .registers 5

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2c

    .line 318
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 320
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_29

    .line 322
    :cond_1a
    if-nez v0, :cond_22

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 325
    :cond_22
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2  # "si":Landroid/content/pm/ShortcutInfo;
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 327
    .end local v1  # "i":I
    :cond_2c
    if-eqz v0, :cond_42

    .line 328
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_34
    if-ltz v1, :cond_42

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 328
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 332
    .end local v1  # "i":I
    :cond_42
    return-void
.end method

.method private saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 21
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "si"  # Landroid/content/pm/ShortcutInfo;
    .param p3, "forBackup"  # Z
    .param p4, "appSupportsBackup"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1488
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1490
    .local v2, "s":Lcom/android/server/pm/ShortcutService;
    if-eqz p3, :cond_17

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1495
    :cond_16
    return-void

    .line 1498
    :cond_17
    if-eqz p3, :cond_1e

    if-eqz p4, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    .line 1504
    .local v3, "shouldBackupDetails":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1505
    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_2d

    .line 1504
    :cond_2b
    move-object/from16 v4, p2

    .line 1507
    :goto_2d
    const-string/jumbo v5, "shortcut"

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "id"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "activity"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1512
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "title"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "titleid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "titlename"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "text"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "textid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "textname"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1518
    if-eqz v3, :cond_a5

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "dmessage"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1520
    nop

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v7

    int-to-long v7, v7

    .line 1520
    const-string v9, "dmessageid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1522
    nop

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v7

    .line 1522
    const-string v8, "dmessagename"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1525
    :cond_a5
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v7

    int-to-long v7, v7

    const-string v9, "disabled-reason"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1526
    nop

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v7

    .line 1526
    const-string/jumbo v9, "timestamp"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v7

    .line 1529
    .local v7, "locusId":Landroid/content/LocusId;
    if-eqz v7, :cond_ce

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "locus-id"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1532
    :cond_ce
    const-string v8, "flags"

    if-eqz p3, :cond_f0

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, -0x80e

    .line 1539
    .local v9, "flags":I
    int-to-long v10, v9

    invoke-static {v0, v8, v10, v11}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v10

    .line 1543
    .local v10, "packageVersionCode":J
    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_ef

    .line 1544
    const-string v8, "Package version code should be available at this point."

    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1547
    .end local v9  # "flags":I
    .end local v10  # "packageVersionCode":J
    :cond_ef
    goto :goto_11f

    .line 1550
    :cond_f0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v9

    int-to-long v9, v9

    const-string/jumbo v11, "rank"

    invoke-static {v0, v11, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "icon-res"

    invoke-static {v0, v10, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon-resname"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bitmap-path"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1558
    :goto_11f
    if-eqz v3, :cond_1c2

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 1561
    .local v8, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_144

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_144

    .line 1562
    const-string v9, "categories"

    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1563
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-static {v10, v9, v0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1565
    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    .end local v8  # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_144
    if-nez p3, :cond_194

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v8

    .line 1570
    .local v8, "persons":[Landroid/app/Person;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_194

    .line 1571
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_151
    array-length v10, v8

    if-ge v9, v10, :cond_194

    .line 1572
    aget-object v10, v8, v9

    .line 1574
    .local v10, "p":Landroid/app/Person;
    const-string/jumbo v11, "person"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    invoke-virtual {v10}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1576
    invoke-virtual {v10}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "uri"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1577
    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "key"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1578
    invoke-virtual {v10}, Landroid/app/Person;->isBot()Z

    move-result v12

    const-string/jumbo v13, "is-bot"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1579
    invoke-virtual {v10}, Landroid/app/Person;->isImportant()Z

    move-result v12

    const-string/jumbo v13, "is-important"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1580
    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1571
    .end local v10  # "p":Landroid/app/Person;
    add-int/lit8 v9, v9, 0x1

    goto :goto_151

    .line 1584
    .end local v8  # "persons":[Landroid/app/Person;
    .end local v9  # "i":I
    :cond_194
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v8

    .line 1585
    .local v8, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v9

    .line 1586
    .local v9, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v10, v8

    .line 1587
    .local v10, "numIntents":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_19e
    const-string v12, "extras"

    if-ge v11, v10, :cond_1bb

    .line 1588
    const-string/jumbo v13, "intent"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1589
    aget-object v14, v8, v11

    const-string/jumbo v15, "intent-base"

    invoke-static {v0, v15, v14}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1590
    aget-object v14, v9, v11

    invoke-static {v0, v12, v14}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1591
    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    add-int/lit8 v11, v11, 0x1

    goto :goto_19e

    .line 1594
    .end local v11  # "i":I
    :cond_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-static {v0, v12, v11}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1597
    .end local v8  # "intentsNoExtras":[Landroid/content/Intent;
    .end local v9  # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v10  # "numIntents":I
    :cond_1c2
    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 1114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1116
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_46

    .line 1117
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1118
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1119
    goto :goto_43

    .line 1122
    :cond_1e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1123
    .local v3, "activity":Landroid/content/ComponentName;
    if-nez v3, :cond_2f

    .line 1124
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v5, "null activity detected."

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1125
    goto :goto_43

    .line 1128
    :cond_2f
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1129
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v4, :cond_40

    .line 1130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 1131
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_40
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    .end local v2  # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3  # "activity":Landroid/content/ComponentName;
    .end local v4  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1135
    .end local v1  # "i":I
    :cond_46
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1938
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1940
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 1941
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1942
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_4f

    .line 1943
    const/4 v0, 0x1

    .line 1944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but expected to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1944
    const-string v4, "ShortcutService.verify"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    .end local v2  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1948
    .end local v1  # "i":I
    :cond_52
    return v0
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 284
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 293
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_1d

    .line 294
    const/4 v1, 0x0

    .local v1, "wasPinned":Z
    goto :goto_25

    .line 298
    .end local v1  # "wasPinned":Z
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 300
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    .line 304
    .restart local v1  # "wasPinned":Z
    :goto_25
    if-eqz v1, :cond_2b

    .line 305
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 308
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    return-void
.end method

.method public adjustRanks()V
    .registers 13

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1296
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1299
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_30

    .line 1300
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1301
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1302
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    if-eqz v5, :cond_2d

    .line 1303
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1304
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1299
    .end local v4  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1313
    .end local v3  # "i":I
    :cond_30
    nop

    .line 1314
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1315
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "outer":I
    :goto_3b
    if-ltz v4, :cond_7e

    .line 1316
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1319
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1321
    const/4 v6, 0x0

    .line 1323
    .local v6, "rank":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1324
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4e
    if-ge v8, v7, :cond_7b

    .line 1325
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1326
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 1328
    goto :goto_78

    .line 1331
    :cond_5d
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-nez v10, :cond_69

    .line 1332
    const-string v10, "Non-dynamic shortcut found."

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1333
    goto :goto_78

    .line 1335
    :cond_69
    add-int/lit8 v10, v6, 0x1

    .line 1336
    .local v6, "thisRank":I
    .local v10, "rank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v11

    if-eq v11, v6, :cond_77

    .line 1337
    invoke-virtual {v9, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1338
    invoke-virtual {v9, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1324
    .end local v6  # "thisRank":I
    .end local v9  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_77
    move v6, v10

    .end local v10  # "rank":I
    .local v6, "rank":I
    :goto_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 1315
    .end local v5  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6  # "rank":I
    .end local v7  # "size":I
    .end local v8  # "i":I
    :cond_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b

    .line 1342
    .end local v4  # "outer":I
    :cond_7e
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllImplicitRanks()V
    .registers 3

    .line 1256
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1257
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1258
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1256
    .end local v1  # "si":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1260
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public deleteAllDynamicShortcuts(Z)V
    .registers 9
    .param p1, "ignoreInvisible"  # Z

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 340
    .local v0, "now":J
    const/4 v2, 0x0

    .line 341
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_37

    .line 342
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 343
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_34

    if-eqz p1, :cond_29

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 344
    :cond_29
    const/4 v2, 0x1

    .line 346
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 347
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 348
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 341
    .end local v5  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 351
    .end local v3  # "i":I
    :cond_37
    if-eqz v2, :cond_3c

    .line 352
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 354
    :cond_3c
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "shortcutId"  # Ljava/lang/String;
    .param p2, "ignoreInvisible"  # Z

    .line 364
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 367
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .registers 13
    .param p1, "shortcutId"  # Ljava/lang/String;
    .param p2, "disabledMessage"  # Ljava/lang/String;
    .param p3, "disabledMessageResId"  # I
    .param p4, "overrideImmutable"  # Z
    .param p5, "ignoreInvisible"  # Z
    .param p6, "disabledReason"  # I

    .line 392
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 395
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_1e

    .line 396
    if-eqz p2, :cond_12

    .line 397
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_1e

    .line 398
    :cond_12
    if-eqz p3, :cond_1e

    .line 399
    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 401
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 404
    :cond_1e
    :goto_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "filter"  # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 1356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    const-string v0, "  UID: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1363
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1367
    const-string v1, "Calls: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1369
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    const-string v1, "Last known FG: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1376
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    const-string v1, "Last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1383
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v1, "  Shortcuts:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    const-wide/16 v1, 0x0

    .line 1393
    .local v1, "totalBitmapSize":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1394
    .local v3, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1395
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_95
    if-ge v5, v4, :cond_dc

    .line 1396
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 1397
    .local v6, "si":Landroid/content/pm/ShortcutInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d9

    .line 1399
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 1400
    .local v7, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    const-string v9, "bitmap size="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 1405
    add-long/2addr v1, v7

    .line 1395
    .end local v6  # "si":Landroid/content/pm/ShortcutInfo;
    .end local v7  # "len":J
    :cond_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 1408
    .end local v5  # "i":I
    :cond_dc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    const-string v0, "Total bitmap size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1412
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 15
    .param p1, "clear"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1419
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 1421
    .local v0, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1422
    .local v1, "numDynamic":I
    const/4 v2, 0x0

    .line 1423
    .local v2, "numPinned":I
    const/4 v3, 0x0

    .line 1424
    .local v3, "numManifest":I
    const/4 v4, 0x0

    .line 1425
    .local v4, "numBitmaps":I
    const-wide/16 v5, 0x0

    .line 1427
    .local v5, "totalBitmapSize":J
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1428
    .local v7, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1429
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    if-ge v9, v8, :cond_4a

    .line 1430
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 1432
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v11

    if-eqz v11, :cond_21

    add-int/lit8 v1, v1, 0x1

    .line 1433
    :cond_21
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v11

    if-eqz v11, :cond_29

    add-int/lit8 v3, v3, 0x1

    .line 1434
    :cond_29
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_31

    add-int/lit8 v2, v2, 0x1

    .line 1436
    :cond_31
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_47

    .line 1437
    add-int/lit8 v4, v4, 0x1

    .line 1438
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v5, v11

    .line 1429
    .end local v10  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 1442
    .end local v9  # "i":I
    :cond_4a
    const-string v9, "dynamic"

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1443
    const-string/jumbo v9, "manifest"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1444
    const-string/jumbo v9, "pinned"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1445
    const-string v9, "bitmaps"

    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1446
    const-string v9, "bitmapBytes"

    invoke-virtual {v0, v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1450
    return-object v0
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"  # Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 448
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_17

    .line 449
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 450
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 453
    :cond_17
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 12
    .param p2, "operation"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1164
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1169
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1170
    .local v1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_3c

    .line 1171
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1173
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1174
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_39

    .line 1175
    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_39

    if-eqz p2, :cond_39

    .line 1176
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1170
    .end local v4  # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 1180
    .end local v2  # "i":I
    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_41
    if-ltz v2, :cond_8c

    .line 1181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1182
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1183
    .local v5, "newActivity":Landroid/content/ComponentName;
    const/4 v6, 0x2

    if-nez v5, :cond_58

    .line 1184
    if-eq p2, v6, :cond_89

    .line 1185
    const-string v6, "Activity must not be null at this point"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1186
    goto :goto_89

    .line 1191
    :cond_58
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1192
    .local v7, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_6d

    .line 1193
    if-ne p2, v6, :cond_69

    .line 1194
    goto :goto_89

    .line 1198
    :cond_69
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1199
    goto :goto_89

    .line 1201
    :cond_6d
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_76

    if-ne p2, v6, :cond_76

    .line 1203
    goto :goto_89

    .line 1209
    :cond_76
    if-eqz p2, :cond_86

    .line 1210
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1211
    .local v6, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_86

    .line 1212
    const/4 v8, -0x1

    invoke-direct {p0, v1, v6, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1215
    .end local v6  # "oldActivity":Landroid/content/ComponentName;
    :cond_86
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1180
    .end local v4  # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5  # "newActivity":Landroid/content/ComponentName;
    .end local v7  # "original":Landroid/content/pm/ShortcutInfo;
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .line 1219
    .end local v2  # "i":I
    :cond_8c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_91
    if-ltz v2, :cond_a3

    .line 1220
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1219
    add-int/lit8 v2, v2, -0x1

    goto :goto_91

    .line 1222
    .end local v2  # "i":I
    :cond_a3
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 243
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 246
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 236
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 236
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 239
    .end local v0  # "i":I
    :cond_14
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "ignoreInvisible"  # Z

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 232
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 11
    .param p3, "cloneFlag"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 592
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 593
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .registers 15
    .param p3, "cloneFlag"  # I
    .param p4, "callingLauncher"  # Ljava/lang/String;
    .param p5, "launcherUserId"  # I
    .param p6, "getPinnedByAnyLauncher"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 605
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 607
    return-void

    .line 610
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 613
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_13

    const/4 v1, 0x0

    goto :goto_28

    .line 615
    :cond_13
    nop

    .line 614
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, p4, v1, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 615
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    :goto_28
    nop

    .line 617
    .local v1, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 618
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 623
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_4b

    if-eqz v1, :cond_49

    .line 624
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v4, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v4, 0x1

    .line 626
    .local v4, "isPinnedByCaller":Z
    :goto_4c
    if-nez p6, :cond_57

    .line 627
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 628
    if-nez v4, :cond_57

    .line 629
    goto :goto_73

    .line 633
    :cond_57
    invoke-virtual {v3, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 638
    .local v5, "clone":Landroid/content/pm/ShortcutInfo;
    const/4 v6, 0x2

    if-nez p6, :cond_63

    .line 639
    if-nez v4, :cond_63

    .line 640
    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 643
    :cond_63
    if-eqz p2, :cond_6b

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 644
    :cond_6b
    if-nez v4, :cond_70

    .line 645
    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 647
    :cond_70
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v3  # "si":Landroid/content/pm/ShortcutInfo;
    .end local v4  # "isPinnedByCaller":Z
    .end local v5  # "clone":Landroid/content/pm/ShortcutInfo;
    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 650
    .end local v2  # "i":I
    :cond_76
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShareTargetsForTest()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation

    .line 1831
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1826
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount(Z)I
    .registers 11
    .param p1, "unlimited"  # Z

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 519
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 521
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    if-eqz p1, :cond_23

    .line 523
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 524
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 531
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 533
    .local v1, "last":J
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 534
    .local v3, "now":J
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_46

    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_46

    .line 535
    const-string v5, "ShortcutService"

    const-string v7, "Clock rewound"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 538
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 539
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5

    .line 543
    :cond_46
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v1

    if-gez v5, :cond_50

    .line 548
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 549
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 551
    :cond_50
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 15
    .param p1, "filter"  # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v0, "matchedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 664
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShareTargetInfo;

    .line 665
    .local v2, "target":Lcom/android/server/pm/ShareTargetInfo;
    iget-object v3, v2, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_2d

    aget-object v6, v3, v5

    .line 666
    .local v6, "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    iget-object v7, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 668
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    goto :goto_2d

    .line 665
    .end local v6  # "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 663
    .end local v2  # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 674
    .end local v1  # "i":I
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 679
    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v2, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 685
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 686
    .local v4, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_a9

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 687
    goto :goto_a9

    .line 689
    :cond_67
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a9

    .line 691
    const/4 v6, 0x1

    .line 692
    .local v6, "hasAllCategories":Z
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShareTargetInfo;

    .line 693
    .local v7, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v8, 0x0

    .local v8, "q":I
    :goto_76
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_8a

    .line 694
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    .line 695
    const/4 v6, 0x0

    .line 696
    goto :goto_8a

    .line 693
    :cond_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_76

    .line 699
    .end local v8  # "q":I
    :cond_8a
    :goto_8a
    if-eqz v6, :cond_a6

    .line 700
    new-instance v8, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    new-instance v10, Landroid/content/ComponentName;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 700
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    goto :goto_a9

    .line 689
    .end local v6  # "hasAllCategories":Z
    .end local v7  # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 684
    .end local v4  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5  # "j":I
    :cond_a9
    :goto_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 706
    .end local v3  # "i":I
    :cond_ac
    return-object v2
.end method

.method public getOwnerUserId()I
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method getSharingShortcutCount()I
    .registers 10

    .line 719
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6b

    .line 724
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v1, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 727
    const/4 v1, 0x0

    .line 728
    .local v1, "sharingShortcutCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 729
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 730
    .local v3, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_67

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 731
    goto :goto_67

    .line 733
    :cond_38
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_39
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 735
    const/4 v5, 0x1

    .line 736
    .local v5, "hasAllCategories":Z
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShareTargetInfo;

    .line 737
    .local v6, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v7, 0x0

    .local v7, "q":I
    :goto_4b
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_5f

    .line 738
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 739
    const/4 v5, 0x0

    .line 740
    goto :goto_5f

    .line 737
    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 743
    .end local v7  # "q":I
    :cond_5f
    :goto_5f
    if-eqz v5, :cond_64

    .line 744
    add-int/lit8 v1, v1, 0x1

    .line 745
    goto :goto_67

    .line 733
    .end local v5  # "hasAllCategories":Z
    .end local v6  # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 728
    .end local v3  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4  # "j":I
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 749
    .end local v2  # "i":I
    :cond_6a
    return v1

    .line 720
    .end local v0  # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v1  # "sharingShortcutCount":I
    :cond_6b
    :goto_6b
    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutCount()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 756
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 758
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_31

    .line 759
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 760
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 761
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 758
    .end local v2  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 764
    .end local v1  # "i":I
    :cond_31
    return-object v0
.end method

.method public hasNonManifestShortcuts()Z
    .registers 5

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1347
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1348
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1349
    return v1

    .line 1346
    .end local v2  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1352
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public hasShareTargets()Z
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"  # Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 213
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"  # Ljava/lang/String;

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 218
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public synthetic lambda$refreshPinnedFlags$0$ShortcutPackage(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 7
    .param p1, "launcherShortcuts"  # Lcom/android/server/pm/ShortcutLauncher;

    .line 482
    nop

    .line 483
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 482
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 485
    .local v0, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_37

    .line 488
    :cond_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1c
    if-ltz v1, :cond_36

    .line 489
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 491
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_2f

    .line 496
    goto :goto_33

    .line 498
    :cond_2f
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 488
    .end local v2  # "id":Ljava/lang/String;
    .end local v3  # "si":Landroid/content/pm/ShortcutInfo;
    :goto_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 500
    .end local v1  # "i":I
    :cond_36
    return-void

    .line 486
    :cond_37
    :goto_37
    return-void
.end method

.method protected onRestored(I)V
    .registers 5
    .param p1, "restoreBlockReason"  # I

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 190
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 191
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 194
    if-eqz p1, :cond_21

    .line 195
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 189
    .end local v1  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 200
    .end local v0  # "i":I
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 201
    return-void
.end method

.method public refreshPinnedFlags()V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_19

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 481
    .end local v0  # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 503
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 504
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .registers 21
    .param p1, "isNewApp"  # Z
    .param p2, "forceRescan"  # Z

    .line 821
    move-object/from16 v1, p0

    const-string v2, "ShortcutService"

    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 822
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v4

    .line 826
    .local v4, "start":J
    const/16 v6, 0xe

    :try_start_e
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    .line 826
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_179

    move-object v7, v0

    .line 828
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    if-nez v7, :cond_27

    .line 829
    nop

    .line 850
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 829
    return v8

    .line 832
    :cond_27
    if-nez p1, :cond_54

    if-nez p2, :cond_54

    .line 843
    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-nez v0, :cond_54

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v9

    iget-wide v11, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v9, v11

    if-nez v0, :cond_54

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result v0
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_179

    if-eqz v0, :cond_54

    .line 846
    nop

    .line 850
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 846
    return v8

    .line 850
    :cond_54
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 851
    nop

    .line 854
    const/4 v6, 0x0

    .line 856
    .local v6, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_59
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 856
    invoke-static {v0, v9, v10, v11}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6b} :catch_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_6b} :catch_6d

    move-object v6, v0

    .line 860
    goto :goto_73

    .line 858
    :catch_6d
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v2, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_73
    if-nez v6, :cond_77

    move v0, v8

    goto :goto_7b

    .line 862
    :cond_77
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_7b
    nop

    .line 868
    .local v0, "manifestShortcutSize":I
    if-eqz p1, :cond_81

    if-nez v0, :cond_81

    .line 873
    return v8

    .line 881
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v9

    .line 886
    .local v9, "newVersionCode":J
    iget-object v11, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "i":I
    :goto_98
    if-ltz v11, :cond_d4

    .line 887
    iget-object v13, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    .line 888
    .local v13, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v14

    const/16 v15, 0x64

    if-eq v14, v15, :cond_ab

    .line 889
    goto :goto_d1

    .line 891
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-lez v14, :cond_b8

    .line 896
    goto :goto_d1

    .line 898
    :cond_b8
    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, "Restoring shortcut: %s"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 900
    invoke-virtual {v13, v8}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 886
    .end local v13  # "si":Landroid/content/pm/ShortcutInfo;
    :goto_d1
    add-int/lit8 v11, v11, -0x1

    goto :goto_98

    .line 905
    .end local v11  # "i":I
    :cond_d4
    if-nez p1, :cond_160

    .line 906
    const/4 v11, 0x0

    .line 908
    .local v11, "publisherRes":Landroid/content/res/Resources;
    iget-object v13, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v12

    .local v13, "i":I
    :goto_de
    if-ltz v13, :cond_15e

    .line 909
    iget-object v14, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    .line 912
    .local v14, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v15

    if-eqz v15, :cond_133

    .line 913
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_fc

    .line 915
    const-string/jumbo v15, "null activity detected."

    invoke-virtual {v3, v15}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    move v15, v8

    goto :goto_134

    .line 917
    :cond_fc
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v12

    invoke-virtual {v3, v15, v12}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v12

    if-nez v12, :cond_131

    .line 918
    const/4 v12, 0x2

    new-array v15, v12, [Ljava/lang/Object;

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v8

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v15, v16

    .line 918
    const-string v8, "%s is no longer main activity. Disabling shorcut %s."

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    invoke-direct {v1, v8, v15, v12}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_134

    .line 923
    move-object v12, v7

    goto :goto_158

    .line 917
    :cond_131
    move v15, v8

    goto :goto_134

    .line 912
    :cond_133
    move v15, v8

    .line 929
    :cond_134
    :goto_134
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v8

    if-eqz v8, :cond_157

    .line 930
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v8

    if-nez v8, :cond_14e

    .line 931
    if-nez v11, :cond_14b

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 933
    .end local v11  # "publisherRes":Landroid/content/res/Resources;
    .local v8, "publisherRes":Landroid/content/res/Resources;
    if-nez v8, :cond_14a

    .line 934
    move-object v12, v7

    goto :goto_161

    .line 933
    :cond_14a
    move-object v11, v8

    .line 941
    .end local v8  # "publisherRes":Landroid/content/res/Resources;
    .restart local v11  # "publisherRes":Landroid/content/res/Resources;
    :cond_14b
    invoke-virtual {v14, v11}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 943
    :cond_14e
    move-object v12, v7

    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    goto :goto_158

    .line 929
    .end local v12  # "pi":Landroid/content/pm/PackageInfo;
    .restart local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_157
    move-object v12, v7

    .line 908
    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    .end local v14  # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v12  # "pi":Landroid/content/pm/PackageInfo;
    :goto_158
    add-int/lit8 v13, v13, -0x1

    move-object v7, v12

    move v8, v15

    const/4 v12, 0x1

    goto :goto_de

    .end local v12  # "pi":Landroid/content/pm/PackageInfo;
    .restart local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_15e
    move-object v12, v7

    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12  # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_161

    .line 905
    .end local v11  # "publisherRes":Landroid/content/res/Resources;
    .end local v12  # "pi":Landroid/content/pm/PackageInfo;
    .end local v13  # "i":I
    .restart local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_160
    move-object v12, v7

    .line 949
    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12  # "pi":Landroid/content/pm/PackageInfo;
    :goto_161
    invoke-direct {v1, v6}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    .line 951
    if-eqz v6, :cond_169

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 955
    :cond_169
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v7

    invoke-virtual {v3, v2, v7}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 959
    const/4 v2, 0x1

    return v2

    .line 850
    .end local v0  # "manifestShortcutSize":I
    .end local v6  # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v9  # "newVersionCode":J
    .end local v12  # "pi":Landroid/content/pm/PackageInfo;
    :catchall_179
    move-exception v0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v0
.end method

.method public resetRateLimiting()V
    .registers 3

    .line 576
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_12

    .line 577
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 580
    :cond_12
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .registers 3

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 585
    return-void
.end method

.method public resetThrottling()V
    .registers 2

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 654
    return-void
.end method

.method public resolveResourceStrings()V
    .registers 8

    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1229
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x0

    .line 1231
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 1232
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_35

    .line 1233
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1235
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1236
    const/4 v1, 0x1

    .line 1238
    if-nez v2, :cond_28

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1240
    if-nez v2, :cond_28

    .line 1241
    goto :goto_35

    .line 1245
    :cond_28
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1246
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1232
    .end local v4  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 1249
    .end local v3  # "i":I
    :cond_35
    :goto_35
    if-eqz v1, :cond_42

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1252
    :cond_42
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 10
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1457
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1459
    .local v1, "shareTargetSize":I
    if-nez v0, :cond_15

    if-nez v1, :cond_15

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v2, :cond_15

    .line 1460
    return-void

    .line 1463
    :cond_15
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1466
    iget v4, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v4, v4

    const-string v6, "call-count"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1467
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    const-string/jumbo v6, "last-reset"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1470
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_42
    if-ge v4, v0, :cond_5a

    .line 1471
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v6

    .line 1471
    invoke-direct {p0, p1, v5, p2, v6}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1470
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 1475
    .end local v4  # "j":I
    :cond_5a
    if-nez p2, :cond_6d

    .line 1476
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_5d
    if-ge v4, v1, :cond_6d

    .line 1477
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1476
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1481
    .end local v4  # "j":I
    :cond_6d
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    return-void
.end method

.method public tryApiCall(Z)Z
    .registers 5
    .param p1, "unlimited"  # Z

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 564
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_e

    .line 565
    const/4 v1, 0x0

    return v1

    .line 567
    :cond_e
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 568
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 569
    return v2
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 456
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 457
    .local v0, "source":Landroid/content/pm/ShortcutInfo;
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 461
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 463
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 466
    return-void
.end method

.method public verifyStates()V
    .registers 15

    .line 1836
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 1838
    const/4 v0, 0x0

    .line 1840
    .local v0, "failed":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1842
    .local v1, "s":Lcom/android/server/pm/ShortcutService;
    nop

    .line 1843
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1846
    .local v2, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "outer":I
    :goto_13
    const-string v5, "Package "

    const-string v6, "ShortcutService.verify"

    if-ltz v3, :cond_89

    .line 1847
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1848
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    if-le v8, v9, :cond_67

    .line 1849
    const/4 v0, 0x1

    .line 1850
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": activity "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shortcuts."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_67
    sget-object v5, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1858
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1859
    .local v5, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v6, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1861
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1862
    .local v6, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v8, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1864
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1865
    invoke-direct {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1846
    .end local v5  # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6  # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 1869
    .end local v3  # "outer":I
    :cond_89
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_90
    if-ltz v3, :cond_2f1

    .line 1870
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1871
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    const-string v9, ": shortcut "

    if-nez v8, :cond_d4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_d4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_d4

    .line 1872
    const/4 v0, 0x1

    .line 1873
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not manifest, dynamic or pinned."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_d4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_106

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_106

    .line 1877
    const/4 v0, 0x1

    .line 1878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is both dynamic and manifest at the same time."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_106
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_138

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_138

    .line 1882
    const/4 v0, 0x1

    .line 1883
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has null activity, but not floating."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_138
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_144

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_170

    :cond_144
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_170

    .line 1887
    const/4 v0, 0x1

    .line 1888
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not floating, but is disabled."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_170
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_1a9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_1a9

    .line 1892
    const/4 v0, 0x1

    .line 1893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is floating, but has rank="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1893
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_1a9
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_1d5

    .line 1897
    const/4 v0, 0x1

    .line 1898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " still has an icon"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_1d5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v8

    if-eqz v8, :cond_207

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-nez v8, :cond_207

    .line 1902
    const/4 v0, 0x1

    .line 1903
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has adaptive bitmap but was not saved to a file."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_207
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_239

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_239

    .line 1907
    const/4 v0, 0x1

    .line 1908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has both resource and bitmap icons"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_239
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    .line 1912
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v10

    if-nez v10, :cond_245

    move v10, v4

    goto :goto_246

    :cond_245
    const/4 v10, 0x0

    :goto_246
    if-eq v8, v10, :cond_281

    .line 1913
    const/4 v0, 0x1

    .line 1914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " vs "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1914
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_281
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v8

    const/16 v10, 0x64

    if-ne v8, v10, :cond_2bd

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_2bd

    .line 1921
    const/4 v0, 0x1

    .line 1922
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_2bd
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_2ed

    .line 1926
    const/4 v0, 0x1

    .line 1927
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has a dummy target activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    .end local v7  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2ed
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_90

    .line 1932
    .end local v3  # "i":I
    :cond_2f1
    if-nez v0, :cond_2f4

    .line 1935
    return-void

    .line 1933
    :cond_2f4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "See logcat for errors"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
