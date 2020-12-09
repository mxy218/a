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

.field private static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_SOUND_TIMEOUT:Ljava/lang/String; = "sound-timeout"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final DEFAULT_ALLOW_BUBBLE:Z = true

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field private static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0xc350
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private mBubblesEnabled:Z

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
    .registers 6

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 143
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 144
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 145
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 146
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 150
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 151
    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 5

    .line 1271
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 1272
    return v0

    .line 1276
    :cond_10
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1f

    .line 1280
    :cond_1d
    const/4 p1, 0x1

    return p1

    .line 1277
    :cond_1f
    :goto_1f
    return v0
.end method

.method private createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 372
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x10401ee

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    .line 373
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 375
    return v3

    .line 378
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 380
    return v3

    .line 385
    :cond_27
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v1, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 389
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3b

    move v3, v4

    :cond_3b
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 390
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 391
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_4d

    .line 392
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 394
    :cond_4d
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_54

    .line 395
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 397
    :cond_54
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v3, :cond_5b

    .line 398
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 400
    :cond_5b
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return v4
.end method

.method private deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 354
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 356
    return v2

    .line 359
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 361
    return v2

    .line 365
    :cond_13
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/4 p1, 0x1

    return p1
.end method

.method private static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 14
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

    .line 1541
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1543
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_9a

    .line 1544
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1545
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1546
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1548
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1549
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1550
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1551
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1552
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1553
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1555
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

    .line 1556
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1557
    goto :goto_5f

    .line 1558
    :cond_74
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 1559
    const-wide v6, 0x20b00000008L

    invoke-virtual {v5, p0, v6, v7}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1560
    goto :goto_7e

    .line 1562
    :cond_93
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1543
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1565
    :cond_9a
    return-void
.end method

.method private static dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 11
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

    .line 1485
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1486
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_100

    .line 1487
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1488
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1489
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
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

    .line 1494
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1495
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_52

    .line 1496
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    :cond_52
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v3, :cond_64

    .line 1500
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    :cond_64
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v3, v4, :cond_76

    .line 1504
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    :cond_76
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_85

    .line 1508
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1511
    :cond_85
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v3, :cond_93

    .line 1512
    const-string v3, " defaultAppLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1513
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1515
    :cond_93
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v3, :cond_a1

    .line 1516
    const-string v3, " oemLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1519
    :cond_a1
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b3

    .line 1520
    const-string v3, " futureLockedChannels="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1521
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1523
    :cond_b3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1524
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

    .line 1525
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v6, "    "

    invoke-virtual {v4, p0, v6, v5}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1527
    goto :goto_c0

    .line 1528
    :cond_d7
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1529
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1530
    const-string v4, "  "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1533
    goto :goto_e1

    .line 1486
    :cond_fc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1536
    :cond_100
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5

    .line 1851
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1854
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1855
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1859
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1851
    return-object p1
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5

    .line 1835
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1838
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1839
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1843
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1840
    const/16 v1, 0x359

    invoke-virtual {p2, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1847
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1844
    const/16 v0, 0x35a

    invoke-virtual {p2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1835
    return-object p1
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 11

    .line 302
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/16 v5, -0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 12

    .line 309
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 311
    const/16 v1, -0x2710

    if-ne p2, v1, :cond_11

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_19

    .line 312
    :cond_11
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 313
    :goto_19
    if-nez v2, :cond_59

    .line 314
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$1;)V

    .line 315
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 316
    iput p2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 317
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 318
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 319
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 320
    iput-boolean p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 321
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 324
    :try_start_2f
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    .line 327
    goto :goto_4a

    .line 325
    :catch_33
    move-exception p2

    .line 326
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationPrefHelper"

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_4a
    iget p2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p2, v1, :cond_54

    .line 330
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 332
    :cond_54
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_59
    :goto_59
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

    .line 1701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1702
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1703
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 1704
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1705
    nop

    .line 1706
    move v5, v2

    move v6, v5

    :goto_1d
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_38

    .line 1707
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_35

    .line 1708
    add-int/lit8 v6, v6, 0x1

    .line 1706
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1711
    :cond_38
    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1713
    :cond_44
    monitor-exit v1

    .line 1714
    return-object v0

    .line 1713
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v0
.end method

.method private getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 3

    .line 297
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object p1
.end method

.method private static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 340
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 343
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_16

    .line 345
    return v2

    .line 349
    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method private syncChannelsBypassingDnd(I)V
    .registers 4

    .line 1230
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

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1233
    return-void
.end method

.method private updateChannelsBypassingDnd(I)V
    .registers 10

    .line 1241
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1242
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1243
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_54

    .line 1244
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1247
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_51

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_22

    .line 1248
    goto :goto_51

    .line 1251
    :cond_22
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1252
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1253
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez p1, :cond_4e

    .line 1254
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1255
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1257
    :cond_4e
    monitor-exit v0

    return-void

    .line 1259
    :cond_50
    goto :goto_2c

    .line 1243
    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1261
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_5f

    .line 1263
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz p1, :cond_5e

    .line 1264
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1265
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1267
    :cond_5e
    return-void

    .line 1261
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method private updateConfig()V
    .registers 2

    .line 1911
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 1912
    return-void
.end method


# virtual methods
.method public areBubblesAllowed(Ljava/lang/String;I)Z
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 525
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    monitor-exit v0

    return p1

    .line 526
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 1293
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    .line 1897
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1898
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 1899
    return v0

    .line 1901
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_27

    .line 1902
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 1903
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_badging"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_24

    move v0, v2

    .line 1902
    :cond_24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1907
    :cond_27
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public bubblesEnabled()Z
    .registers 2

    .line 1873
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Z

    return v0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 560
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return p1

    .line 561
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public clearData(Ljava/lang/String;I)V
    .registers 6

    .line 1817
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1818
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1819
    if-eqz p1, :cond_2e

    .line 1820
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1821
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 1822
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1823
    const/4 p2, 0x0

    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1824
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    .line 1825
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 1826
    const/16 v2, -0x3e8

    iput v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1827
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1828
    iput v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1829
    iput-boolean v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1831
    :cond_2e
    monitor-exit v0

    .line 1832
    return-void

    .line 1831
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .registers 3

    .line 758
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 759
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .registers 11

    .line 639
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 643
    nop

    .line 644
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 645
    :try_start_1e
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    .line 646
    if-eqz p2, :cond_1be

    .line 649
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_3f

    .line 650
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 652
    :cond_3f
    :goto_3f
    const-string v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 655
    iget-object v2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 657
    const/4 v3, 0x0

    if-eqz v2, :cond_11c

    if-eqz p4, :cond_11c

    .line 658
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-eqz p2, :cond_72

    .line 659
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 660
    nop

    .line 663
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    move v3, v1

    .line 667
    :cond_72
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    .line 668
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 669
    move v3, v1

    .line 671
    :cond_94
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    .line 672
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 673
    move v3, v1

    .line 675
    :cond_aa
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result p1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result p2

    if-eq p1, p2, :cond_bc

    .line 676
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 677
    move v3, v1

    .line 679
    :cond_bc
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d0

    .line 680
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 681
    move v3, v1

    .line 686
    :cond_d0
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    .line 687
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p2

    if-nez p2, :cond_ec

    .line 688
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-ge p2, p4, :cond_ec

    .line 689
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 690
    move v3, v1

    .line 695
    :cond_ec
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p2

    if-nez p2, :cond_116

    if-eqz p5, :cond_116

    .line 696
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p2

    .line 697
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p3

    if-eq p2, p3, :cond_116

    .line 698
    invoke-virtual {v2, p2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 699
    nop

    .line 701
    iget-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne p2, p3, :cond_10c

    .line 702
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-eq p1, p2, :cond_117

    .line 703
    :cond_10c
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    goto :goto_117

    .line 708
    :cond_116
    move v1, v3

    :cond_117
    :goto_117
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 709
    monitor-exit v0

    return v1

    .line 712
    :cond_11c
    iget-object v2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const v4, 0xc350

    if-ge v2, v4, :cond_1ae

    .line 716
    nop

    .line 718
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-ltz v2, :cond_1a6

    .line 719
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_1a6

    .line 724
    if-eqz p4, :cond_144

    if-nez p5, :cond_144

    .line 725
    iget p5, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v2, 0x2

    if-ne p5, v2, :cond_140

    move p5, v1

    goto :goto_141

    :cond_140
    move p5, v3

    :goto_141
    invoke-virtual {p3, p5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 727
    :cond_144
    if-eqz p4, :cond_14b

    .line 728
    iget p4, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 730
    :cond_14b
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 731
    iget-boolean p4, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 732
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p4

    if-nez p4, :cond_168

    .line 733
    iget-object p4, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_168

    .line 734
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 737
    :cond_168
    iget-boolean p4, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 738
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p4

    if-ne p4, v1, :cond_178

    .line 739
    const/16 p4, -0x3e8

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 742
    :cond_178
    iget-boolean p4, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez p4, :cond_17f

    .line 743
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 746
    :cond_17f
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p2

    iget-boolean p4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq p2, p4, :cond_199

    .line 748
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 750
    :cond_199
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 752
    monitor-exit v0

    .line 754
    return v1

    .line 720
    :cond_1a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid importance level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_1ae
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Limit exceed; cannot create more channels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_1b6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reserved id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 647
    :cond_1be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 752
    :catchall_1c6
    move-exception p1

    monitor-exit v0
    :try_end_1c8
    .catchall {:try_start_1e .. :try_end_1c8} :catchall_1c6

    throw p1
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 9

    .line 602
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 607
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    .line 608
    if-eqz p2, :cond_86

    .line 611
    iget-object v2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 612
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 614
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 616
    :cond_44
    if-eqz v2, :cond_7b

    .line 617
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 620
    if-eqz p4, :cond_65

    .line 621
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 622
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 623
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_7b

    .line 626
    :cond_65
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p4

    if-eq p1, p4, :cond_7b

    .line 627
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    .line 628
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 632
    :cond_7b
    :goto_7b
    iget-object p1, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v0

    .line 634
    return-void

    .line 609
    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :catchall_8e
    move-exception p1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_21 .. :try_end_90} :catchall_8e

    throw p1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 846
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    .line 847
    if-nez p2, :cond_b

    .line 848
    monitor-exit v0

    return-void

    .line 850
    :cond_b
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannel;

    .line 851
    if-eqz p2, :cond_37

    .line 852
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 853
    invoke-direct {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 854
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 855
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 857
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz p1, :cond_37

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 858
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 861
    :cond_37
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 9
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

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1052
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1053
    if-eqz p1, :cond_41

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_41

    .line 1057
    :cond_15
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 1060
    const/4 v2, 0x0

    :goto_21
    if-ge v2, p2, :cond_3f

    .line 1061
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1062
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1063
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1064
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1067
    :cond_3f
    monitor-exit v1

    .line 1068
    return-object v0

    .line 1054
    :cond_41
    :goto_41
    monitor-exit v1

    return-object v0

    .line 1067
    :catchall_43
    move-exception p1

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    .line 1474
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1475
    const-wide v1, 0x20b00000002L

    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1477
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_19

    .line 1478
    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1480
    return-void

    .line 1477
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 1461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1466
    :try_start_11
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1467
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 1468
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1470
    return-void

    .line 1467
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 8

    .line 1638
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1639
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1640
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1641
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1642
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1643
    if-eqz p1, :cond_39

    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1644
    :cond_39
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1646
    :try_start_3e
    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1647
    const-string/jumbo v3, "packageName"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 1650
    goto :goto_4f

    .line 1648
    :catch_4b
    move-exception v2

    .line 1649
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1651
    :goto_4f
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1653
    :cond_52
    goto :goto_11

    .line 1654
    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 8

    .line 1682
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1683
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1684
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1685
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1686
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1687
    :cond_2b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1689
    :try_start_30
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1690
    const-string v3, "channelCount"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 1693
    goto :goto_44

    .line 1691
    :catch_40
    move-exception v2

    .line 1692
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1694
    :goto_44
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1696
    :cond_47
    goto :goto_11

    .line 1697
    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 13

    .line 1568
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1569
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1571
    :try_start_a
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_17

    .line 1574
    goto :goto_18

    .line 1572
    :catch_17
    move-exception v2

    .line 1575
    :goto_18
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1576
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1577
    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_fa

    .line 1578
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1579
    if-eqz p1, :cond_36

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 1580
    :cond_36
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_103

    .line 1582
    :try_start_3b
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1583
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1584
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_60

    .line 1585
    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1586
    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1585
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1589
    :cond_60
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_70

    .line 1590
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1591
    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1590
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1593
    :cond_70
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v7, v8, :cond_80

    .line 1594
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1595
    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    .line 1594
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1597
    :cond_80
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_91

    .line 1598
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1600
    :cond_91
    iget-wide v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a1

    .line 1601
    const-string/jumbo v7, "soundTimeout"

    iget-wide v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1603
    :cond_a1
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1604
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1605
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1606
    goto :goto_b0

    .line 1607
    :cond_c4
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1608
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1609
    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ec

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 1610
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1611
    goto :goto_d8

    .line 1612
    :cond_ec
    const-string v5, "groups"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_f1} :catch_f2
    .catchall {:try_start_3b .. :try_end_f1} :catchall_103

    .line 1615
    goto :goto_f3

    .line 1613
    :catch_f2
    move-exception v5

    .line 1616
    :goto_f3
    :try_start_f3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1577
    :cond_f6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 1619
    :cond_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_103

    .line 1621
    :try_start_fb
    const-string p1, "PackagePreferencess"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_fb .. :try_end_100} :catch_101

    .line 1624
    goto :goto_102

    .line 1622
    :catch_101
    move-exception p1

    .line 1625
    :goto_102
    return-object v0

    .line 1619
    :catchall_103
    move-exception p1

    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw p1
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 531
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return p1

    .line 532
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 10

    .line 1202
    nop

    .line 1203
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1204
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1205
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v2, v1, :cond_4c

    .line 1206
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1209
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_49

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_23

    .line 1210
    goto :goto_49

    .line 1213
    :cond_23
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1214
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1215
    add-int/lit8 v3, v3, 0x1

    .line 1216
    goto :goto_49

    .line 1218
    :cond_48
    goto :goto_2d

    .line 1205
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1220
    :cond_4c
    monitor-exit v0

    .line 1221
    return v3

    .line 1220
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getBlockedAppCount(I)I
    .registers 8

    .line 1183
    nop

    .line 1184
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1185
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1186
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v2, v1, :cond_27

    .line 1187
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1188
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_24

    iget v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_24

    .line 1190
    add-int/lit8 v3, v3, 0x1

    .line 1186
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1193
    :cond_27
    monitor-exit v0

    .line 1194
    return v3

    .line 1193
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 8

    .line 1164
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    nop

    .line 1166
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1167
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1168
    const/4 p2, 0x0

    if-nez p1, :cond_10

    .line 1169
    monitor-exit v0

    return p2

    .line 1171
    :cond_10
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1172
    move v2, p2

    :goto_17
    if-ge p2, v1, :cond_32

    .line 1173
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1174
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_2f

    .line 1175
    add-int/lit8 v2, v2, 0x1

    .line 1172
    :cond_2f
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 1178
    :cond_32
    monitor-exit v0

    return v2

    .line 1179
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 7

    .line 1145
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    nop

    .line 1147
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1148
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1149
    const/4 p2, 0x0

    if-nez p1, :cond_10

    .line 1150
    monitor-exit v0

    return p2

    .line 1152
    :cond_10
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1153
    move v2, p2

    :goto_17
    if-ge p2, v1, :cond_2c

    .line 1154
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1155
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1156
    add-int/lit8 v2, v2, 0x1

    .line 1153
    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 1159
    :cond_2c
    monitor-exit v0

    return v2

    .line 1160
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 541
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0

    return p1

    .line 542
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 552
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 553
    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    monitor-exit v0

    return p2

    .line 554
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 6

    .line 826
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 828
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 829
    const/4 p2, 0x0

    if-nez p1, :cond_f

    .line 830
    monitor-exit v0

    return-object p2

    .line 832
    :cond_f
    if-nez p3, :cond_13

    .line 833
    const-string p3, "miscellaneous"

    .line 835
    :cond_13
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 836
    if-eqz p1, :cond_27

    if-nez p4, :cond_25

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p3

    if-nez p3, :cond_27

    .line 837
    :cond_25
    monitor-exit v0

    return-object p1

    .line 839
    :cond_27
    monitor-exit v0

    return-object p2

    .line 840
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 993
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 995
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    .line 996
    if-nez p2, :cond_f

    .line 997
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 999
    :cond_f
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object p1

    .line 1000
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 10

    .line 970
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 972
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 973
    if-eqz p1, :cond_56

    if-eqz p3, :cond_56

    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_56

    .line 976
    :cond_17
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object p2

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 978
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 979
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_54

    .line 980
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 981
    if-nez p4, :cond_44

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_51

    .line 982
    :cond_44
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 983
    invoke-virtual {p2, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 979
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 987
    :cond_54
    monitor-exit v0

    return-object p2

    .line 974
    :cond_56
    :goto_56
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 988
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 14
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

    .line 1006
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1008
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1009
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1010
    if-nez p1, :cond_17

    .line 1011
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1013
    :cond_17
    new-instance p2, Landroid/app/NotificationChannelGroup;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1015
    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_7d

    .line 1016
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1017
    if-nez p3, :cond_36

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 1018
    :cond_36
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_77

    .line 1019
    iget-object v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 1020
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1021
    if-nez v6, :cond_73

    .line 1022
    iget-object v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v6

    .line 1023
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1024
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_73
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1028
    goto :goto_7a

    .line 1030
    :cond_77
    invoke-virtual {p2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1015
    :cond_7a
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1034
    :cond_7d
    if-eqz p4, :cond_8c

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8c

    .line 1035
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_8c
    if-eqz p5, :cond_b6

    .line 1038
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannelGroup;

    .line 1039
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b5

    .line 1040
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_b5
    goto :goto_98

    .line 1044
    :cond_b6
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p1

    .line 1045
    :catchall_c6
    move-exception p1

    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_b .. :try_end_c8} :catchall_c6

    throw p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 5
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

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1076
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1077
    if-nez p1, :cond_10

    .line 1078
    monitor-exit v1

    return-object v0

    .line 1080
    :cond_10
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1081
    monitor-exit v1

    .line 1082
    return-object v0

    .line 1081
    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 9
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

    .line 1088
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1091
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1092
    if-nez p1, :cond_17

    .line 1093
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1095
    :cond_17
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 1096
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p2, :cond_36

    .line 1097
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1098
    if-nez p3, :cond_30

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1099
    :cond_30
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1102
    :cond_36
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p1

    .line 1103
    :catchall_3d
    move-exception p1

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
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

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1113
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 1114
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1113
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1116
    if-eqz p1, :cond_40

    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz p2, :cond_40

    .line 1117
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1118
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_3f
    goto :goto_24

    .line 1123
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_47

    .line 1124
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 1123
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1353
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1354
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1356
    const/4 p2, 0x0

    if-eqz p1, :cond_24

    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v1, :cond_f

    goto :goto_24

    .line 1359
    :cond_f
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v1, :cond_22

    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v1, :cond_1c

    goto :goto_22

    .line 1362
    :cond_1c
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 1360
    :cond_22
    :goto_22
    monitor-exit v0

    return-object p2

    .line 1357
    :cond_24
    :goto_24
    monitor-exit v0

    return-object p2

    .line 1363
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public getNotificationSoundTimeout(Ljava/lang/String;I)J
    .registers 3

    .line 1338
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget-wide p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    return-wide p1
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1659
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1660
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1661
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_2b

    .line 1662
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1663
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_28

    .line 1664
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1668
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1669
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 589
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return p1

    .line 590
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .registers 4

    .line 594
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 595
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return p1

    .line 596
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 1421
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1422
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1424
    if-eqz p1, :cond_11

    invoke-virtual {p1, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit v0

    return p1

    .line 1426
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    .line 574
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 575
    return v0

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 578
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 579
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 580
    if-nez p1, :cond_17

    .line 581
    monitor-exit v1

    return v0

    .line 583
    :cond_17
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    monitor-exit v1

    return p1

    .line 584
    :catchall_1d
    move-exception p1

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .registers 12

    .line 905
    if-nez p1, :cond_3

    .line 906
    return-void

    .line 908
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_82

    aget-object v3, p1, v2

    .line 909
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 910
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 911
    if-eqz v3, :cond_7f

    array-length v4, v3

    if-lez v4, :cond_7f

    .line 912
    aget-object v4, v3, v1

    .line 913
    array-length v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_25

    aget-object v3, v3, v7

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 915
    :goto_26
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 916
    :try_start_29
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 917
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 918
    if-nez v3, :cond_66

    .line 920
    iput-boolean v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 921
    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_55
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 922
    invoke-virtual {v9, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 923
    goto :goto_55

    :cond_65
    goto :goto_79

    .line 925
    :cond_66
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 926
    if-eqz v9, :cond_74

    .line 927
    invoke-virtual {v9, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_79

    .line 931
    :cond_74
    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_79
    :goto_79
    goto :goto_33

    .line 936
    :cond_7a
    monitor-exit v5

    goto :goto_7f

    :catchall_7c
    move-exception p1

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_29 .. :try_end_7e} :catchall_7c

    throw p1

    .line 908
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 940
    :cond_82
    return-void
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1431
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1432
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1434
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1435
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1437
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1438
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1440
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 1441
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1442
    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1444
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1445
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1447
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1448
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1449
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1451
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_82

    .line 1452
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1454
    :cond_82
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p1

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eq p1, v0, :cond_91

    .line 1455
    const/16 p1, 0x100

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1457
    :cond_91
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .registers 9

    .line 1744
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1745
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1746
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_41

    .line 1747
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1748
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_3e

    .line 1749
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1751
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1753
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10401ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1752
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1746
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1758
    :cond_41
    monitor-exit v0

    .line 1759
    return-void

    .line 1758
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .registers 13

    .line 1763
    const/4 v0, 0x0

    if-eqz p3, :cond_94

    array-length v1, p3

    if-nez v1, :cond_8

    goto/16 :goto_94

    .line 1766
    :cond_8
    nop

    .line 1767
    const/4 v1, 0x1

    if-eqz p1, :cond_34

    .line 1769
    array-length p1, p3

    array-length p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1770
    move p2, v0

    :goto_13
    if-ge v0, p1, :cond_33

    .line 1771
    aget-object p2, p3, v0

    .line 1772
    aget v2, p4, v0

    .line 1773
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1774
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p2, v2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_30

    .line 1776
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    nop

    .line 1770
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_13

    .line 1775
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1

    .line 1779
    :cond_33
    goto :goto_8e

    .line 1780
    :cond_34
    array-length p1, p3

    move p4, v0

    :goto_36
    if-ge v0, p1, :cond_8d

    aget-object v2, p3, v0

    .line 1782
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1783
    if-eqz v3, :cond_6b

    .line 1785
    :try_start_44
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 1786
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v4
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_56} :catch_6a

    .line 1788
    :try_start_56
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6, v7}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    monitor-exit v4

    .line 1790
    nop

    .line 1793
    move p4, v1

    goto :goto_6b

    .line 1789
    :catchall_67
    move-exception v3

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_67

    :try_start_69
    throw v3
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_6a} :catch_6a

    .line 1791
    :catch_6a
    move-exception v3

    .line 1797
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_6e} :catch_89

    .line 1798
    :try_start_6e
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1799
    invoke-virtual {v4, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 1798
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1800
    if-eqz v2, :cond_84

    .line 1801
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v4

    or-int/2addr p4, v4

    .line 1802
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v2

    or-int/2addr p4, v2

    .line 1804
    :cond_84
    monitor-exit v3

    .line 1806
    goto :goto_8a

    .line 1804
    :catchall_86
    move-exception v2

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_86

    :try_start_88
    throw v2
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_89} :catch_89

    .line 1805
    :catch_89
    move-exception v2

    .line 1780
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_8d
    move p2, p4

    .line 1810
    :goto_8e
    if-eqz p2, :cond_93

    .line 1811
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1813
    :cond_93
    return p2

    .line 1764
    :cond_94
    :goto_94
    return v0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 1732
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1733
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1734
    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_25

    .line 1735
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1736
    iget v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 1737
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1734
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1740
    :cond_25
    monitor-exit v0

    .line 1741
    return-void

    .line 1740
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public onUserSwitched(I)V
    .registers 2

    .line 1721
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1722
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 2

    .line 1728
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1729
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 5

    .line 1134
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1135
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1136
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1c

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string p2, "miscellaneous"

    .line 1137
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1138
    monitor-exit v0

    return v1

    .line 1140
    :cond_1c
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1141
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 867
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 870
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 871
    if-nez p1, :cond_11

    .line 872
    monitor-exit v0

    return-void

    .line 874
    :cond_11
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    monitor-exit v0

    .line 876
    return-void

    .line 875
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 6

    .line 880
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 882
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 883
    if-nez p1, :cond_e

    .line 884
    monitor-exit v0

    return-void

    .line 886
    :cond_e
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 887
    nop

    :goto_17
    if-ltz p2, :cond_31

    .line 888
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 889
    const-string v2, "miscellaneous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 890
    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_2e
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    .line 893
    :cond_31
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 156
    const/4 v12, 0x2

    if-eq v0, v12, :cond_e

    return-void

    .line 157
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "ranking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 159
    :cond_1c
    iget-object v13, v9, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 162
    :try_start_1f
    iget-object v0, v9, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 163
    :goto_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_20c

    .line 164
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 165
    const/4 v15, 0x3

    if-ne v0, v15, :cond_3d

    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 166
    monitor-exit v13

    return-void

    .line 168
    :cond_3d
    if-ne v0, v12, :cond_209

    .line 169
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_57

    .line 170
    if-eqz p2, :cond_4e

    if-eqz v11, :cond_4e

    .line 171
    goto :goto_24

    .line 173
    :cond_4e
    const-string v0, "hide_gentle"

    invoke-static {v10, v0, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    goto :goto_24

    .line 175
    :cond_57
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    .line 176
    const-string/jumbo v0, "uid"

    const/16 v7, -0x2710

    invoke-static {v10, v0, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 177
    const-string/jumbo v0, "name"

    const/4 v6, 0x0

    invoke-interface {v10, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_75
    .catchall {:try_start_1f .. :try_end_75} :catchall_215

    if-nez v0, :cond_203

    .line 179
    if-eqz p2, :cond_82

    .line 181
    :try_start_79
    iget-object v0, v9, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_7f} :catch_81
    .catchall {:try_start_79 .. :try_end_7f} :catchall_215

    .line 184
    move v3, v0

    goto :goto_83

    .line 182
    :catch_81
    move-exception v0

    .line 186
    :cond_82
    move v3, v1

    :goto_83
    nop

    .line 188
    :try_start_84
    const-string v0, "importance"

    .line 189
    const/16 v5, -0x3e8

    invoke-static {v10, v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "priority"

    .line 191
    invoke-static {v10, v0, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "visibility"

    .line 193
    invoke-static {v10, v1, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v1, "show_badge"

    .line 195
    invoke-static {v10, v1, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    const-string v1, "allow_bubble"

    .line 197
    invoke-static {v10, v1, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 188
    move-object/from16 v1, p0

    move v12, v5

    move v5, v0

    move/from16 v6, v16

    move/from16 v7, v17

    move v15, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 199
    const-string v1, "importance"

    invoke-static {v10, v1, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 201
    const-string/jumbo v1, "priority"

    invoke-static {v10, v1, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 203
    const-string/jumbo v1, "visibility"

    invoke-static {v10, v1, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 205
    const-string/jumbo v1, "show_badge"

    invoke-static {v10, v1, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 207
    const-string v1, "app_user_locked_fields"

    invoke-static {v10, v1, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 209
    const-string/jumbo v1, "sound-timeout"

    invoke-static {v10, v1, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    .line 212
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 213
    :goto_ef
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v14, :cond_1e7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_fe

    .line 215
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_1e7

    .line 216
    :cond_fe
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_108

    .line 217
    const/16 v4, -0x2710

    const/4 v5, 0x0

    goto :goto_ef

    .line 220
    :cond_108
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v4, "channelGroup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_136

    .line 223
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    const-string/jumbo v6, "name"

    invoke-interface {v10, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_137

    .line 227
    new-instance v7, Landroid/app/NotificationChannelGroup;

    invoke-direct {v7, v4, v6}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v7, v10}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 230
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_137

    .line 222
    :cond_136
    const/4 v5, 0x0

    .line 234
    :cond_137
    :goto_137
    const-string v4, "channel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 235
    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const v6, 0xc350

    if-lt v4, v6, :cond_16e

    .line 236
    if-nez v15, :cond_16b

    .line 237
    const-string v2, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping further channels for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; app has too many"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move v15, v14

    goto :goto_ef

    .line 236
    :cond_16b
    const/16 v4, -0x2710

    goto :goto_ef

    .line 243
    :cond_16e
    const-string v4, "id"

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    const-string/jumbo v6, "name"

    invoke-interface {v10, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    const-string v7, "importance"

    invoke-static {v10, v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 247
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a7

    .line 248
    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v4, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 250
    if-eqz p2, :cond_19a

    .line 251
    iget-object v6, v9, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10, v6}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_19d

    .line 253
    :cond_19a
    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 255
    :goto_19d
    iget-boolean v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 257
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1a7
    const-string v4, "delegate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    .line 262
    const-string/jumbo v2, "uid"

    .line 263
    const/16 v4, -0x2710

    invoke-static {v10, v2, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 264
    const-string/jumbo v6, "name"

    .line 265
    invoke-static {v10, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    const-string v7, "enabled"

    invoke-static {v10, v7, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    .line 268
    const-string v8, "allowed"

    invoke-static {v10, v8, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 271
    nop

    .line 272
    if-eq v2, v4, :cond_1da

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1da

    .line 274
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v3, v6, v2, v7, v8}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    goto :goto_1db

    .line 278
    :cond_1da
    move-object v3, v5

    :goto_1db
    iput-object v3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_1dd
    .catchall {:try_start_84 .. :try_end_1dd} :catchall_215

    goto :goto_1e0

    .line 261
    :cond_1de
    const/16 v4, -0x2710

    .line 281
    :goto_1e0
    goto/16 :goto_ef

    .line 216
    :cond_1e2
    const/16 v4, -0x2710

    const/4 v5, 0x0

    goto/16 :goto_ef

    .line 284
    :cond_1e7
    :try_start_1e7
    invoke-direct {v9, v0}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_1ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e7 .. :try_end_1ea} :catch_1eb
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_215

    .line 287
    goto :goto_203

    .line 285
    :catch_1eb
    move-exception v0

    move-object v1, v0

    .line 286
    :try_start_1ed
    const-string v0, "NotificationPrefHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_203
    :goto_203
    const/4 v12, 0x2

    goto/16 :goto_24

    .line 175
    :cond_206
    const/4 v12, 0x2

    goto/16 :goto_24

    .line 168
    :cond_209
    const/4 v12, 0x2

    goto/16 :goto_24

    .line 292
    :cond_20c
    monitor-exit v13
    :try_end_20d
    .catchall {:try_start_1ed .. :try_end_20d} :catchall_215

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catchall_215
    move-exception v0

    :try_start_216
    monitor-exit v13
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    throw v0
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .registers 5

    .line 1385
    nop

    .line 1386
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1387
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1388
    const/4 p2, 0x0

    if-eqz p1, :cond_14

    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v1, :cond_14

    .line 1389
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1390
    const/4 p2, 0x1

    .line 1392
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 1393
    if-eqz p2, :cond_1a

    .line 1394
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1396
    :cond_1a
    return-void

    .line 1392
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 4

    .line 1322
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1323
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1324
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_f

    .line 1325
    monitor-exit v0

    return-void

    .line 1328
    :cond_f
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1330
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 1331
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1332
    return-void

    .line 1330
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public setBubblesAllowed(Ljava/lang/String;IZ)V
    .registers 5

    .line 503
    nop

    .line 504
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 505
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 506
    iget-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq p2, p3, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    .line 507
    :goto_f
    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 508
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 509
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1e

    .line 510
    if-eqz p2, :cond_1d

    .line 511
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 513
    :cond_1d
    return-void

    .line 509
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .registers 6

    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 1309
    :goto_a
    if-ne v0, p3, :cond_d

    .line 1310
    return-void

    .line 1312
    :cond_d
    nop

    .line 1313
    if-eqz p3, :cond_12

    const/16 v1, -0x3e8

    .line 1312
    :cond_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setImportance(Ljava/lang/String;II)V

    .line 1314
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 2

    .line 901
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 902
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .registers 5

    .line 1301
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1302
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1303
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 1304
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1305
    return-void

    .line 1303
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    .line 1371
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1372
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1374
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v1, 0x1

    if-eqz p2, :cond_15

    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean p2, p2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz p2, :cond_13

    goto :goto_15

    :cond_13
    const/4 p2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    move p2, v1

    .line 1375
    :goto_16
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v2, p3, p4, v1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    .line 1376
    iput-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1377
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 1378
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1379
    return-void

    .line 1377
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public setNotificationSoundTimeout(Ljava/lang/String;IJ)V
    .registers 5

    .line 1345
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput-wide p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    .line 1346
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1347
    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 567
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 568
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 569
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 570
    return-void

    .line 568
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public shouldHideSilentStatusIcons()Z
    .registers 2

    .line 897
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .registers 5

    .line 1402
    nop

    .line 1403
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1404
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1405
    if-eqz p1, :cond_14

    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p2, :cond_14

    .line 1406
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1407
    const/4 p1, 0x1

    goto :goto_15

    .line 1409
    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1c

    .line 1410
    if-eqz p1, :cond_1b

    .line 1411
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1413
    :cond_1b
    return-void

    .line 1409
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 1877
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 1878
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 1880
    :cond_b
    nop

    .line 1882
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 1883
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1884
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 1885
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    const-string/jumbo v7, "notification_badging"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_35

    move v5, v6

    goto :goto_36

    :cond_35
    move v5, v0

    .line 1888
    :goto_36
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1889
    if-eq v4, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v6, v0

    :goto_3f
    or-int/2addr v2, v6

    .line 1882
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1891
    :cond_43
    if-eqz v2, :cond_48

    .line 1892
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1894
    :cond_48
    return-void
.end method

.method public updateBubblesEnabled()V
    .registers 4

    .line 1863
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "notification_bubbles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1866
    :goto_12
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Z

    if-eq v1, v0, :cond_1b

    .line 1867
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Z

    .line 1868
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1870
    :cond_1b
    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 9
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

    .line 944
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 945
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

    .line 946
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_48

    .line 947
    if-eqz p2, :cond_48

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 948
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 949
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 950
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 951
    goto :goto_38

    .line 954
    :cond_48
    goto :goto_d

    .line 955
    :cond_49
    if-eqz p3, :cond_89

    .line 956
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 957
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 958
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 957
    invoke-direct {p0, p3, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    .line 959
    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 960
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_78
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 961
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 962
    goto :goto_78

    .line 963
    :cond_88
    goto :goto_4f

    .line 965
    :cond_89
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_8b
    move-exception p1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw p1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 11

    .line 764
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 767
    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_dc

    .line 771
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 772
    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_d4

    .line 775
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 776
    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 779
    :cond_33
    if-eqz p4, :cond_40

    .line 780
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 781
    invoke-virtual {p0, v2, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_47

    .line 783
    :cond_40
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 786
    :goto_47
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 787
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 788
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 790
    :cond_5b
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 793
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_73

    .line 794
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 797
    :cond_73
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_a0

    .line 802
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    iput p2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 803
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p2

    if-eqz p2, :cond_91

    .line 804
    const/4 p2, 0x2

    goto :goto_92

    :cond_91
    move p2, v3

    :goto_92
    iput p2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 805
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p2

    iput p2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 806
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p2

    iput-boolean p2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 809
    :cond_a0
    invoke-virtual {v2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b4

    .line 811
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 812
    if-eqz p4, :cond_ad

    move v3, v4

    :cond_ad
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 811
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 815
    :cond_b4
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne p1, p2, :cond_c6

    .line 816
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-eq p1, p2, :cond_cf

    .line 817
    :cond_c6
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 819
    :cond_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_d .. :try_end_d0} :catchall_e4

    .line 820
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 821
    return-void

    .line 773
    :cond_d4
    :try_start_d4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Channel does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 769
    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 819
    :catchall_e4
    move-exception p1

    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_d4 .. :try_end_e6} :catchall_e4

    throw p1
.end method

.method public updateZenPolicy(Z)V
    .registers 11

    .line 1284
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1285
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1288
    if-eqz p1, :cond_17

    const/4 p1, 0x1

    move v7, p1

    goto :goto_19

    .line 1289
    :cond_17
    const/4 p1, 0x0

    move v7, p1

    :goto_19
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1285
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1290
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    const-string/jumbo v4, "ranking"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "version"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    iget-boolean v5, v0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v5, :cond_37

    if-eqz p2, :cond_20

    if-nez v2, :cond_37

    .line 410
    :cond_20
    const-string/jumbo v5, "silent_status_icons"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    iget-boolean v5, v0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hide_gentle"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const-string/jumbo v5, "silent_status_icons"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    :cond_37
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 416
    :try_start_3a
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 417
    const/4 v7, 0x0

    move v8, v7

    :goto_42
    if-ge v8, v6, :cond_1af

    .line 418
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 419
    if-eqz p2, :cond_58

    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-eq v10, v2, :cond_58

    .line 420
    goto/16 :goto_1ab

    .line 422
    :cond_58
    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const-wide/16 v11, 0x0

    const/16 v13, -0x3e8

    if-ne v10, v13, :cond_91

    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-nez v10, :cond_91

    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-ne v10, v13, :cond_91

    iget-boolean v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-ne v10, v4, :cond_91

    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    if-nez v10, :cond_91

    iget-wide v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    cmp-long v10, v14, v11

    if-nez v10, :cond_91

    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 429
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_91

    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 430
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-gtz v10, :cond_91

    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v10, :cond_91

    iget-boolean v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v10, v4, :cond_8f

    goto :goto_91

    :cond_8f
    move v10, v7

    goto :goto_92

    :cond_91
    :goto_91
    move v10, v4

    .line 433
    :goto_92
    if-eqz v10, :cond_1ab

    .line 434
    const-string/jumbo v10, "package"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const-string/jumbo v10, "name"

    iget-object v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v1, v3, v10, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v10, v13, :cond_b1

    .line 437
    const-string v10, "importance"

    iget v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v3, v10, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    :cond_b1
    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v10, :cond_c1

    .line 440
    const-string/jumbo v10, "priority"

    iget v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v3, v10, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    :cond_c1
    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v10, v13, :cond_d1

    .line 443
    const-string/jumbo v10, "visibility"

    iget v13, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v3, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    :cond_d1
    iget-wide v13, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    cmp-long v10, v13, v11

    if-eqz v10, :cond_e3

    .line 446
    const-string/jumbo v10, "sound-timeout"

    iget-wide v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    :cond_e3
    iget-boolean v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v10, v4, :cond_f2

    .line 449
    const-string v10, "allow_bubble"

    iget-boolean v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    :cond_f2
    const-string/jumbo v10, "show_badge"

    iget-boolean v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string v10, "app_user_locked_fields"

    iget v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 453
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 452
    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    if-nez p2, :cond_117

    .line 456
    const-string/jumbo v10, "uid"

    iget v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    :cond_117
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v10, :cond_163

    .line 460
    const-string v10, "delegate"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    const-string/jumbo v10, "name"

    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    const-string/jumbo v10, "uid"

    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v10, v10, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v10, v4, :cond_14b

    .line 465
    const-string v10, "enabled"

    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    :cond_14b
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v10, v10, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v10, v4, :cond_15e

    .line 468
    const-string v10, "allowed"

    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 469
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 468
    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    :cond_15e
    const-string v10, "delegate"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    :cond_163
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannelGroup;

    .line 475
    invoke-virtual {v11, v1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 476
    goto :goto_16d

    .line 478
    :cond_17d
    iget-object v9, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_187
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    .line 479
    if-eqz p2, :cond_1a1

    .line 480
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v11

    if-nez v11, :cond_1a4

    .line 481
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1, v11}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_1a4

    .line 484
    :cond_1a1
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 486
    :cond_1a4
    :goto_1a4
    goto :goto_187

    .line 488
    :cond_1a5
    const-string/jumbo v9, "package"

    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    :cond_1ab
    :goto_1ab
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    .line 491
    :cond_1af
    monitor-exit v5
    :try_end_1b0
    .catchall {:try_start_3a .. :try_end_1b0} :catchall_1b7

    .line 492
    const-string/jumbo v0, "ranking"

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    return-void

    .line 491
    :catchall_1b7
    move-exception v0

    :try_start_1b8
    monitor-exit v5
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v0
.end method
