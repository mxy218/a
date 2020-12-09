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

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 156
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6

    .line 148
    nop

    .line 149
    if-eqz p4, :cond_4

    goto :goto_8

    :cond_4
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p4

    .line 148
    :goto_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 125
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 130
    new-instance p4, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1098
    sget-object p4, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1265
    sget-object p4, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 151
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 152
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .registers 7

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
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 789
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1b
    if-ltz v3, :cond_44

    .line 790
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 791
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 793
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 794
    goto :goto_41

    .line 796
    :cond_30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    if-eqz v4, :cond_41

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 800
    const/4 v0, 0x0

    return v0

    .line 789
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 803
    :cond_44
    return v1
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;
    .registers 11

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
    const/4 v3, 0x0

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_42

    if-eqz p4, :cond_42

    .line 415
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p4

    if-nez p4, :cond_42

    goto :goto_86

    .line 418
    :cond_42
    if-nez p3, :cond_47

    .line 419
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 421
    :cond_47
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p3

    if-eqz p3, :cond_82

    .line 423
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 424
    const/16 p1, 0x21

    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 425
    if-eqz p2, :cond_65

    .line 426
    const/16 p1, 0x40

    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 428
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result p1

    if-nez p1, :cond_65

    .line 429
    invoke-virtual {v2, p5}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 432
    :cond_65
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 435
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_81

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

    .line 379
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 382
    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 5

    .line 222
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p2, :cond_11

    .line 223
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_31

    .line 224
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manifest shortcut ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not be manipulated via APIs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 228
    :cond_31
    :goto_31
    return-void
.end method

.method private forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 253
    if-eqz p1, :cond_16

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 255
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 258
    :cond_16
    return-object p1
.end method

.method private forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 268
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 768
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 769
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 770
    return-object p0

    .line 772
    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 5
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
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1142
    if-nez v0, :cond_d

    .line 1143
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1146
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 3

    .line 1100
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1101
    const/4 p0, -0x1

    return p0

    .line 1103
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1104
    const/4 p0, 0x1

    return p0

    .line 1106
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4

    .line 1267
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1268
    if-eqz v0, :cond_f

    .line 1269
    return v0

    .line 1276
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eq v0, v1, :cond_23

    .line 1277
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, -0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x1

    :goto_22
    return p0

    .line 1281
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1282
    if-eqz v0, :cond_32

    .line 1283
    return v0

    .line 1288
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$verifyStates$3(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    .line 1855
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$verifyStates$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    .line 1859
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$verifyStates$5(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    .line 1862
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1604
    const-string/jumbo p0, "name"

    invoke-static {p2, p0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1607
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    .line 1608
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1610
    nop

    .line 1611
    const-string v1, "call-count"

    invoke-static {p2, v1}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1612
    nop

    .line 1613
    const-string v1, "last-reset"

    invoke-static {p2, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1616
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1618
    :goto_26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_ac

    const/4 v4, 0x3

    if-ne v2, v4, :cond_36

    .line 1619
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_ac

    .line 1620
    :cond_36
    const/4 v4, 0x2

    if-eq v2, v4, :cond_3a

    .line 1621
    goto :goto_26

    .line 1623
    :cond_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1624
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1625
    add-int/lit8 v6, v1, 0x1

    if-ne v2, v6, :cond_a7

    .line 1626
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x72a5f22b

    if-eq v7, v8, :cond_71

    const v8, -0x642f3cc1

    if-eq v7, v8, :cond_66

    const v8, -0x146a23ba

    if-eq v7, v8, :cond_5b

    :cond_5a
    goto :goto_7b

    :cond_5b
    const-string/jumbo v7, "shortcut"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    move v6, v3

    goto :goto_7b

    :cond_66
    const-string/jumbo v7, "share-target"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    move v6, v4

    goto :goto_7b

    :cond_71
    const-string/jumbo v7, "package-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    const/4 v6, 0x0

    :goto_7b
    if-eqz v6, :cond_9f

    if-eq v6, v3, :cond_8c

    if-eq v6, v4, :cond_82

    goto :goto_a7

    .line 1639
    :cond_82
    iget-object v2, v0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    goto :goto_26

    .line 1632
    :cond_8c
    nop

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    .line 1632
    invoke-static {p2, p0, v2, p3}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 1636
    iget-object v3, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    goto :goto_26

    .line 1628
    :cond_9f
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 1630
    goto :goto_26

    .line 1643
    :cond_a7
    :goto_a7
    invoke-static {v2, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 1644
    goto/16 :goto_26

    .line 1645
    :cond_ac
    return-object v0
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1783
    const-string v0, "intent-base"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1786
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1788
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4a

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 1789
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_4a

    .line 1790
    :cond_1a
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    .line 1791
    goto :goto_a

    .line 1793
    :cond_1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1794
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1799
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4cd5119d

    if-eq v5, v6, :cond_31

    :cond_30
    goto :goto_3a

    :cond_31
    const-string v5, "extras"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v4, 0x0

    :goto_3a
    if-nez v4, :cond_45

    .line 1801
    nop

    .line 1802
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1801
    invoke-static {v0, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1803
    goto :goto_a

    .line 1805
    :cond_45
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 1807
    :cond_4a
    return-object v0
.end method

.method private static parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;
    .registers 6
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
    const-string/jumbo v1, "uri"

    invoke-static {p0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    const-string v2, "key"

    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1815
    const-string v3, "is-bot"

    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1816
    const-string v4, "is-important"

    invoke-static {p0, v4}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    .line 1819
    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    .line 1820
    invoke-virtual {v4, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 1821
    invoke-virtual {v4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1665
    move-object/from16 v0, p0

    .line 1666
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    nop

    .line 1676
    nop

    .line 1677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1680
    const-string v3, "activity"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 1682
    const-string/jumbo v3, "title"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1683
    const-string/jumbo v3, "titleid"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 1684
    const-string/jumbo v3, "titlename"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1685
    const-string/jumbo v3, "text"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1686
    const-string/jumbo v3, "textid"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 1687
    const-string/jumbo v3, "textname"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1688
    const-string v3, "dmessage"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1689
    const-string v3, "dmessageid"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 1691
    const-string v3, "dmessagename"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1693
    const-string v3, "disabled-reason"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 1694
    const-string v4, "intent"

    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1695
    const-string/jumbo v7, "rank"

    move/from16 v19, v14

    move-object/from16 v21, v15

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v15, v14

    .line 1696
    const-string/jumbo v7, "timestamp"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v23

    .line 1697
    const-string v7, "flags"

    move/from16 v22, v15

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v7, v14

    .line 1698
    const-string v9, "icon-res"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v15, v14

    .line 1699
    const-string v9, "icon-resname"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1700
    const-string v9, "bitmap-path"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1701
    const-string v9, "locus-id"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1703
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v25, v15

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    .line 1705
    :goto_a3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move-object/from16 v31, v13

    const/4 v13, 0x1

    if-eq v15, v13, :cond_1b4

    const/4 v13, 0x3

    if-ne v15, v13, :cond_be

    .line 1706
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v14, :cond_b6

    goto :goto_be

    :cond_b6
    move/from16 v39, v11

    move-object/from16 v38, v12

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1ba

    .line 1707
    :cond_be
    :goto_be
    const/4 v13, 0x2

    if-eq v15, v13, :cond_cc

    .line 1708
    move-object/from16 v34, v4

    move/from16 v39, v11

    move-object/from16 v38, v12

    move/from16 v37, v14

    const/4 v11, 0x0

    goto/16 :goto_197

    .line 1710
    :cond_cc
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 1711
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1716
    const/16 v34, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v35

    const/16 v36, 0x0

    move/from16 v37, v14

    const-string v14, "categories"

    move-object/from16 v38, v12

    const-string/jumbo v12, "string-array"

    move/from16 v39, v11

    sparse-switch v35, :sswitch_data_226

    :cond_ea
    goto :goto_123

    :sswitch_eb
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_ea

    const/4 v11, 0x3

    goto :goto_125

    :sswitch_f3
    const-string/jumbo v11, "person"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    const/4 v11, 0x4

    goto :goto_125

    :sswitch_fe
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    const/4 v11, 0x5

    goto :goto_125

    :sswitch_106
    const-string v11, "intent-extras"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    move/from16 v11, v36

    goto :goto_125

    :sswitch_111
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    const/4 v11, 0x1

    goto :goto_125

    :sswitch_119
    const-string v11, "extras"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    const/4 v11, 0x2

    goto :goto_125

    :goto_123
    move/from16 v11, v34

    :goto_125
    if-eqz v11, :cond_1a3

    move-object/from16 v34, v4

    const/4 v4, 0x1

    if-eq v11, v4, :cond_18e

    const/4 v4, 0x2

    if-eq v11, v4, :cond_17d

    const/4 v4, 0x3

    if-eq v11, v4, :cond_17b

    const/4 v4, 0x4

    if-eq v11, v4, :cond_172

    const/4 v4, 0x5

    if-ne v11, v4, :cond_16d

    .line 1733
    const-string/jumbo v4, "name"

    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 1735
    const/4 v11, 0x0

    invoke-static {v0, v12, v11}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1737
    new-instance v12, Landroid/util/ArraySet;

    array-length v13, v4

    invoke-direct {v12, v13}, Landroid/util/ArraySet;-><init>(I)V

    .line 1738
    move/from16 v13, v36

    :goto_152
    array-length v14, v4

    if-ge v13, v14, :cond_15d

    .line 1739
    aget-object v14, v4, v13

    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1738
    add-int/lit8 v13, v13, 0x1

    goto :goto_152

    .line 1741
    :cond_15d
    move-object/from16 v26, v12

    move-object/from16 v13, v31

    move-object/from16 v4, v34

    move/from16 v14, v37

    move-object/from16 v12, v38

    move/from16 v11, v39

    goto/16 :goto_a3

    .line 1733
    :cond_16b
    const/4 v11, 0x0

    goto :goto_197

    .line 1744
    :cond_16d
    invoke-static {v15, v13}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1730
    :cond_172
    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    goto :goto_197

    .line 1728
    :cond_17b
    const/4 v11, 0x0

    goto :goto_197

    .line 1724
    :cond_17d
    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v29

    .line 1725
    move-object/from16 v13, v31

    move-object/from16 v4, v34

    move/from16 v14, v37

    move-object/from16 v12, v38

    move/from16 v11, v39

    goto/16 :goto_a3

    .line 1721
    :cond_18e
    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    nop

    .line 1705
    :goto_197
    move-object/from16 v13, v31

    move-object/from16 v4, v34

    move/from16 v14, v37

    move-object/from16 v12, v38

    move/from16 v11, v39

    goto/16 :goto_a3

    .line 1718
    :cond_1a3
    move-object/from16 v34, v4

    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v32

    .line 1719
    move-object/from16 v13, v31

    move/from16 v14, v37

    move-object/from16 v12, v38

    move/from16 v11, v39

    goto/16 :goto_a3

    .line 1705
    :cond_1b4
    move/from16 v39, v11

    move-object/from16 v38, v12

    move v4, v13

    const/4 v11, 0x0

    .line 1747
    :goto_1ba
    if-eqz v5, :cond_1c7

    .line 1749
    move-object/from16 v15, v32

    invoke-static {v5, v15}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1750
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1751
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    :cond_1c7
    if-nez v3, :cond_1ce

    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_1ce

    .line 1759
    move v3, v4

    .line 1763
    :cond_1ce
    if-eqz p3, :cond_1d3

    .line 1764
    or-int/lit16 v0, v7, 0x1000

    goto :goto_1d4

    .line 1763
    :cond_1d3
    move v0, v7

    .line 1767
    :goto_1d4
    if-nez v9, :cond_1d9

    move-object/from16 v32, v11

    goto :goto_1e0

    :cond_1d9
    new-instance v4, Landroid/content/LocusId;

    invoke-direct {v4, v9}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    move-object/from16 v32, v4

    .line 1769
    :goto_1e0
    new-instance v33, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v4, v33

    const/4 v9, 0x0

    .line 1774
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/Intent;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Landroid/content/Intent;

    .line 1777
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Person;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, [Landroid/app/Person;

    move/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v11, v39

    move-object/from16 v12, v38

    move-object/from16 v13, v31

    move/from16 v14, v19

    move/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v15, v21

    move-object/from16 v19, v26

    move/from16 v21, v1

    move-object/from16 v22, v29

    move/from16 v25, v0

    move/from16 v26, v2

    move/from16 v29, v3

    move-object/from16 v31, v32

    invoke-direct/range {v4 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;)V

    .line 1769
    return-object v33

    nop

    :sswitch_data_226
    .sparse-switch
        -0x4cd5119d -> :sswitch_119
        -0x468ec964 -> :sswitch_111
        -0x3e3f454c -> :sswitch_106
        -0x3d122a63 -> :sswitch_fe
        -0x3b1c64ab -> :sswitch_f3
        0x4d47461c -> :sswitch_eb
    .end sparse-switch
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 967
    nop

    .line 970
    nop

    .line 971
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_b
    if-ltz v0, :cond_2c

    .line 972
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 974
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 975
    if-nez v2, :cond_22

    .line 976
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 978
    :cond_22
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 983
    :cond_2c
    const/4 v0, 0x0

    if-eqz p1, :cond_9a

    .line 984
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 986
    move v4, v0

    move v5, v4

    :goto_35
    if-ge v4, v3, :cond_99

    .line 987
    nop

    .line 989
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 990
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    .line 992
    xor-int/2addr v6, v1

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 993
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 995
    nop

    .line 997
    if-eqz v8, :cond_85

    .line 998
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v9

    if-nez v9, :cond_78

    .line 999
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut with ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShortcutService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    goto :goto_95

    .line 1004
    :cond_78
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 1005
    nop

    .line 1006
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    move v8, v1

    goto :goto_86

    .line 1009
    :cond_85
    move v8, v0

    :goto_86
    if-eqz v6, :cond_8b

    if-nez v8, :cond_8b

    .line 1013
    goto :goto_95

    .line 1018
    :cond_8b
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 1020
    if-nez v6, :cond_95

    if-eqz v2, :cond_95

    .line 1022
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 986
    :cond_95
    :goto_95
    add-int/lit8 v4, v4, 0x1

    move v5, v1

    goto :goto_35

    :cond_99
    move v0, v5

    .line 1028
    :cond_9a
    if-eqz v2, :cond_bb

    .line 1034
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_a1
    if-ltz p1, :cond_b8

    .line 1035
    nop

    .line 1037
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1039
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 1034
    add-int/lit8 p1, p1, -0x1

    move v0, v1

    goto :goto_a1

    .line 1043
    :cond_b8
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 1045
    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1046
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .registers 10

    .line 1054
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1055
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 1057
    nop

    .line 1059
    nop

    .line 1060
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_14
    if-ltz v3, :cond_4e

    .line 1062
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1063
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v1, :cond_23

    .line 1064
    goto :goto_4b

    .line 1067
    :cond_23
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1070
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_2d
    if-lt v6, v1, :cond_4b

    .line 1071
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1073
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 1076
    const-string v7, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v7}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1077
    goto :goto_48

    .line 1079
    :cond_41
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 1070
    :goto_48
    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    .line 1061
    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 1083
    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

.method private removeOrphans()V
    .registers 5

    .line 315
    nop

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_2c

    .line 318
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 320
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_29

    .line 322
    :cond_1b
    if-nez v1, :cond_22

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :cond_22
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 327
    :cond_2c
    if-eqz v1, :cond_42

    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_42

    .line 329
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 332
    :cond_42
    return-void
.end method

.method private saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1490
    if-eqz p3, :cond_13

    .line 1491
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1495
    :cond_12
    return-void

    .line 1498
    :cond_13
    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    if-eqz p4, :cond_19

    goto :goto_1b

    :cond_19
    move p4, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p4, 0x1

    .line 1504
    :goto_1c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1505
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1507
    :cond_25
    const-string/jumbo v2, "shortcut"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1508
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1510
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "activity"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1512
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1513
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "titleid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1514
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "titlename"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1515
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1516
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "textid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1517
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "textname"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1518
    if-eqz p4, :cond_9c

    .line 1519
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "dmessage"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1520
    nop

    .line 1521
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v4

    int-to-long v4, v4

    .line 1520
    const-string v6, "dmessageid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1522
    nop

    .line 1523
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v4

    .line 1522
    const-string v5, "dmessagename"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1525
    :cond_9c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "disabled-reason"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1526
    nop

    .line 1527
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v4

    .line 1526
    const-string/jumbo v6, "timestamp"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1528
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    .line 1529
    if-eqz v4, :cond_c4

    .line 1530
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "locus-id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1532
    :cond_c4
    const-string v4, "flags"

    if-eqz p3, :cond_e6

    .line 1535
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, -0x80e

    .line 1539
    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v4

    .line 1543
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_e5

    .line 1544
    const-string v4, "Package version code should be available at this point."

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1547
    :cond_e5
    goto :goto_115

    .line 1550
    :cond_e6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    int-to-long v5, v0

    const-string/jumbo v0, "rank"

    invoke-static {p1, v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1552
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    int-to-long v5, v0

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1553
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v0

    int-to-long v4, v0

    const-string v0, "icon-res"

    invoke-static {p1, v0, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1554
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "icon-resname"

    invoke-static {p1, v4, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1555
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bitmap-path"

    invoke-static {p1, v4, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1558
    :goto_115
    if-eqz p4, :cond_1b3

    .line 1560
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p4

    .line 1561
    if-eqz p4, :cond_13a

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_13a

    .line 1562
    const-string v0, "categories"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1563
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-static {p4, v0, p1}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1565
    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    :cond_13a
    if-nez p3, :cond_187

    .line 1569
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p3

    .line 1570
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_187

    .line 1571
    move p4, v1

    :goto_147
    array-length v0, p3

    if-ge p4, v0, :cond_187

    .line 1572
    aget-object v0, p3, p4

    .line 1574
    const-string/jumbo v4, "person"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1576
    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1577
    invoke-virtual {v0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1578
    invoke-virtual {v0}, Landroid/app/Person;->isBot()Z

    move-result v5

    const-string v6, "is-bot"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1579
    invoke-virtual {v0}, Landroid/app/Person;->isImportant()Z

    move-result v0

    const-string v5, "is-important"

    invoke-static {p1, v5, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1580
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1571
    add-int/lit8 p4, p4, 0x1

    goto :goto_147

    .line 1584
    :cond_187
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object p3

    .line 1585
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object p4

    .line 1586
    array-length v0, p3

    .line 1587
    nop

    :goto_191
    const-string v4, "extras"

    if-ge v1, v0, :cond_1ac

    .line 1588
    const-string v5, "intent"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1589
    aget-object v6, p3, v1

    const-string v7, "intent-base"

    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1590
    aget-object v6, p4, v1

    invoke-static {p1, v4, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1591
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    .line 1594
    :cond_1ac
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    invoke-static {p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1597
    :cond_1b3
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 6
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
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_45

    .line 1117
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1118
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1119
    goto :goto_42

    .line 1122
    :cond_1e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1123
    if-nez v3, :cond_2f

    .line 1124
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v3, "null activity detected."

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1125
    goto :goto_42

    .line 1128
    :cond_2f
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1129
    if-nez v4, :cond_3f

    .line 1130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_3f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    :goto_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1135
    :cond_45
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1938
    nop

    .line 1940
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 1941
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1942
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v0, :cond_51

    .line 1943
    nop

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": shortcut "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rank="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but expected to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1944
    const-string v2, "ShortcutService.verify"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1940
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1948
    :cond_54
    return v1
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

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
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 294
    goto :goto_24

    .line 298
    :cond_1d
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 300
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    .line 304
    :goto_24
    if-eqz v1, :cond_2a

    .line 305
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 308
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 309
    return-void
.end method

.method public adjustRanks()V
    .registers 14

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1296
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1299
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_10
    const/4 v4, 0x0

    if-ltz v3, :cond_30

    .line 1300
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1301
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1302
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 1303
    invoke-virtual {v5, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1304
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1299
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1313
    :cond_30
    nop

    .line 1314
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1315
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3b
    if-ltz v5, :cond_7f

    .line 1316
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1319
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1321
    nop

    .line 1323
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1324
    move v8, v4

    move v9, v8

    :goto_4f
    if-ge v8, v7, :cond_7c

    .line 1325
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 1326
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 1328
    goto :goto_79

    .line 1331
    :cond_5e
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v11

    if-nez v11, :cond_6a

    .line 1332
    const-string v10, "Non-dynamic shortcut found."

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1333
    goto :goto_79

    .line 1335
    :cond_6a
    add-int/lit8 v11, v9, 0x1

    .line 1336
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eq v12, v9, :cond_78

    .line 1337
    invoke-virtual {v10, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1338
    invoke-virtual {v10, v9}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1324
    :cond_78
    move v9, v11

    :goto_79
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 1315
    :cond_7c
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 1342
    :cond_7f
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

    :goto_8
    if-ltz v0, :cond_18

    .line 1257
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1258
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1256
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1260
    :cond_18
    return-void
.end method

.method public deleteAllDynamicShortcuts(Z)V
    .registers 10

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 340
    nop

    .line 341
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ltz v2, :cond_39

    .line 342
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 343
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_36

    if-eqz p1, :cond_2b

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 344
    :cond_2b
    nop

    .line 346
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 347
    invoke-virtual {v6, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 348
    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    move v5, v3

    .line 341
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 351
    :cond_39
    if-eqz v5, :cond_3e

    .line 352
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 354
    :cond_3e
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;Z)Z
    .registers 9

    .line 364
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 367
    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .registers 13

    .line 392
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 395
    if-eqz p1, :cond_1e

    .line 396
    if-eqz p2, :cond_12

    .line 397
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_1e

    .line 398
    :cond_12
    if-eqz p3, :cond_1e

    .line 399
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 401
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 404
    :cond_1e
    :goto_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 12

    .line 1356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    const-string p3, "Package: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    const-string p3, "  UID: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    iget p3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1363
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    const-string p3, "  "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1367
    const-string v0, "Calls: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1369
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

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
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

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

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    nop

    .line 1393
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1394
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1395
    const-wide/16 v3, 0x0

    :goto_95
    if-ge v0, v2, :cond_dc

    .line 1396
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d9

    .line 1399
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 1400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    const-string v7, "      "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    const-string v7, "bitmap size="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 1405
    add-long/2addr v3, v5

    .line 1395
    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 1408
    :cond_dc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    const-string p2, "Total bitmap size: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1412
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1419
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 1421
    nop

    .line 1422
    nop

    .line 1423
    nop

    .line 1424
    nop

    .line 1425
    nop

    .line 1427
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1428
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1429
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    move v6, v5

    move-wide v7, v3

    move v3, v6

    move v4, v3

    :goto_17
    if-ge v2, v1, :cond_50

    .line 1430
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1432
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-eqz v10, :cond_27

    add-int/lit8 v3, v3, 0x1

    .line 1433
    :cond_27
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v10

    if-eqz v10, :cond_2f

    add-int/lit8 v4, v4, 0x1

    .line 1434
    :cond_2f
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_37

    add-int/lit8 v5, v5, 0x1

    .line 1436
    :cond_37
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4d

    .line 1437
    add-int/lit8 v6, v6, 0x1

    .line 1438
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 1429
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1442
    :cond_50
    const-string v0, "dynamic"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1443
    const-string v0, "manifest"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1444
    const-string/jumbo v0, "pinned"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1445
    const-string v0, "bitmaps"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1446
    const-string v0, "bitmapBytes"

    invoke-virtual {p1, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1450
    return-object p1
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 448
    if-eqz p1, :cond_17

    .line 449
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 450
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 453
    :cond_17
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1169
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1170
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_12
    if-ltz v2, :cond_3c

    .line 1171
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1173
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1174
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_39

    .line 1175
    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_39

    if-eqz p2, :cond_39

    .line 1176
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1170
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 1180
    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_41
    if-ltz v2, :cond_8c

    .line 1181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1182
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1183
    const/4 v6, 0x2

    if-nez v5, :cond_58

    .line 1184
    if-eq p2, v6, :cond_89

    .line 1185
    const-string v4, "Activity must not be null at this point"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1186
    goto :goto_89

    .line 1191
    :cond_58
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1192
    if-nez v4, :cond_6d

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
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_76

    if-ne p2, v6, :cond_76

    .line 1203
    goto :goto_89

    .line 1209
    :cond_76
    if-eqz p2, :cond_86

    .line 1210
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1211
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v4

    if-nez v4, :cond_86

    .line 1212
    const/4 v4, -0x1

    invoke-direct {p0, v1, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1215
    :cond_86
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1180
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .line 1219
    :cond_8c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_91
    if-ltz p1, :cond_a3

    .line 1220
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1219
    add-int/lit8 p1, p1, -0x1

    goto :goto_91

    .line 1222
    :cond_a3
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

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
    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

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
    :cond_14
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 232
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 11
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
    .registers 13
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
    if-nez p4, :cond_13

    const/4 p5, 0x0

    goto :goto_28

    .line 615
    :cond_13
    nop

    .line 614
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, p4, v1, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p5

    .line 615
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p5

    .line 617
    :goto_28
    const/4 v0, 0x0

    move v1, v0

    :goto_2a
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 618
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 623
    if-eqz p4, :cond_4b

    if-eqz p5, :cond_49

    .line 624
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4b

    :cond_49
    move v3, v0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v3, 0x1

    .line 626
    :goto_4c
    if-nez p6, :cond_57

    .line 627
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 628
    if-nez v3, :cond_57

    .line 629
    goto :goto_73

    .line 633
    :cond_57
    invoke-virtual {v2, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 638
    const/4 v4, 0x2

    if-nez p6, :cond_63

    .line 639
    if-nez v3, :cond_63

    .line 640
    invoke-virtual {v2, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 643
    :cond_63
    if-eqz p2, :cond_6b

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 644
    :cond_6b
    if-nez v3, :cond_70

    .line 645
    invoke-virtual {v2, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 647
    :cond_70
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 650
    :cond_76
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    return-object p1
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
    .registers 9

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 519
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
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 534
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_46

    .line 535
    const-string p1, "ShortcutService"

    const-string v1, "Clock rewound"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 538
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 539
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return p1

    .line 543
    :cond_46
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_50

    .line 548
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 549
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 551
    :cond_50
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return p1
.end method

.method public getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 11
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
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 664
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 665
    iget-object v4, v3, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v5, v4

    move v6, v1

    :goto_1b
    if-ge v6, v5, :cond_2e

    aget-object v7, v4, v6

    .line 666
    iget-object v7, v7, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 668
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    goto :goto_2e

    .line 665
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 663
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 674
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 675
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 679
    :cond_3d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    sget-object v2, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    const/16 v3, 0x9

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    move v3, v1

    :goto_4f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_af

    .line 685
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 686
    if-eqz v4, :cond_ac

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 687
    goto :goto_ac

    .line 689
    :cond_68
    move v5, v1

    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_ac

    .line 691
    nop

    .line 692
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShareTargetInfo;

    .line 693
    move v7, v1

    :goto_77
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_8c

    .line 694
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 695
    nop

    .line 696
    move v7, v1

    goto :goto_8d

    .line 693
    :cond_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    :cond_8c
    const/4 v7, 0x1

    .line 699
    :goto_8d
    if-eqz v7, :cond_a9

    .line 700
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    new-instance v7, Landroid/content/ComponentName;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 700
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    goto :goto_ac

    .line 689
    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 684
    :cond_ac
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 706
    :cond_af
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

    const/4 v1, 0x0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6f

    .line 724
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    sget-object v2, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    const/16 v3, 0x1b

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 727
    nop

    .line 728
    move v2, v1

    move v3, v2

    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6e

    .line 729
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 730
    if-eqz v4, :cond_6b

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 731
    goto :goto_6b

    .line 733
    :cond_3a
    move v5, v1

    :goto_3b
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6b

    .line 735
    nop

    .line 736
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShareTargetInfo;

    .line 737
    move v7, v1

    :goto_4d
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_62

    .line 738
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 739
    nop

    .line 740
    move v6, v1

    goto :goto_63

    .line 737
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_62
    const/4 v6, 0x1

    .line 743
    :goto_63
    if-eqz v6, :cond_68

    .line 744
    add-int/lit8 v3, v3, 0x1

    .line 745
    goto :goto_6b

    .line 733
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 728
    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 749
    :cond_6e
    return v3

    .line 720
    :cond_6f
    :goto_6f
    return v1
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
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_31

    .line 759
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 760
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 761
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 764
    :cond_31
    return-object v0
.end method

.method public hasNonManifestShortcuts()Z
    .registers 4

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1347
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1348
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1349
    return v1

    .line 1346
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1352
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
    .registers 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 218
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public synthetic lambda$refreshPinnedFlags$0$ShortcutPackage(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 5

    .line 482
    nop

    .line 483
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 482
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 485
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_37

    .line 488
    :cond_16
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_36

    .line 489
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 491
    if-nez v1, :cond_2f

    .line 496
    goto :goto_33

    .line 498
    :cond_2f
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 488
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 500
    :cond_36
    return-void

    .line 486
    :cond_37
    :goto_37
    return-void
.end method

.method protected onRestored(I)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 190
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 191
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
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 200
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
    .registers 14

    .line 821
    const-string v0, "ShortcutService"

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 822
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v2

    .line 826
    const/16 v4, 0xe

    :try_start_c
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 827
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v7

    .line 826
    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_162

    .line 828
    const/4 v6, 0x0

    if-nez v5, :cond_24

    .line 829
    nop

    .line 850
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 829
    return v6

    .line 832
    :cond_24
    if-nez p1, :cond_51

    if-nez p2, :cond_51

    .line 843
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    cmp-long p2, v7, v9

    if-nez p2, :cond_51

    .line 844
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v7

    iget-wide v9, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long p2, v7, v9

    if-nez p2, :cond_51

    .line 845
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result p2
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_162

    if-eqz p2, :cond_51

    .line 846
    nop

    .line 850
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 846
    return v6

    .line 850
    :cond_51
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 851
    nop

    .line 854
    nop

    .line 856
    const/4 p2, 0x0

    :try_start_57
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 857
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 856
    invoke-static {v2, v3, v4, v7}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_69} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_69} :catch_6a

    .line 860
    goto :goto_71

    .line 858
    :catch_6a
    move-exception v2

    .line 859
    const-string v3, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p2

    .line 861
    :goto_71
    if-nez v2, :cond_75

    move v3, v6

    goto :goto_79

    .line 862
    :cond_75
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 868
    :goto_79
    if-eqz p1, :cond_7e

    if-nez v3, :cond_7e

    .line 873
    return v6

    .line 881
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v3

    .line 886
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_95
    if-ltz v5, :cond_d1

    .line 887
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 888
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_a8

    .line 889
    goto :goto_ce

    .line 891
    :cond_a8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-lez v9, :cond_b5

    .line 896
    goto :goto_ce

    .line 898
    :cond_b5
    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "Restoring shortcut: %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 900
    invoke-virtual {v8, v6}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 886
    :goto_ce
    add-int/lit8 v5, v5, -0x1

    goto :goto_95

    .line 905
    :cond_d1
    if-nez p1, :cond_14b

    .line 906
    nop

    .line 908
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v7

    :goto_db
    if-ltz p1, :cond_14b

    .line 909
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 912
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 913
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_f8

    .line 915
    const-string/jumbo v4, "null activity detected."

    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_129

    .line 917
    :cond_f8
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_129

    .line 918
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 920
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 918
    const-string v8, "%s is no longer main activity. Disabling shorcut %s."

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_129

    .line 923
    goto :goto_148

    .line 929
    :cond_129
    :goto_129
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 930
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v4

    if-nez v4, :cond_141

    .line 931
    if-nez p2, :cond_13e

    .line 932
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 933
    if-nez p2, :cond_13e

    .line 934
    goto :goto_14b

    .line 941
    :cond_13e
    invoke-virtual {v3, p2}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 943
    :cond_141
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 908
    :cond_148
    :goto_148
    add-int/lit8 p1, p1, -0x1

    goto :goto_db

    .line 949
    :cond_14b
    :goto_14b
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    .line 951
    if-eqz v2, :cond_153

    .line 952
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 955
    :cond_153
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 958
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 959
    return v7

    .line 850
    :catchall_162
    move-exception p1

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
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
    .registers 9

    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1229
    nop

    .line 1231
    nop

    .line 1232
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ltz v1, :cond_38

    .line 1233
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1235
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1236
    nop

    .line 1238
    if-nez v4, :cond_2a

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1240
    if-nez v4, :cond_2a

    .line 1241
    goto :goto_39

    .line 1245
    :cond_2a
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1246
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    move v3, v2

    .line 1232
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_38
    move v2, v3

    .line 1249
    :goto_39
    if-eqz v2, :cond_46

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1252
    :cond_46
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 11
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
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1459
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

    const-string v6, "last-reset"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1470
    const/4 v4, 0x0

    move v5, v4

    :goto_42
    if-ge v5, v0, :cond_5a

    .line 1471
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v7

    .line 1471
    invoke-direct {p0, p1, v6, p2, v7}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1470
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 1475
    :cond_5a
    if-nez p2, :cond_6d

    .line 1476
    nop

    :goto_5d
    if-ge v4, v1, :cond_6d

    .line 1477
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1476
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1481
    :cond_6d
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    return-void
.end method

.method public tryApiCall(Z)Z
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    iget v1, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt p1, v1, :cond_e

    .line 565
    const/4 p1, 0x0

    return p1

    .line 567
    :cond_e
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 568
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 569
    return v1
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 457
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 461
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

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
    nop

    .line 1840
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1842
    nop

    .line 1843
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1846
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    const-string v6, "Package "

    const-string v7, "ShortcutService.verify"

    if-ltz v2, :cond_8c

    .line 1847
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1848
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v10, v10, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v10

    if-le v9, v10, :cond_6a

    .line 1849
    nop

    .line 1850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shortcuts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1855
    :cond_6a
    sget-object v6, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;

    invoke-static {v8, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1858
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1859
    sget-object v7, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1861
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1862
    sget-object v8, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1864
    invoke-direct {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1865
    invoke-direct {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1846
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 1869
    :cond_8c
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_93
    if-ltz v1, :cond_2ff

    .line 1870
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1871
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    const-string v9, ": shortcut "

    if-nez v8, :cond_d8

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_d8

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_d8

    .line 1872
    nop

    .line 1873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not manifest, dynamic or pinned."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1876
    :cond_d8
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_10b

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 1877
    nop

    .line 1878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is both dynamic and manifest at the same time."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1881
    :cond_10b
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_13e

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_13e

    .line 1882
    nop

    .line 1883
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has null activity, but not floating."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1886
    :cond_13e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_14a

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_177

    :cond_14a
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_177

    .line 1887
    nop

    .line 1888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not floating, but is disabled."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1891
    :cond_177
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_1b1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_1b1

    .line 1892
    nop

    .line 1893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is floating, but has rank="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1893
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1896
    :cond_1b1
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_1de

    .line 1897
    nop

    .line 1898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " still has an icon"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1901
    :cond_1de
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v8

    if-eqz v8, :cond_211

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-nez v8, :cond_211

    .line 1902
    nop

    .line 1903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has adaptive bitmap but was not saved to a file."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1906
    :cond_211
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_244

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_244

    .line 1907
    nop

    .line 1908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has both resource and bitmap icons"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1911
    :cond_244
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    .line 1912
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v10

    if-nez v10, :cond_250

    move v10, v3

    goto :goto_251

    :cond_250
    move v10, v4

    :goto_251
    if-eq v8, v10, :cond_28d

    .line 1913
    nop

    .line 1914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " vs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1914
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1918
    :cond_28d
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v8

    const/16 v10, 0x64

    if-ne v8, v10, :cond_2ca

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_2ca

    .line 1921
    nop

    .line 1922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1925
    :cond_2ca
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_2fb

    .line 1926
    nop

    .line 1927
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has a dummy target activity"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1869
    :cond_2fb
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_93

    .line 1932
    :cond_2ff
    if-nez v5, :cond_302

    .line 1935
    return-void

    .line 1933
    :cond_302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "See logcat for errors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
