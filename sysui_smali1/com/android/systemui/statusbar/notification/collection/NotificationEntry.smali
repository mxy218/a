.class public final Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.super Ljava/lang/Object;
.source "NotificationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;
    }
.end annotation


# instance fields
.field public ambient:Z

.field public aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public autoRedacted:Z

.field public canBubble:Z

.field public centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public channel:Landroid/app/NotificationChannel;

.field public editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public importance:I

.field private initializationTime:J

.field private interruption:Z

.field public final key:Ljava/lang/String;

.field public lastAudiblyAlertedMs:J

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHeadsUp:Z

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mDebugThrowable:Ljava/lang/Throwable;

.field private mHighPriority:Z

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private mIsTopBucket:Z

.field private mOnSensitiveChangedListener:Ljava/lang/Runnable;

.field private mPulseSupressed:Z

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field private mSensitive:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field private parent:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field private row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public suppressedVisualEffects:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public suspended:Z

.field public systemGeneratedSmartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

.field public targetSdk:I

.field public userSentiment:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 7
    .param p2  # Landroid/service/notification/NotificationListenerService$Ranking;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x7d0

    .line 102
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->userSentiment:I

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 110
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 127
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 128
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    const/4 v3, 0x0

    .line 129
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 132
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    const-wide/16 v0, -0x1

    .line 137
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 177
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz p2, :cond_39

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    :cond_39
    return-void
.end method

.method private static isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .registers 2

    .line 806
    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .registers 2

    const-string v0, "call"

    .line 798
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "msg"

    .line 799
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "alarm"

    .line 800
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "event"

    .line 801
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "reminder"

    .line 802
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method private shouldSuppressVisualEffect(I)Z
    .registers 4

    .line 736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isExemptFromDndVisualSuppression()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 739
    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suppressedVisualEffects:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method


# virtual methods
.method public abortTask()V
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_a

    .line 440
    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    :cond_a
    return-void
.end method

.method public areChildrenExpanded()Z
    .registers 1

    .line 648
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public areGutsExposed()Z
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public closeRemoteInput()V
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->closeRemoteInput()V

    :cond_7
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 303
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_14f

    .line 311
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/0x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 319
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 327
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIncreasedSize(Z)V

    .line 332
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 333
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 334
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 338
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationEntry$-qQWpuXv2gxu8--zPidD9i3gPVE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationEntry$-qQWpuXv2gxu8--zPidD9i3gPVE;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 357
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 361
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_116

    goto :goto_12f

    .line 365
    :cond_116
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 366
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update centered icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12f
    :goto_12f
    return-void

    .line 341
    :cond_130
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 342
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 343
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 344
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 345
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t create icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_14f
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No small icon in notification from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public freeContentViewWhenSafe(I)V
    .registers 2

    .line 551
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->freeContentViewWhenSafe(I)V

    :cond_7
    return-void
.end method

.method public getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 264
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 269
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2a
    return-object v0
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .registers 6

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_c

    .line 424
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->color:I

    .line 425
    :goto_c
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    return v0

    .line 428
    :cond_16
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    .line 430
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 431
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 432
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    return p0
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .registers 1

    .line 661
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1

    .line 624
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 461
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object p0
.end method

.method public hasFinishedInitialization()Z
    .registers 7

    .line 291
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public hasInterrupted()Z
    .registers 1

    .line 206
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return p0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .registers 7

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public hasJustSentRemoteInput()Z
    .registers 7

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isAutoHeadsUp()Z
    .registers 1

    .line 611
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return p0
.end method

.method public isBubble()Z
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isChildInGroup()Z
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->parent:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isClearable()Z
    .registers 4

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_31

    .line 699
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 700
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    move v0, v1

    .line 701
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 702
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 703
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    :goto_31
    return v1
.end method

.method isExemptFromDndVisualSuppression()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 722
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    return v2

    .line 726
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_29

    return v2

    .line 729
    :cond_29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_34

    return v2

    :cond_34
    return v1
.end method

.method public isHighPriority()Z
    .registers 1

    .line 210
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHighPriority:Z

    return p0
.end method

.method public isLastMessageFromReply()Z
    .registers 5

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 490
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputHistory"

    .line 491
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 493
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    return v2

    :cond_1c
    const-string v0, "android.messages"

    .line 496
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 497
    array-length v3, v0

    if-lez v3, :cond_4b

    .line 498
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    .line 499
    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_4b

    .line 500
    check-cast v0, Landroid/os/Bundle;

    .line 501
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 504
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v0

    if-nez v0, :cond_3e

    return v2

    :cond_3e
    const-string v1, "android.messagingUser"

    .line 508
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/Person;

    .line 509
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4b
    return v1
.end method

.method public isMediaNotification()Z
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 535
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isMediaRow()Z

    move-result p0

    return p0
.end method

.method public isPulseSuppressed()Z
    .registers 1

    .line 834
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isRowDismissed()Z
    .registers 1

    .line 559
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDismissed()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRowHeadsUp()Z
    .registers 1

    .line 583
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRowPinned()Z
    .registers 1

    .line 575
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRowRemoved()Z
    .registers 1

    .line 563
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSensitive()Z
    .registers 1

    .line 826
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    return p0
.end method

.method public isSummaryWithChildren()Z
    .registers 1

    .line 670
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTopBucket()Z
    .registers 1

    .line 223
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsTopBucket:Z

    return p0
.end method

.method public isTopLevelChild()Z
    .registers 1

    .line 543
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isTopLevelChild()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public synthetic lambda$createIcons$0$NotificationEntry(I)V
    .registers 2

    .line 350
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 351
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconsVisible(Z)V

    :cond_c
    return-void
.end method

.method public mustStayOnScreen()Z
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public notifyFullScreenIntentLaunched()V
    .registers 3

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    return-void
.end method

.method public notifyHeightChanged(Z)V
    .registers 2

    .line 640
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_7
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 678
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    :cond_7
    return-void
.end method

.method public onInflationTaskFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public onRemoteInputInserted()V
    .registers 3

    const-wide/16 v0, -0x7d0

    .line 478
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    return-void
.end method

.method public populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 4

    .line 185
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 186
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastAudiblyAlertedMs:J

    .line 187
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    .line 189
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->snoozeCriteria:Ljava/util/List;

    .line 190
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getUserSentiment()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->userSentiment:I

    .line 191
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_33

    :cond_2f
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v0

    :goto_33
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    .line 193
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    new-array v0, v1, [Ljava/lang/CharSequence;

    goto :goto_4b

    .line 195
    :cond_3f
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    :goto_4b
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    .line 196
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suppressedVisualEffects:I

    .line 197
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suspended:Z

    .line 198
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble:Z

    return-void
.end method

.method public removeRow()V
    .registers 1

    .line 666
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoved()V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    :cond_7
    return-void
.end method

.method public resetUserExpansion()V
    .registers 1

    .line 547
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetUserExpansion()V

    :cond_7
    return-void
.end method

.method public rowExists()Z
    .registers 1

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public sendAccessibilityEvent(I)V
    .registers 2

    .line 523
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    .line 524
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_7
    return-void
.end method

.method public setAutoHeadsUp(Z)V
    .registers 2

    .line 603
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .registers 2

    .line 636
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_7
    return-void
.end method

.method public setHasSentReply()V
    .registers 2

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    return-void
.end method

.method public setHeadsUp(Z)V
    .registers 2

    .line 591
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    :cond_7
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .registers 2

    .line 595
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_7
    return-void
.end method

.method public setHeadsUpIsVisible()V
    .registers 1

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpIsVisible()V

    :cond_7
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_c

    .line 373
    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 377
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_13

    .line 378
    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 381
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p0, :cond_1a

    .line 382
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_10

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz p0, :cond_10

    .line 451
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    :cond_10
    return-void
.end method

.method public setInitializationTime(J)V
    .registers 7

    .line 517
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 518
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    :cond_a
    return-void
.end method

.method public setInterruption()V
    .registers 2

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return-void
.end method

.method public setIsHighPriority(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHighPriority:Z

    return-void
.end method

.method public setIsTopBucket(Z)V
    .registers 2

    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsTopBucket:Z

    return-void
.end method

.method public setKeepInParent(Z)V
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setKeepInParent(Z)V

    :cond_7
    return-void
.end method

.method public setOnSensitiveChangedListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 830
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitiveChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPulseSuppressed(Z)V
    .registers 2

    .line 838
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setRowPinned(Z)V
    .registers 2

    .line 579
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setPinned(Z)V

    :cond_7
    return-void
.end method

.method public setSensitive(ZZ)V
    .registers 4

    .line 816
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 817
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    if-eq p1, p2, :cond_14

    .line 818
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 819
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitiveChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_14

    .line 820
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

.method public setUserExpanded(ZZ)V
    .registers 3

    .line 632
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :cond_7
    return-void
.end method

.method public setUserLocked(Z)V
    .registers 2

    .line 628
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_7
    return-void
.end method

.method public shouldSuppressAmbient()Z
    .registers 2

    const/16 v0, 0x80

    .line 771
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressFullScreenIntent()Z
    .registers 2

    const/4 v0, 0x4

    .line 747
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationDot()Z
    .registers 2

    const/16 v0, 0x40

    .line 789
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationList()Z
    .registers 2

    const/16 v0, 0x100

    .line 779
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressPeek()Z
    .registers 2

    const/16 v0, 0x10

    .line 755
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressStatusBar()Z
    .registers 2

    const/16 v0, 0x20

    .line 763
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public showingPulsing()Z
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_8b

    .line 397
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 398
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 399
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 400
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 404
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 405
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 412
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p1, :cond_8b

    .line 413
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 414
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p0

    if-eqz p0, :cond_5d

    goto :goto_8b

    .line 415
    :cond_5d
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update centered icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 409
    :cond_74
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    :goto_8b
    return-void
.end method
