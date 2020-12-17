.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PreferencesHelper$Delegate;,
        Lcom/android/server/notification/PreferencesHelper$PackagePreferences;,
        Lcom/android/server/notification/PreferencesHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubble"

.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ENABLED:Ljava/lang/String; = "enabled"

.field public static final ATT_HEADS_UP:Ljava/lang/String; = "headsup"

.field private static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_MAX_PRIORITY:Ljava/lang/String; = "maxPriority"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_REMIND:Ljava/lang/String; = "remind"

.field public static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_USER_FILTER:Ljava/lang/String; = "userFilter"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEBUG_BADGE:Z = true

.field private static final DEFAULT_ALLOW_BUBBLE:Z = true

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_HEADS_UP_VISIBILITY:I = -0x1

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field private static final DEFAULT_MAX_PRIORITY:Z = false

.field private static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_REMIND_ENABLE:Z = true

.field private static final DEFAULT_SHOW_BADGE:I = -0x1

.field public static final DEFAULT_USER_FILTER:I = 0x0

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field private static final UNKNOWN_UID:I = -0x2710

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private mAreChannelsBypassingDnd:Z

.field private mAuthorityWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgingEnabled:Landroid/util/SparseIntArray;

.field private mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field private final mConfigCloud:Lcom/android/server/notification/ConfigCloud;

.field private final mContext:Landroid/content/Context;

.field private mHideSilentStatusBarIcons:Z

.field private final mPackagePreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRankingController:Lcom/flyme/server/notfication/RankingController;

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pm"  # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"  # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 2337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAuthorityWhiteList:Ljava/util/ArrayList;

    .line 155
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 156
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 157
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 158
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 165
    new-instance v0, Lcom/android/server/notification/ConfigCloud;

    invoke-direct {v0, p1}, Lcom/android/server/notification/ConfigCloud;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    .line 166
    new-instance v0, Lcom/android/server/notification/RankingControllerImpl;

    move-object v1, p3

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/RankingControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa030023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "whiteList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAuthorityWhiteList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 6
    .param p1, "pkgPref"  # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "channel"  # Landroid/app/NotificationChannel;

    .line 1375
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1376
    return v1

    .line 1380
    :cond_10
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    .line 1384
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 1381
    :cond_1f
    :goto_1f
    return v1
.end method

.method private createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 7
    .param p1, "r"  # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 403
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x10401ea

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 404
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 406
    return v3

    .line 409
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 411
    return v3

    .line 416
    :cond_28
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v1, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 420
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3c

    move v3, v4

    :cond_3c
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 421
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 422
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_4e

    .line 423
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 425
    :cond_4e
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_55

    .line 426
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 428
    :cond_55
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v3, :cond_5c

    .line 429
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 431
    :cond_5c
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return v4
.end method

.method private deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 385
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 387
    return v2

    .line 390
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 392
    return v2

    .line 396
    :cond_14
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method private static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 14
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    .line 1634
    .local p4, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1636
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_9a

    .line 1637
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1638
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1639
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1641
    .local v3, "fToken":J
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1642
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1643
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1644
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1645
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1646
    const-wide v5, 0x10800000006L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1648
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1649
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1650
    .end local v6  # "channel":Landroid/app/NotificationChannel;
    goto :goto_5f

    .line 1651
    :cond_74
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1652
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1653
    .end local v6  # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_7e

    .line 1655
    :cond_93
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1636
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "fToken":J
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1658
    .end local v1  # "i":I
    :cond_9a
    return-void
.end method

.method private static dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 11
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    .line 1578
    .local p3, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1579
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_100

    .line 1580
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1581
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1582
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1583
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_30

    const-string v3, "UNKNOWN_UID"

    goto :goto_36

    :cond_30
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_36
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1587
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1588
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_52

    .line 1589
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1590
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    :cond_52
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v3, :cond_64

    .line 1593
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1594
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    :cond_64
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v3, v4, :cond_76

    .line 1597
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1598
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    :cond_76
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_85

    .line 1601
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1604
    :cond_85
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v3, :cond_93

    .line 1605
    const-string v3, " defaultAppLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1608
    :cond_93
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v3, :cond_a1

    .line 1609
    const-string v3, " oemLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1612
    :cond_a1
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b3

    .line 1613
    const-string v3, " futureLockedChannels="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1616
    :cond_b3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1617
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1618
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1619
    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v6, "    "

    invoke-virtual {v4, p0, v6, v5}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1620
    .end local v4  # "channel":Landroid/app/NotificationChannel;
    goto :goto_c0

    .line 1621
    :cond_d7
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1622
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1623
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1626
    .end local v4  # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_e1

    .line 1579
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_fc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1629
    .end local v1  # "i":I
    :cond_100
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "groupId"  # Ljava/lang/String;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 1940
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1943
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1944
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1948
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1940
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "channel"  # Landroid/app/NotificationChannel;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 1924
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1927
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1928
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1932
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1929
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1936
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1933
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1924
    return-object v0
.end method

.method private getDefaultHeadsUpVisibility(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2116
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v1, "headsup"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2117
    .local v0, "visibility":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_10

    if-gez v0, :cond_f

    goto :goto_10

    .line 2120
    :cond_f
    return v0

    .line 2118
    :cond_10
    :goto_10
    const/4 v1, 0x0

    return v1
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 14
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 322
    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 323
    .local v0, "isCTS":Z
    nop

    .line 324
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, -0x1

    :goto_e
    move v8, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 323
    const/16 v5, -0x3e8

    const/4 v6, 0x0

    const/16 v7, -0x3e8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 15
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "importance"  # I
    .param p4, "priority"  # I
    .param p5, "visibility"  # I
    .param p6, "showBadge"  # I
    .param p7, "allowBubble"  # Z
    .param p8, "userFilter"  # I

    .line 336
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "key":Ljava/lang/String;
    const/16 v1, -0x2710

    if-ne p2, v1, :cond_11

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_19

    .line 339
    :cond_11
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_19
    nop

    .line 340
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_5d

    .line 341
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$1;)V

    move-object v2, v3

    .line 342
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 343
    iput p2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 344
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 345
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 346
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 347
    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 348
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 351
    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    .line 355
    :try_start_33
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_36} :catch_37

    .line 358
    goto :goto_4e

    .line 356
    :catch_37
    move-exception v3

    .line 357
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationPrefHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v3  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4e
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v3, v1, :cond_58

    .line 361
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 363
    :cond_58
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_5d
    :goto_5d
    return-object v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1791
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1792
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1793
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 1794
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1795
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v5, 0x0

    .line 1796
    .local v5, "channelCount":I
    move v6, v2

    .local v6, "j":I
    :goto_1c
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_37

    .line 1797
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_34

    .line 1798
    add-int/lit8 v5, v5, 0x1

    .line 1796
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1801
    .end local v6  # "j":I
    :cond_37
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    nop

    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v5  # "channelCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1803
    .end local v3  # "i":I
    :cond_44
    monitor-exit v1

    .line 1804
    return-object v0

    .line 1803
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v2
.end method

.method private getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 317
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object v1
.end method

.method public static isSystemApp(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "userId"  # I

    .line 2291
    const-string v0, ",userId="

    const-string v1, "Unknown package "

    const-string v2, "NotificationPrefHelper"

    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2292
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_2a

    .line 2293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    return v3

    .line 2296
    :cond_2a
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_3d

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_3d

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_38} :catch_3f

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3e

    :cond_3d
    move v3, v6

    :cond_3e
    return v3

    .line 2297
    .end local v4  # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_3f
    move-exception v4

    .line 2298
    .local v4, "re":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    .end local v4  # "re":Landroid/os/RemoteException;
    return v3
.end method

.method public static isSystemOrMzApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2286
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "uid"  # I

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 7
    .param p1, "r"  # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 371
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 372
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 374
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_16

    .line 376
    return v3

    .line 380
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private syncChannelsBypassingDnd(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1334
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1337
    return-void
.end method

.method private updateChannelsBypassingDnd(I)V
    .registers 9
    .param p1, "userId"  # I

    .line 1345
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1347
    .local v1, "numPackagePreferences":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_53

    .line 1348
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1351
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_50

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_21

    .line 1352
    goto :goto_50

    .line 1355
    :cond_21
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1356
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1357
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez v4, :cond_4d

    .line 1358
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1359
    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1361
    :cond_4d
    monitor-exit v0

    return-void

    .line 1363
    .end local v5  # "channel":Landroid/app/NotificationChannel;
    :cond_4f
    goto :goto_2b

    .line 1347
    .end local v3  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1365
    .end local v1  # "numPackagePreferences":I
    .end local v2  # "i":I
    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_5f

    .line 1367
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_5e

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1369
    invoke-virtual {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1371
    :cond_5e
    return-void

    .line 1365
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private updateConfig()V
    .registers 2

    .line 2021
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2022
    return-void
.end method


# virtual methods
.method public addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 2180
    :try_start_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_d

    .line 2181
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnClick(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 2186
    :cond_d
    goto :goto_1a

    .line 2183
    :catchall_e
    move-exception v0

    .line 2184
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2185
    const-string v1, "NotificationPrefHelper"

    const-string/jumbo v2, "notificationOnClick:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2187
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_1a
    return-void
.end method

.method public addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 2202
    :try_start_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_d

    .line 2203
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnCanceledByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 2208
    :cond_d
    goto :goto_1a

    .line 2205
    :catchall_e
    move-exception v0

    .line 2206
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2207
    const-string v1, "NotificationPrefHelper"

    const-string/jumbo v2, "notificationOnClick:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_1a
    return-void
.end method

.method public addPackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 2168
    :try_start_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_d

    .line 2169
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->addNotification(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 2174
    :cond_d
    goto :goto_19

    .line 2171
    :catchall_e
    move-exception v0

    .line 2172
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2173
    const-string v1, "NotificationPrefHelper"

    const-string v2, "addNotification:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2175
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_19
    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 573
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 574
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    monitor-exit v0

    return v1

    .line 575
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 1397
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"  # Landroid/os/UserHandle;

    .line 2007
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2008
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 2009
    return v1

    .line 2011
    :cond_9
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_23

    .line 2012
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 2013
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2012
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2017
    :cond_23
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    move v1, v3

    :cond_2d
    return v1
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"  # Landroid/os/UserHandle;

    .line 1972
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1973
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1974
    return v1

    .line 1976
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_27

    .line 1977
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 1978
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_24

    move v1, v3

    .line 1977
    :cond_24
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1982
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 608
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ConfigCloud;->isPackageCovered(Ljava/lang/String;)Z

    move-result v1

    .line 613
    .local v1, "covered":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    .line 614
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string/jumbo v5, "show_badge"

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_19

    move v2, v3

    .local v2, "showBadge":Z
    :cond_19
    goto :goto_48

    .line 616
    .end local v2  # "showBadge":Z
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v4

    .line 617
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v5, -0x1

    .line 618
    .local v5, "config":I
    const/4 v6, -0x1

    if-eqz v4, :cond_34

    .line 619
    iget v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    if-eq v7, v6, :cond_2a

    .line 620
    iget v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    move v5, v7

    goto :goto_34

    .line 622
    :cond_2a
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string/jumbo v8, "show_badge"

    invoke-virtual {v7, p1, v8, v6}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 625
    :cond_34
    :goto_34
    if-ne v5, v6, :cond_41

    .line 626
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v2, p1, v6}, Lcom/android/server/notification/PreferencesHelper;->isSystemOrMzApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .restart local v2  # "showBadge":Z
    goto :goto_44

    .line 628
    .end local v2  # "showBadge":Z
    :cond_41
    if-ne v5, v3, :cond_44

    move v2, v3

    .line 631
    .restart local v2  # "showBadge":Z
    :cond_44
    :goto_44
    if-eqz v2, :cond_48

    iput v3, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 633
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v5  # "config":I
    :cond_48
    :goto_48
    monitor-exit v0

    return v2

    .line 635
    .end local v1  # "covered":Z
    .end local v2  # "showBadge":Z
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public clearData(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1907
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1908
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1909
    .local v1, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_2b

    .line 1910
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1911
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 1912
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1913
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1914
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 1915
    const/16 v3, -0x3e8

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1916
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1917
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1918
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 1920
    .end local v1  # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2b
    monitor-exit v0

    .line 1921
    return-void

    .line 1920
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .registers 3
    .param p1, "channel"  # Landroid/app/NotificationChannel;

    .line 862
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 863
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .registers 15
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channel"  # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"  # Z
    .param p5, "hasDndAccess"  # Z

    .line 713
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "needsPolicyFileChange":Z
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 719
    :try_start_1e
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 720
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v3, :cond_24c

    .line 723
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_3f

    .line 724
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "needsPolicyFileChange":Z
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "channel":Landroid/app/NotificationChannel;
    .end local p4  # "fromTargetApp":Z
    .end local p5  # "hasDndAccess":Z
    throw v1

    .line 726
    .restart local v0  # "needsPolicyFileChange":Z
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "channel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromTargetApp":Z
    .restart local p5  # "hasDndAccess":Z
    :cond_3f
    :goto_3f
    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_244

    .line 729
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 731
    .local v4, "existing":Landroid/app/NotificationChannel;
    const/4 v5, 0x0

    if-eqz v4, :cond_16e

    if-eqz p4, :cond_16e

    .line 732
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 733
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 734
    const/4 v0, 0x1

    .line 737
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 741
    :cond_72
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 742
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 743
    const/4 v0, 0x1

    .line 745
    :cond_94
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 746
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x1

    .line 749
    :cond_aa
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v5

    if-eq v1, v5, :cond_bc

    .line 750
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 751
    const/4 v0, 0x1

    .line 753
    :cond_bc
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d0

    .line 754
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x1

    .line 760
    :cond_d0
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 761
    .local v1, "previousExistingImportance":I
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    if-nez v5, :cond_ec

    .line 762
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-ge v5, v6, :cond_ec

    .line 763
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 764
    const/4 v0, 0x1

    .line 769
    :cond_ec
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    if-nez v5, :cond_115

    if-eqz p5, :cond_115

    .line 770
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    .line 771
    .local v5, "bypassDnd":Z
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eq v5, v6, :cond_115

    .line 772
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 773
    const/4 v0, 0x1

    .line 775
    iget-boolean v6, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v5, v6, :cond_10c

    .line 776
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-eq v1, v6, :cond_115

    .line 777
    :cond_10c
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 784
    .end local v5  # "bypassDnd":Z
    :cond_115
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/server/notification/PreferencesHelper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v5

    .line 785
    .local v5, "isSystem":Z
    const-string v6, "NotificationPrefHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSystem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v5, :cond_169

    .line 788
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_157

    .line 789
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_169

    .line 790
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 791
    const/4 v0, 0x1

    goto :goto_169

    .line 793
    :cond_157
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_169

    .line 794
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 795
    const/4 v0, 0x1

    .line 800
    :cond_169
    :goto_169
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 801
    monitor-exit v2

    return v0

    .line 804
    .end local v1  # "previousExistingImportance":I
    .end local v5  # "isSystem":Z
    :cond_16e
    const/4 v0, 0x1

    .line 806
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-ltz v6, :cond_23c

    .line 807
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_23c

    .line 812
    if-eqz p4, :cond_18b

    if-nez p5, :cond_18b

    .line 813
    iget v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_187

    move v6, v1

    goto :goto_188

    :cond_187
    move v6, v5

    :goto_188
    invoke-virtual {p3, v6}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 815
    :cond_18b
    if-eqz p4, :cond_192

    .line 816
    iget v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p3, v6}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 818
    :cond_192
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 819
    iget-boolean v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p3, v6}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 820
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v6

    if-nez v6, :cond_1af

    .line 821
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1af

    .line 822
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 825
    :cond_1af
    iget-boolean v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v6}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 826
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v6

    if-ne v6, v1, :cond_1bf

    .line 827
    const/16 v6, -0x3e8

    invoke-virtual {p3, v6}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 837
    :cond_1bf
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result v6

    .line 838
    .local v6, "pkgCanShowBadge":Z
    if-eqz v6, :cond_1c6

    move v5, v1

    :cond_1c6
    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 840
    const-string v5, "NotificationPrefHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createNotificationChannel: redP, pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",channelShowBadge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",fromTargetApp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",hasDndAccess="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",pkgCanShowBadge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",r.showBadge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 840
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    iget-boolean v7, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v5, v7, :cond_22f

    .line 852
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 854
    :cond_22f
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 856
    .end local v3  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4  # "existing":Landroid/app/NotificationChannel;
    .end local v6  # "pkgCanShowBadge":Z
    monitor-exit v2

    .line 858
    return v0

    .line 808
    .restart local v3  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v4  # "existing":Landroid/app/NotificationChannel;
    :cond_23c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid importance level"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "needsPolicyFileChange":Z
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "channel":Landroid/app/NotificationChannel;
    .end local p4  # "fromTargetApp":Z
    .end local p5  # "hasDndAccess":Z
    throw v1

    .line 727
    .end local v4  # "existing":Landroid/app/NotificationChannel;
    .restart local v0  # "needsPolicyFileChange":Z
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "channel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromTargetApp":Z
    .restart local p5  # "hasDndAccess":Z
    :cond_244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Reserved id"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "needsPolicyFileChange":Z
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "channel":Landroid/app/NotificationChannel;
    .end local p4  # "fromTargetApp":Z
    .end local p5  # "hasDndAccess":Z
    throw v1

    .line 721
    .restart local v0  # "needsPolicyFileChange":Z
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "channel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromTargetApp":Z
    .restart local p5  # "hasDndAccess":Z
    :cond_24c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid package"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "needsPolicyFileChange":Z
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "channel":Landroid/app/NotificationChannel;
    .end local p4  # "fromTargetApp":Z
    .end local p5  # "hasDndAccess":Z
    throw v1

    .line 856
    .end local v3  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v0  # "needsPolicyFileChange":Z
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "channel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromTargetApp":Z
    .restart local p5  # "hasDndAccess":Z
    :catchall_254
    move-exception v1

    monitor-exit v2
    :try_end_256
    .catchall {:try_start_1e .. :try_end_256} :catchall_254

    throw v1
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "group"  # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"  # Z

    .line 676
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 681
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 682
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_87

    .line 685
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 686
    .local v3, "oldGroup":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 688
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 690
    :cond_44
    if-eqz v3, :cond_7b

    .line 691
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 694
    if-eqz p4, :cond_65

    .line 695
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 696
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 697
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_7b

    .line 700
    :cond_65
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_7b

    .line 701
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    .line 702
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 706
    :cond_7b
    :goto_7b
    iget-object v1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    nop

    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "oldGroup":Landroid/app/NotificationChannelGroup;
    monitor-exit v0

    .line 708
    return-void

    .line 683
    .restart local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "group":Landroid/app/NotificationChannelGroup;
    .end local p4  # "fromTargetApp":Z
    throw v1

    .line 707
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "group":Landroid/app/NotificationChannelGroup;
    .restart local p4  # "fromTargetApp":Z
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_21 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelId"  # Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 951
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_b

    .line 952
    monitor-exit v0

    return-void

    .line 954
    :cond_b
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 955
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_37

    .line 956
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 957
    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 958
    .local v3, "lm":Landroid/metrics/LogMaker;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 959
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 961
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v4, :cond_37

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 962
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 965
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2  # "channel":Landroid/app/NotificationChannel;
    .end local v3  # "lm":Landroid/metrics/LogMaker;
    :cond_37
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "groupId"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1156
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1157
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_41

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_41

    .line 1161
    :cond_15
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1164
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_3f

    .line 1165
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1166
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1167
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1168
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    .end local v5  # "nc":Landroid/app/NotificationChannel;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1171
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_3f
    monitor-exit v1

    .line 1172
    return-object v0

    .line 1158
    .restart local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_41
    :goto_41
    monitor-exit v1

    return-object v0

    .line 1171
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1567
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1568
    const-wide v1, 0x20b00000002L

    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1570
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_19

    .line 1571
    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1573
    return-void

    .line 1570
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1555
    :try_start_11
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1556
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_27

    .line 1557
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1561
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1, p2, p3}, Lcom/flyme/server/notfication/RankingController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1563
    return-void

    .line 1556
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1728
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1729
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1730
    .local v1, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1731
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1732
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1733
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_39

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1734
    :cond_39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1736
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_3e
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1737
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 1740
    goto :goto_4f

    .line 1738
    :catch_4b
    move-exception v7

    .line 1739
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 1741
    .end local v7  # "e":Lorg/json/JSONException;
    :goto_4f
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1743
    .end local v3  # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4  # "userId":I
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "banJson":Lorg/json/JSONObject;
    :cond_52
    goto :goto_11

    .line 1744
    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1772
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1773
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1774
    .local v1, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1775
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1776
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1777
    :cond_2b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1779
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_30
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1780
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 1783
    goto :goto_44

    .line 1781
    :catch_40
    move-exception v6

    .line 1782
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1784
    .end local v6  # "e":Lorg/json/JSONException;
    :goto_44
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1786
    .end local v3  # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "channelCountJson":Lorg/json/JSONObject;
    :cond_47
    goto :goto_11

    .line 1787
    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 14
    .param p1, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1661
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1662
    .local v0, "ranking":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1664
    .local v1, "PackagePreferencess":Lorg/json/JSONArray;
    :try_start_a
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_17

    .line 1667
    goto :goto_18

    .line 1665
    :catch_17
    move-exception v2

    .line 1668
    :goto_18
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1669
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1670
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v3, :cond_ee

    .line 1671
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1672
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p1, :cond_36

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 1673
    :cond_36
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_f7

    .line 1675
    .local v6, "PackagePreferences":Lorg/json/JSONObject;
    :try_start_3b
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1676
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1677
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_61

    .line 1678
    const-string/jumbo v7, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1679
    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1678
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1682
    :cond_61
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_71

    .line 1683
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1684
    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1683
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1686
    :cond_71
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v7, v8, :cond_81

    .line 1687
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1688
    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    .line 1687
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1690
    :cond_81
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_92

    .line 1691
    const-string/jumbo v7, "showBadge"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1693
    :cond_92
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1694
    .local v7, "channels":Lorg/json/JSONArray;
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1695
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1696
    nop

    .end local v9  # "channel":Landroid/app/NotificationChannel;
    goto :goto_a1

    .line 1697
    :cond_b6
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1699
    .local v8, "groups":Lorg/json/JSONArray;
    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ca
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_df

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 1700
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1701
    nop

    .end local v10  # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_ca

    .line 1702
    :cond_df
    const-string v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_e4} :catch_e6
    .catchall {:try_start_3b .. :try_end_e4} :catchall_f7

    .line 1705
    nop

    .end local v7  # "channels":Lorg/json/JSONArray;
    .end local v8  # "groups":Lorg/json/JSONArray;
    goto :goto_e7

    .line 1703
    :catch_e6
    move-exception v7

    .line 1706
    :goto_e7
    :try_start_e7
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1670
    .end local v5  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6  # "PackagePreferences":Lorg/json/JSONObject;
    :cond_ea
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 1709
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_f7

    .line 1711
    :try_start_ef
    const-string v2, "PackagePreferencess"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f4
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_f4} :catch_f5

    .line 1714
    goto :goto_f6

    .line 1712
    :catch_f5
    move-exception v2

    .line 1715
    :goto_f6
    return-object v0

    .line 1709
    :catchall_f7
    move-exception v3

    :try_start_f8
    monitor-exit v2
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw v3
.end method

.method public forceAuthorityManagement(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2268
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2269
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_4e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4e

    .line 2270
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "flyme.notification.AuthorityManagement"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2271
    .local v2, "string":Ljava/lang/String;
    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceOpenAuthorityManagement -> packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v3, "force_open"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2273
    const/4 v0, 0x1

    return v0

    .line 2274
    :cond_43
    const-string v3, "force_close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4f

    if-eqz v3, :cond_4d

    .line 2275
    const/4 v0, -0x1

    return v0

    .line 2277
    :cond_4d
    return v0

    .line 2281
    .end local v1  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2  # "string":Ljava/lang/String;
    :cond_4e
    goto :goto_53

    .line 2279
    :catch_4f
    move-exception v1

    .line 2280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2282
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_53
    return v0
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 579
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return v1

    .line 581
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 10
    .param p1, "userId"  # I

    .line 1306
    const/4 v0, 0x0

    .line 1307
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1308
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1309
    .local v2, "numPackagePreferences":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_4b

    .line 1310
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1313
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_48

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_22

    .line 1314
    goto :goto_48

    .line 1317
    :cond_22
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1318
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1319
    add-int/lit8 v0, v0, 0x1

    .line 1320
    goto :goto_48

    .line 1322
    .end local v6  # "channel":Landroid/app/NotificationChannel;
    :cond_47
    goto :goto_2c

    .line 1309
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1324
    .end local v2  # "numPackagePreferences":I
    .end local v3  # "i":I
    :cond_4b
    monitor-exit v1

    .line 1325
    return v0

    .line 1324
    :catchall_4d
    move-exception v2

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public getBlockedAppCount(I)I
    .registers 8
    .param p1, "userId"  # I

    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1289
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1290
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_26

    .line 1291
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1292
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_23

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_23

    .line 1294
    add-int/lit8 v0, v0, 0x1

    .line 1290
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1297
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_26
    monitor-exit v1

    .line 1298
    return v0

    .line 1297
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1268
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, "blockedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1271
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1272
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_f

    .line 1273
    monitor-exit v1

    return v0

    .line 1275
    :cond_f
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1276
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_31

    .line 1277
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1278
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_2e

    .line 1279
    add-int/lit8 v0, v0, 0x1

    .line 1276
    .end local v5  # "nc":Landroid/app/NotificationChannel;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1282
    .end local v4  # "i":I
    :cond_31
    monitor-exit v1

    return v0

    .line 1283
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "N":I
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1249
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "deletedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1252
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1253
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_f

    .line 1254
    monitor-exit v1

    return v0

    .line 1256
    :cond_f
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1257
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_2b

    .line 1258
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1259
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1260
    add-int/lit8 v0, v0, 0x1

    .line 1257
    .end local v5  # "nc":Landroid/app/NotificationChannel;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1263
    .end local v4  # "i":I
    :cond_2b
    monitor-exit v1

    return v0

    .line 1264
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "N":I
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public getImportance(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 589
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 590
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0

    return v1

    .line 591
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 600
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 601
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 602
    .local v1, "userLockedFields":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    monitor-exit v0

    return v2

    .line 603
    .end local v1  # "userLockedFields":I
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getMaxPriority(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2099
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2100
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelId"  # Ljava/lang/String;
    .param p4, "includeDeleted"  # Z

    .line 930
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 932
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 933
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 934
    monitor-exit v0

    return-object v2

    .line 936
    :cond_f
    if-nez p3, :cond_15

    .line 937
    const-string/jumbo v3, "miscellaneous"

    move-object p3, v3

    .line 939
    :cond_15
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 940
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-eqz v3, :cond_29

    if-nez p4, :cond_27

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_29

    .line 941
    :cond_27
    monitor-exit v0

    return-object v3

    .line 943
    :cond_29
    monitor-exit v0

    return-object v2

    .line 944
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "nc":Landroid/app/NotificationChannel;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 7
    .param p1, "groupId"  # Ljava/lang/String;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 1097
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1099
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1100
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_f

    .line 1101
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1103
    :cond_f
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object v2

    .line 1104
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "groupId"  # Ljava/lang/String;
    .param p4, "includeDeleted"  # Z

    .line 1074
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1076
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1077
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_56

    if-eqz p3, :cond_56

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_56

    .line 1080
    :cond_17
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 1081
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1082
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1083
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    if-ge v4, v3, :cond_54

    .line 1084
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1085
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_44

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_51

    .line 1086
    :cond_44
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1087
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1083
    .end local v5  # "nc":Landroid/app/NotificationChannel;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1091
    .end local v4  # "i":I
    :cond_54
    monitor-exit v0

    return-object v2

    .line 1078
    .end local v2  # "group":Landroid/app/NotificationChannelGroup;
    .end local v3  # "N":I
    :cond_56
    :goto_56
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1092
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 18
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "includeDeleted"  # Z
    .param p4, "includeNonGrouped"  # Z
    .param p5, "includeEmpty"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1110
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 1112
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1113
    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 1114
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v0, :cond_19

    .line 1115
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1117
    :cond_19
    new-instance v4, Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1118
    .local v4, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1119
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v6, :cond_80

    .line 1120
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 1121
    .local v8, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_38

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_7d

    .line 1122
    :cond_38
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7a

    .line 1123
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7d

    .line 1124
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1125
    .local v9, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v9, :cond_76

    .line 1126
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v10

    move-object v9, v10

    .line 1127
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1128
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_76
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1132
    .end local v9  # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_7d

    .line 1134
    :cond_7a
    invoke-virtual {v4, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1119
    .end local v8  # "nc":Landroid/app/NotificationChannel;
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 1138
    .end local v7  # "i":I
    :cond_80
    if-eqz p4, :cond_8f

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8f

    .line 1139
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :cond_8f
    if-eqz p5, :cond_b9

    .line 1142
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 1143
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 1144
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .end local v7  # "group":Landroid/app/NotificationChannelGroup;
    :cond_b8
    goto :goto_9b

    .line 1148
    :cond_b9
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    return-object v5

    .line 1149
    .end local v0  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4  # "nonGrouped":Landroid/app/NotificationChannelGroup;
    .end local v6  # "N":I
    :catchall_c9
    move-exception v0

    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_d .. :try_end_cb} :catchall_c9

    throw v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1180
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1181
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_10

    .line 1182
    monitor-exit v1

    return-object v0

    .line 1184
    :cond_10
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1185
    nop

    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1

    .line 1186
    return-object v0

    .line 1185
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "includeDeleted"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1192
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1195
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1196
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_17

    .line 1197
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1199
    :cond_17
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1200
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_36

    .line 1201
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1202
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_30

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_33

    .line 1203
    :cond_30
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    .end local v5  # "nc":Landroid/app/NotificationChannel;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1206
    .end local v4  # "i":I
    :cond_36
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1207
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "N":I
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1217
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 1218
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1217
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1220
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_40

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v3, :cond_40

    .line 1221
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1222
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1223
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v4  # "channel":Landroid/app/NotificationChannel;
    :cond_3f
    goto :goto_24

    .line 1227
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_47

    .line 1228
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1227
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "sourceUid"  # I

    .line 1442
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1443
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1445
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-eqz v1, :cond_24

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v3, :cond_f

    goto :goto_24

    .line 1448
    :cond_f
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v3, :cond_1c

    goto :goto_22

    .line 1451
    :cond_1c
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1449
    :cond_22
    :goto_22
    monitor-exit v0

    return-object v2

    .line 1446
    :cond_24
    :goto_24
    monitor-exit v0

    return-object v2

    .line 1452
    .end local v1  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1749
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1750
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1751
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2b

    .line 1752
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1753
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_28

    .line 1754
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1758
    .end local v3  # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1759
    .end local v1  # "N":I
    .end local v2  # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 2214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 2215
    :catchall_7
    move-exception v0

    .line 2216
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2217
    const-string v1, "NotificationPrefHelper"

    const-string v2, "getPackageCategoryScore:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    .end local v0  # "throwable":Ljava/lang/Throwable;
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    return v0
.end method

.method public getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/String;

    .line 2196
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1, p2}, Lcom/flyme/server/notfication/RankingController;->getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2125
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConfigCloud;->isPackageCovered(Ljava/lang/String;)Z

    move-result v0

    .line 2126
    .local v0, "covered":Z
    const/4 v1, -0x1

    .line 2127
    .local v1, "visibility":I
    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_1c

    .line 2128
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v5, "headsup"

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2129
    if-gt v1, v2, :cond_1a

    if-gez v1, :cond_18

    goto :goto_1a

    :cond_18
    move v4, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v4, v3

    :goto_1b
    move v1, v4

    .line 2131
    :cond_1c
    if-ne v1, v3, :cond_39

    .line 2132
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2133
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v3, :cond_2f

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    move v1, v4

    .line 2134
    if-gt v1, v2, :cond_35

    if-gez v1, :cond_39

    .line 2135
    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDefaultHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v1

    .line 2138
    .end local v3  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_39
    return v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 662
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 663
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return v1

    .line 664
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2152
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2153
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public getPackageScore(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/String;

    .line 2191
    const/4 v0, 0x0

    return v0
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 668
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 669
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return v1

    .line 670
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getUserFilter(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2224
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2225
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public hasLauncherActivity(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2245
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 2246
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    if-eqz v1, :cond_24

    .line 2247
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 2248
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    if-lez v3, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    .line 2252
    .end local v1  # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_24
    goto :goto_29

    .line 2250
    :catch_25
    move-exception v1

    .line 2251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2253
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_29
    return v0
.end method

.method public isAuthorityWhitePackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2257
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAuthorityWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 8
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "sourceUid"  # I
    .param p3, "potentialDelegatePkg"  # Ljava/lang/String;
    .param p4, "potentialDelegateUid"  # I

    .line 1510
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1511
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1513
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_11

    invoke-virtual {v1, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 1515
    .end local v1  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "groupId"  # Ljava/lang/String;

    .line 648
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 649
    return v0

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 652
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 653
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 654
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    if-nez v3, :cond_17

    .line 655
    monitor-exit v1

    return v0

    .line 657
    :cond_17
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 658
    .end local v2  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3  # "group":Landroid/app/NotificationChannelGroup;
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .registers 15
    .param p1, "appOrChannelList"  # [Ljava/lang/String;

    .line 1009
    if-nez p1, :cond_3

    .line 1010
    return-void

    .line 1012
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_82

    aget-object v3, p1, v2

    .line 1013
    .local v3, "appOrChannel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 1014
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1015
    .local v4, "appSplit":[Ljava/lang/String;
    if-eqz v4, :cond_7f

    array-length v5, v4

    if-lez v5, :cond_7f

    .line 1016
    aget-object v5, v4, v1

    .line 1017
    .local v5, "appName":Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_25

    aget-object v6, v4, v8

    goto :goto_26

    :cond_25
    const/4 v6, 0x0

    .line 1019
    .local v6, "channelId":Ljava/lang/String;
    :goto_26
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1020
    :try_start_29
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1021
    .local v10, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    .line 1022
    if-nez v6, :cond_66

    .line 1024
    iput-boolean v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 1025
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_55
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannel;

    .line 1026
    .local v12, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v12, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1027
    .end local v12  # "channel":Landroid/app/NotificationChannel;
    goto :goto_55

    :cond_65
    goto :goto_79

    .line 1029
    :cond_66
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 1030
    .local v11, "channel":Landroid/app/NotificationChannel;
    if-eqz v11, :cond_74

    .line 1031
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_79

    .line 1035
    :cond_74
    iget-object v12, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v10  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v11  # "channel":Landroid/app/NotificationChannel;
    :cond_79
    :goto_79
    goto :goto_33

    .line 1040
    :cond_7a
    monitor-exit v7

    goto :goto_7f

    :catchall_7c
    move-exception v0

    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_29 .. :try_end_7e} :catchall_7c

    throw v0

    .line 1012
    .end local v3  # "appOrChannel":Ljava/lang/String;
    .end local v4  # "appSplit":[Ljava/lang/String;
    .end local v5  # "appName":Ljava/lang/String;
    .end local v6  # "channelId":Ljava/lang/String;
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1044
    :cond_82
    return-void
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 5
    .param p1, "original"  # Landroid/app/NotificationChannel;
    .param p2, "update"  # Landroid/app/NotificationChannel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1520
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1521
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1523
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1524
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1526
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1527
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1529
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 1530
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1531
    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1533
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1534
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1536
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1537
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1538
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1540
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_82

    .line 1541
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1543
    :cond_82
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v1

    if-eq v0, v1, :cond_91

    .line 1544
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1546
    :cond_91
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I

    .line 1834
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1836
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_43

    .line 1837
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1838
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_40

    .line 1839
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1841
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1843
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1842
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1836
    .end local v3  # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1848
    .end local v1  # "N":I
    .end local v2  # "i":I
    :cond_43
    monitor-exit v0

    .line 1849
    return-void

    .line 1848
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .registers 14
    .param p1, "removingPackage"  # Z
    .param p2, "changeUserId"  # I
    .param p3, "pkgList"  # [Ljava/lang/String;
    .param p4, "uidList"  # [I

    .line 1853
    const/4 v0, 0x0

    if-eqz p3, :cond_8f

    array-length v1, p3

    if-nez v1, :cond_8

    goto/16 :goto_8f

    .line 1856
    :cond_8
    const/4 v1, 0x0

    .line 1857
    .local v1, "updated":Z
    if-eqz p1, :cond_32

    .line 1859
    array-length v0, p3

    array-length v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1860
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_31

    .line 1861
    aget-object v3, p3, v2

    .line 1862
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v2

    .line 1863
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1864
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    .line 1866
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const/4 v1, 0x1

    .line 1860
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1865
    .restart local v3  # "pkg":Ljava/lang/String;
    .restart local v4  # "uid":I
    :catchall_2e
    move-exception v6

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v6

    .line 1869
    .end local v0  # "size":I
    .end local v2  # "i":I
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "uid":I
    :cond_31
    goto :goto_89

    .line 1870
    :cond_32
    array-length v2, p3

    :goto_33
    if-ge v0, v2, :cond_89

    aget-object v3, p3, v0

    .line 1872
    .restart local v3  # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1873
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v4, :cond_67

    .line 1875
    :try_start_41
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 1876
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_53} :catch_66

    .line 1878
    :try_start_53
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    monitor-exit v5

    .line 1880
    const/4 v1, 0x1

    .line 1883
    goto :goto_67

    .line 1879
    :catchall_63
    move-exception v6

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_63

    .end local v1  # "updated":Z
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "removingPackage":Z
    .end local p2  # "changeUserId":I
    .end local p3  # "pkgList":[Ljava/lang/String;
    .end local p4  # "uidList":[I
    :try_start_65
    throw v6
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_66} :catch_66

    .line 1881
    .restart local v1  # "updated":Z
    .restart local v3  # "pkg":Ljava/lang/String;
    .restart local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "removingPackage":Z
    .restart local p2  # "changeUserId":I
    .restart local p3  # "pkgList":[Ljava/lang/String;
    .restart local p4  # "uidList":[I
    :catch_66
    move-exception v5

    .line 1887
    :cond_67
    :goto_67
    :try_start_67
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_6a} :catch_85

    .line 1888
    :try_start_6a
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1889
    invoke-virtual {v6, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    .line 1888
    invoke-direct {p0, v3, v6}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v6

    .line 1890
    .local v6, "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v6, :cond_80

    .line 1891
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1892
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1894
    .end local v6  # "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_80
    monitor-exit v5

    .line 1896
    goto :goto_86

    .line 1894
    :catchall_82
    move-exception v6

    monitor-exit v5
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_82

    .end local v1  # "updated":Z
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "removingPackage":Z
    .end local p2  # "changeUserId":I
    .end local p3  # "pkgList":[Ljava/lang/String;
    .end local p4  # "uidList":[I
    :try_start_84
    throw v6
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_85} :catch_85

    .line 1895
    .restart local v1  # "updated":Z
    .restart local v3  # "pkg":Ljava/lang/String;
    .restart local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "removingPackage":Z
    .restart local p2  # "changeUserId":I
    .restart local p3  # "pkgList":[Ljava/lang/String;
    .restart local p4  # "uidList":[I
    :catch_85
    move-exception v5

    .line 1870
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1900
    :cond_89
    :goto_89
    if-eqz v1, :cond_8e

    .line 1901
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1903
    :cond_8e
    return v1

    .line 1854
    .end local v1  # "updated":Z
    :cond_8f
    :goto_8f
    return v0
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 1822
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1823
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1824
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 1825
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1826
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 1827
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1824
    .end local v3  # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1830
    .end local v1  # "N":I
    .end local v2  # "i":I
    :cond_25
    monitor-exit v0

    .line 1831
    return-void

    .line 1830
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onUserSwitched(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1812
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 1818
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1819
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1238
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1239
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1240
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    .line 1241
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1242
    monitor-exit v0

    return v3

    .line 1244
    :cond_1d
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1245
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelId"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 971
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 974
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 975
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_11

    .line 976
    monitor-exit v0

    return-void

    .line 978
    :cond_11
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    nop

    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 984
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 986
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 987
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_e

    .line 988
    monitor-exit v0

    return-void

    .line 990
    :cond_e
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 991
    .local v2, "N":I
    move v3, v2

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_32

    .line 992
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 993
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 994
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .end local v4  # "key":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 997
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_32
    monitor-exit v0

    .line 998
    return-void

    .line 997
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .registers 27
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 175
    .local v1, "type":I
    const/4 v13, 0x2

    if-eq v1, v13, :cond_e

    return-void

    .line 176
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 178
    :cond_1c
    iget-object v14, v10, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 181
    :try_start_1f
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 182
    :goto_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_24f

    move v15, v0

    .end local v1  # "type":I
    .local v15, "type":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_243

    .line 183
    :try_start_2c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_24c

    move-object v8, v0

    .line 184
    .end local v2  # "tag":Ljava/lang/String;
    .local v8, "tag":Ljava/lang/String;
    const/4 v7, 0x3

    if-ne v15, v7, :cond_44

    :try_start_34
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 185
    monitor-exit v14
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3f

    return-void

    .line 312
    :catchall_3f
    move-exception v0

    move-object v2, v8

    move v1, v15

    goto/16 :goto_250

    .line 187
    :cond_44
    if-ne v15, v13, :cond_23b

    .line 188
    :try_start_46
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_234

    const/4 v6, 0x0

    if-eqz v0, :cond_64

    .line 189
    if-eqz p2, :cond_58

    if-eqz v12, :cond_58

    .line 190
    move-object/from16 v17, v8

    goto/16 :goto_23d

    .line 192
    :cond_58
    :try_start_58
    const-string v0, "hide_gentle"

    invoke-static {v11, v0, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_3f

    move-object/from16 v17, v8

    goto/16 :goto_23d

    .line 194
    :cond_64
    :try_start_64
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 195
    const-string/jumbo v0, "uid"

    const/16 v5, -0x2710

    invoke-static {v11, v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 196
    .local v1, "uid":I
    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v11, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 197
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_234

    if-nez v0, :cond_227

    .line 198
    if-eqz p2, :cond_92

    .line 200
    :try_start_88
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_8e} :catch_91
    .catchall {:try_start_88 .. :try_end_8e} :catchall_3f

    .line 203
    .end local v1  # "uid":I
    .local v0, "uid":I
    move/from16 v16, v0

    goto :goto_94

    .line 201
    .end local v0  # "uid":I
    .restart local v1  # "uid":I
    :catch_91
    move-exception v0

    .line 206
    :cond_92
    move/from16 v16, v1

    .end local v1  # "uid":I
    .local v16, "uid":I
    :goto_94
    :try_start_94
    const-string/jumbo v0, "importance"

    .line 207
    const/16 v2, -0x3e8

    invoke-static {v11, v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "priority"

    .line 209
    invoke-static {v11, v1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v1, "visibility"

    .line 211
    invoke-static {v11, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v1, "show_badge"

    .line 213
    const/4 v13, -0x1

    invoke-static {v11, v1, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v1, "allow_bubble"

    .line 215
    invoke-static {v11, v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v20

    const-string/jumbo v1, "userFilter"

    .line 218
    invoke-static {v11, v1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21
    :try_end_c0
    .catchall {:try_start_94 .. :try_end_c0} :catchall_234

    .line 206
    move-object/from16 v1, p0

    move v13, v2

    move-object v2, v3

    move-object/from16 v22, v3

    .end local v3  # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    move/from16 v3, v16

    move v4, v0

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v17, v8

    .end local v8  # "tag":Ljava/lang/String;
    .local v17, "tag":Ljava/lang/String;
    move/from16 v8, v20

    move/from16 v9, v21

    :try_start_d5
    invoke-direct/range {v1 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    move-object v1, v0

    .line 222
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const-string/jumbo v0, "importance"

    invoke-static {v11, v0, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 224
    const-string/jumbo v0, "priority"

    const/4 v2, 0x0

    invoke-static {v11, v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 226
    const-string/jumbo v0, "visibility"

    invoke-static {v11, v0, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 228
    const-string/jumbo v0, "show_badge"

    const/4 v3, -0x1

    invoke-static {v11, v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 230
    const-string v0, "app_user_locked_fields"

    invoke-static {v11, v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 234
    const-string/jumbo v0, "remind"

    const/4 v3, 0x1

    invoke-static {v11, v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    .line 235
    const-string v0, "headsup"

    const/4 v4, -0x1

    invoke-static {v11, v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    .line 236
    const-string/jumbo v0, "maxPriority"

    invoke-static {v11, v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    .line 237
    const-string/jumbo v0, "userFilter"

    invoke-static {v11, v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    .line 240
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v2, v0

    .line 241
    .local v2, "innerDepth":I
    :goto_132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v15, v0

    if-eq v0, v3, :cond_203

    const/4 v4, 0x3

    if-ne v15, v4, :cond_142

    .line 243
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_203

    .line 244
    :cond_142
    if-eq v15, v4, :cond_1fd

    const/4 v0, 0x4

    if-ne v15, v0, :cond_14c

    .line 245
    const/16 v5, -0x2710

    const/4 v6, 0x0

    goto/16 :goto_200

    .line 248
    :cond_14c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "tagName":Ljava/lang/String;
    const-string v5, "channelGroup"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 251
    const-string/jumbo v5, "id"

    const/4 v6, 0x0

    invoke-interface {v11, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v7, "name"

    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "groupName":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17c

    .line 255
    new-instance v8, Landroid/app/NotificationChannelGroup;

    invoke-direct {v8, v5, v7}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 257
    .local v8, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v8, v11}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 258
    iget-object v9, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17c

    .line 250
    .end local v5  # "id":Ljava/lang/String;
    .end local v7  # "groupName":Ljava/lang/CharSequence;
    .end local v8  # "group":Landroid/app/NotificationChannelGroup;
    :cond_17b
    const/4 v6, 0x0

    .line 262
    :cond_17c
    :goto_17c
    const-string v5, "channel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 263
    const-string/jumbo v5, "id"

    invoke-interface {v11, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .restart local v5  # "id":Ljava/lang/String;
    const-string/jumbo v7, "name"

    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "channelName":Ljava/lang/String;
    const-string/jumbo v8, "importance"

    invoke-static {v11, v8, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 267
    .local v8, "channelImportance":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1bf

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1bf

    .line 268
    new-instance v9, Landroid/app/NotificationChannel;

    invoke-direct {v9, v5, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 270
    .local v9, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_1b2

    .line 271
    iget-object v4, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11, v4}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_1b5

    .line 273
    :cond_1b2
    invoke-virtual {v9, v11}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 275
    :goto_1b5
    iget-boolean v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v9, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 277
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v5  # "id":Ljava/lang/String;
    .end local v7  # "channelName":Ljava/lang/String;
    .end local v8  # "channelImportance":I
    .end local v9  # "channel":Landroid/app/NotificationChannel;
    :cond_1bf
    const-string v4, "delegate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    .line 282
    const-string/jumbo v4, "uid"

    .line 283
    const/16 v5, -0x2710

    invoke-static {v11, v4, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 284
    .local v4, "delegateId":I
    const-string/jumbo v7, "name"

    .line 285
    invoke-static {v11, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "delegateName":Ljava/lang/String;
    const-string v8, "enabled"

    invoke-static {v11, v8, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 288
    .local v8, "delegateEnabled":Z
    const-string v9, "allowed"

    invoke-static {v11, v9, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v9

    .line 291
    .local v9, "userAllowed":Z
    const/16 v18, 0x0

    .line 292
    .local v18, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    if-eq v4, v5, :cond_1f5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1f5

    .line 294
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v3, v7, v4, v8, v9}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v18, v3

    goto :goto_1f7

    .line 298
    :cond_1f5
    move-object/from16 v3, v18

    .end local v18  # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .local v3, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    :goto_1f7
    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_1f9
    .catchall {:try_start_d5 .. :try_end_1f9} :catchall_222

    goto :goto_1fc

    .line 281
    .end local v3  # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .end local v4  # "delegateId":I
    .end local v7  # "delegateName":Ljava/lang/String;
    .end local v8  # "delegateEnabled":Z
    .end local v9  # "userAllowed":Z
    :cond_1fa
    const/16 v5, -0x2710

    .line 301
    .end local v0  # "tagName":Ljava/lang/String;
    :goto_1fc
    goto :goto_200

    .line 244
    :cond_1fd
    const/16 v5, -0x2710

    const/4 v6, 0x0

    .line 241
    :goto_200
    const/4 v3, 0x1

    goto/16 :goto_132

    .line 304
    :cond_203
    :try_start_203
    invoke-direct {v10, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_206
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_203 .. :try_end_206} :catch_207
    .catchall {:try_start_203 .. :try_end_206} :catchall_222

    .line 307
    goto :goto_220

    .line 305
    :catch_207
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 306
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_20a
    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_220
    .catchall {:try_start_20a .. :try_end_220} :catchall_222

    .line 309
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2  # "innerDepth":I
    .end local v16  # "uid":I
    .end local v22  # "name":Ljava/lang/String;
    :goto_220
    move v1, v15

    goto :goto_22c

    .line 312
    :catchall_222
    move-exception v0

    move v1, v15

    move-object/from16 v2, v17

    goto :goto_250

    .line 197
    .end local v17  # "tag":Ljava/lang/String;
    .local v1, "uid":I
    .local v3, "name":Ljava/lang/String;
    .local v8, "tag":Ljava/lang/String;
    :cond_227
    move-object/from16 v22, v3

    move-object/from16 v17, v8

    .end local v3  # "name":Ljava/lang/String;
    .end local v8  # "tag":Ljava/lang/String;
    .restart local v17  # "tag":Ljava/lang/String;
    .restart local v22  # "name":Ljava/lang/String;
    move v1, v15

    .line 309
    .end local v15  # "type":I
    .end local v22  # "name":Ljava/lang/String;
    .local v1, "type":I
    :goto_22c
    move-object/from16 v2, v17

    const/4 v13, 0x2

    goto/16 :goto_24

    .line 194
    .end local v1  # "type":I
    .end local v17  # "tag":Ljava/lang/String;
    .restart local v8  # "tag":Ljava/lang/String;
    .restart local v15  # "type":I
    :cond_231
    move-object/from16 v17, v8

    .end local v8  # "tag":Ljava/lang/String;
    .restart local v17  # "tag":Ljava/lang/String;
    goto :goto_23d

    .line 312
    .end local v17  # "tag":Ljava/lang/String;
    .restart local v8  # "tag":Ljava/lang/String;
    :catchall_234
    move-exception v0

    move-object/from16 v17, v8

    move v1, v15

    move-object/from16 v2, v17

    .end local v8  # "tag":Ljava/lang/String;
    .restart local v17  # "tag":Ljava/lang/String;
    goto :goto_250

    .line 187
    .end local v17  # "tag":Ljava/lang/String;
    .restart local v8  # "tag":Ljava/lang/String;
    :cond_23b
    move-object/from16 v17, v8

    .line 182
    .end local v8  # "tag":Ljava/lang/String;
    .restart local v17  # "tag":Ljava/lang/String;
    :goto_23d
    move v1, v15

    move-object/from16 v2, v17

    const/4 v13, 0x2

    goto/16 :goto_24

    .line 312
    .end local v17  # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    :cond_243
    :try_start_243
    monitor-exit v14
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_24c

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :catchall_24c
    move-exception v0

    move v1, v15

    goto :goto_250

    .end local v15  # "type":I
    .restart local v1  # "type":I
    :catchall_24f
    move-exception v0

    :goto_250
    :try_start_250
    monitor-exit v14
    :try_end_251
    .catchall {:try_start_250 .. :try_end_251} :catchall_24f

    throw v0
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .registers 8
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "sourceUid"  # I

    .line 1474
    const/4 v0, 0x0

    .line 1475
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1476
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1477
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_14

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_14

    .line 1478
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1479
    const/4 v0, 0x1

    .line 1481
    .end local v2  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 1482
    if-eqz v0, :cond_1a

    .line 1483
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1485
    :cond_1a
    return-void

    .line 1481
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public saveRankingDaily()V
    .registers 2

    .line 2305
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0}, Lcom/flyme/server/notfication/RankingController;->saveRankingDaily()V

    .line 2306
    return-void
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1426
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1427
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1428
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    .line 1429
    monitor-exit v0

    return-void

    .line 1432
    :cond_f
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1434
    .end local v1  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 1435
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1436
    return-void

    .line 1434
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setBubblesAllowed(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "allowed"  # Z

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 554
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 555
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v3, p3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    move v0, v3

    .line 556
    iput-boolean p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 557
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 558
    .end local v2  # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1f

    .line 559
    if-eqz v0, :cond_1e

    .line 560
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 562
    :cond_1e
    return-void

    .line 558
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "enabled"  # Z

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 1413
    .local v0, "wasEnabled":Z
    :goto_a
    if-ne v0, p3, :cond_d

    .line 1414
    return-void

    .line 1416
    :cond_d
    nop

    .line 1417
    if-eqz p3, :cond_12

    const/16 v1, -0x3e8

    .line 1416
    :cond_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setImportance(Ljava/lang/String;II)V

    .line 1418
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 2
    .param p1, "hide"  # Z

    .line 1005
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 1006
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "importance"  # I

    .line 1405
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1406
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1407
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 1408
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1409
    return-void

    .line 1407
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setMaxPriority(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "maxPriority"  # Z

    .line 2108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getMaxPriority(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_7

    .line 2109
    return-void

    .line 2111
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    .line 2112
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2113
    return-void
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "sourceUid"  # I
    .param p3, "delegatePkg"  # Ljava/lang/String;
    .param p4, "delegateUid"  # I

    .line 1460
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1461
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1463
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v3

    .line 1464
    .local v2, "userAllowed":Z
    :goto_16
    new-instance v4, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v4, p3, p4, v3, v2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, v4

    .line 1465
    .local v3, "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1466
    .end local v1  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2  # "userAllowed":Z
    .end local v3  # "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 1467
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1468
    return-void

    .line 1466
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V
    .registers 3
    .param p1, "firewall"  # Lcom/android/server/notification/NotificationFirewall;

    .line 2240
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V

    .line 2241
    return-void
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "visibility"  # I

    .line 2143
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 2144
    return-void

    .line 2146
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    .line 2147
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2148
    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "enable"  # Z

    .line 2158
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_7

    .line 2159
    return-void

    .line 2161
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    .line 2162
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2163
    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "showBadge"  # Z

    .line 640
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 641
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz p3, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 642
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 643
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 644
    return-void

    .line 642
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setUserFilter(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userFilter"  # I

    .line 2230
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getUserFilter(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 2231
    return-void

    .line 2233
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    .line 2234
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2235
    return-void
.end method

.method public shouldHideSilentStatusIcons()Z
    .registers 2

    .line 1001
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "sourceUid"  # I
    .param p3, "userAllowed"  # Z

    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1493
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1494
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_13

    .line 1495
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1496
    const/4 v0, 0x1

    .line 1498
    .end local v2  # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1a

    .line 1499
    if-eqz v0, :cond_19

    .line 1500
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1502
    :cond_19
    return-void

    .line 1498
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public updateBadgingEnabled()V
    .registers 8

    .line 1987
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 1988
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    .line 1990
    :cond_b
    const/4 v0, 0x0

    .line 1992
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1993
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1994
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1995
    .local v3, "oldValue":I
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    const-string/jumbo v6, "notification_badging"

    invoke-static {v4, v6, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1998
    .local v4, "newValue":I
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1999
    if-eq v3, v4, :cond_38

    const/4 v5, 0x1

    goto :goto_39

    :cond_38
    const/4 v5, 0x0

    :goto_39
    or-int/2addr v0, v5

    .line 1992
    .end local v2  # "userId":I
    .end local v3  # "oldValue":I
    .end local v4  # "newValue":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2001
    .end local v1  # "index":I
    :cond_3d
    if-eqz v0, :cond_42

    .line 2002
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2004
    :cond_42
    return-void
.end method

.method public updateBubblesEnabled()V
    .registers 9

    .line 1952
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 1953
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 1955
    :cond_b
    const/4 v0, 0x0

    .line 1957
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 1958
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1959
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 1960
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v6, "notification_bubbles"

    invoke-static {v4, v6, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_34

    move v4, v5

    goto :goto_35

    :cond_34
    move v4, v6

    .line 1963
    .local v4, "newValue":Z
    :goto_35
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1964
    if-eq v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v5, v6

    :goto_3e
    or-int/2addr v0, v5

    .line 1957
    .end local v2  # "userId":I
    .end local v3  # "oldValue":Z
    .end local v4  # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1966
    .end local v1  # "index":I
    :cond_42
    if-eqz v0, :cond_47

    .line 1967
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1969
    :cond_47
    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 11
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1048
    .local p2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "toAdd":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1049
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1050
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_48

    .line 1051
    if-eqz p2, :cond_48

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1052
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1053
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1054
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1055
    .end local v5  # "channel":Landroid/app/NotificationChannel;
    goto :goto_38

    .line 1058
    .end local v2  # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_48
    goto :goto_d

    .line 1059
    :cond_49
    if-eqz p3, :cond_89

    .line 1060
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1061
    .local v2, "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1062
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1061
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 1063
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1064
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1065
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1066
    .end local v6  # "channel":Landroid/app/NotificationChannel;
    goto :goto_78

    .line 1067
    .end local v2  # "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3  # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_88
    goto :goto_4f

    .line 1069
    :cond_89
    monitor-exit v0

    .line 1070
    return-void

    .line 1069
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "updatedChannel"  # Landroid/app/NotificationChannel;
    .param p4, "fromUser"  # Z

    .line 868
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 871
    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 872
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_e2

    .line 875
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 876
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_da

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_da

    .line 879
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 880
    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 883
    :cond_33
    if-eqz p4, :cond_40

    .line 884
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 885
    invoke-virtual {p0, v2, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_47

    .line 887
    :cond_40
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 890
    :goto_47
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 891
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 892
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 894
    :cond_5b
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 896
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 897
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_73

    .line 898
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 901
    :cond_73
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_a5

    .line 906
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 907
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 908
    const/4 v3, 0x2

    goto :goto_92

    :cond_91
    move v3, v5

    :goto_92
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 909
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 910
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    if-eqz v3, :cond_a2

    move v3, v4

    goto :goto_a3

    :cond_a2
    move v3, v5

    :goto_a3
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 913
    :cond_a5
    invoke-virtual {v2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 915
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 916
    if-eqz p4, :cond_b2

    goto :goto_b3

    :cond_b2
    move v4, v5

    :goto_b3
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 915
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 919
    :cond_ba
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_cc

    .line 920
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v3, v4, :cond_d5

    .line 921
    :cond_cc
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 923
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2  # "channel":Landroid/app/NotificationChannel;
    :cond_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d .. :try_end_d6} :catchall_ea

    .line 924
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 925
    return-void

    .line 877
    .restart local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2  # "channel":Landroid/app/NotificationChannel;
    :cond_da
    :try_start_da
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Channel does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4  # "fromUser":Z
    throw v3

    .line 873
    .end local v2  # "channel":Landroid/app/NotificationChannel;
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromUser":Z
    :cond_e2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4  # "fromUser":Z
    throw v2

    .line 923
    .end local v1  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0  # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4  # "fromUser":Z
    :catchall_ea
    move-exception v1

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_da .. :try_end_ec} :catchall_ea

    throw v1
.end method

.method public updateZenPolicy(Z)V
    .registers 11
    .param p1, "areChannelsBypassingDnd"  # Z

    .line 1388
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1389
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1392
    if-eqz p1, :cond_17

    const/4 v2, 0x1

    move v7, v2

    goto :goto_19

    .line 1393
    :cond_17
    const/4 v2, 0x0

    move v7, v2

    :goto_19
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1389
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1394
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V
    .registers 15
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v2, :cond_31

    if-eqz p2, :cond_1a

    if-nez p3, :cond_31

    .line 441
    :cond_1a
    const-string/jumbo v2, "silent_status_icons"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hide_gentle"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string/jumbo v2, "silent_status_icons"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    :cond_31
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 447
    :try_start_34
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 448
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_1df

    .line 449
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 450
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p2, :cond_51

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p3, :cond_51

    .line 451
    goto/16 :goto_1db

    .line 453
    :cond_51
    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v7, -0x1

    const/16 v8, -0x3e8

    if-ne v6, v8, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-nez v6, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-ne v6, v8, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    if-ne v6, v7, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    if-nez v6, :cond_93

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 459
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-gtz v6, :cond_93

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 460
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-gtz v6, :cond_93

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v6, :cond_93

    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-ne v6, v1, :cond_93

    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    if-ne v6, v1, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    if-ne v6, v7, :cond_93

    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    if-nez v6, :cond_93

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    if-eqz v6, :cond_91

    goto :goto_93

    :cond_91
    const/4 v6, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    move v6, v1

    .line 470
    .local v6, "hasNonDefaultSettings":Z
    :goto_94
    if-eqz v6, :cond_1db

    .line 471
    const-string/jumbo v9, "package"

    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const-string/jumbo v9, "name"

    iget-object v10, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {p1, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v9, v8, :cond_b4

    .line 474
    const-string/jumbo v9, "importance"

    iget v10, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    :cond_b4
    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v9, :cond_c4

    .line 477
    const-string/jumbo v9, "priority"

    iget v10, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    :cond_c4
    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v9, v8, :cond_d4

    .line 480
    const-string/jumbo v8, "visibility"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    :cond_d4
    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v8, v1, :cond_e3

    .line 483
    const-string v8, "allow_bubble"

    iget-boolean v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    :cond_e3
    const-string/jumbo v8, "show_badge"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    const-string v8, "app_user_locked_fields"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 487
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    if-eq v8, v1, :cond_10a

    .line 491
    const-string/jumbo v8, "remind"

    iget-boolean v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    :cond_10a
    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    if-eq v8, v7, :cond_119

    .line 494
    const-string v7, "headsup"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    :cond_119
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    if-eqz v7, :cond_129

    .line 497
    const-string/jumbo v7, "maxPriority"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    :cond_129
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    if-eqz v7, :cond_139

    .line 500
    const-string/jumbo v7, "userFilter"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    :cond_139
    if-nez p2, :cond_147

    .line 505
    const-string/jumbo v7, "uid"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    :cond_147
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v7, :cond_193

    .line 509
    const-string v7, "delegate"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    const-string/jumbo v7, "uid"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v7, v1, :cond_17b

    .line 514
    const-string v7, "enabled"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    :cond_17b
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v7, v1, :cond_18e

    .line 517
    const-string v7, "allowed"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 518
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    :cond_18e
    const-string v7, "delegate"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    :cond_193
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1ad

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 524
    .local v8, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v8, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 525
    .end local v8  # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_19d

    .line 527
    :cond_1ad
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 528
    .local v8, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_1d1

    .line 529
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_1d4

    .line 530
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1, v9}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_1d4

    .line 533
    :cond_1d1
    invoke-virtual {v8, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 535
    .end local v8  # "channel":Landroid/app/NotificationChannel;
    :cond_1d4
    :goto_1d4
    goto :goto_1b7

    .line 537
    :cond_1d5
    const-string/jumbo v7, "package"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    .end local v5  # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6  # "hasNonDefaultSettings":Z
    :cond_1db
    :goto_1db
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3b

    .line 540
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_1df
    monitor-exit v2
    :try_end_1e0
    .catchall {:try_start_34 .. :try_end_1e0} :catchall_1e7

    .line 541
    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    return-void

    .line 540
    :catchall_1e7
    move-exception v0

    :try_start_1e8
    monitor-exit v2
    :try_end_1e9
    .catchall {:try_start_1e8 .. :try_end_1e9} :catchall_1e7

    throw v0
.end method
