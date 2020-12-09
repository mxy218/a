.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationRecord$Light;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final MAX_SOUND_DELAY_MS:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationRecord"


# instance fields
.field isCanceled:Z

.field public isUpdate:Z

.field private mAdjustmentIssuer:Ljava/lang/String;

.field private final mAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBubble:Z

.field mAm:Landroid/app/IActivityManager;

.field private mAssistantImportance:I

.field private mAttributes:Landroid/media/AudioAttributes;

.field private mAuthoritativeRank:I

.field private mChannel:Landroid/app/NotificationChannel;

.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private mCreationTimeMs:J

.field private mCriticality:I

.field private mEditChoicesBeforeSending:Z

.field private mGlobalSortKey:Ljava/lang/String;

.field private mGrantableUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenSmartReplies:Z

.field private mHidden:Z

.field private mImportance:I

.field private mImportanceExplanationCode:I

.field private mInitialImportanceExplanationCode:I

.field private mIntercept:Z

.field private mInterruptionTimeMs:J

.field private mIsAppImportanceLocked:Z

.field private mIsInterruptive:Z

.field private mLastAudiblyAlertedMs:J

.field private mLastIntrusive:J

.field private mLight:Lcom/android/server/notification/NotificationRecord$Light;

.field private mNumberOfSmartActionsAdded:I

.field private mNumberOfSmartRepliesAdded:I

.field final mOriginalFlags:I

.field private mPackagePriority:I

.field private mPackageVisibility:I

.field private mPeopleOverride:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreChannelsNotification:Z

.field private mRankingTimeMs:J

.field private mRecentlyIntrusive:Z

.field private mRecordedInterruption:Z

.field private mShowBadge:Z

.field private mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSound:Landroid/net/Uri;

.field private final mStats:Landroid/service/notification/NotificationStats;

.field private mSuggestionsGeneratedByAssistant:Z

.field private mSuppressedVisualEffects:I

.field private mSystemGeneratedSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemImportance:I

.field final mTargetSdkVersion:I

.field private mTextChanged:Z

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUpdateTimeMs:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserExplanation:Ljava/lang/String;

.field private mUserSentiment:I

.field private mVibration:[J

.field private mVisibleSinceMs:J

.field permissionOwner:Landroid/os/IBinder;

.field final sbn:Landroid/service/notification/StatusBarNotification;

.field stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 90
    const-string v0, "NotificationRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationRecord;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    .registers 6

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 145
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 146
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 152
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 154
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 194
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 195
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 196
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 197
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAm:Landroid/app/IActivityManager;

    .line 198
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 199
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    .line 200
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 201
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 202
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 203
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 204
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 205
    new-instance p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 206
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 207
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->isPreChannelsNotification()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 208
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateSound()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 209
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    .line 210
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 211
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 212
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateLights()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 214
    new-instance p1, Landroid/service/notification/NotificationStats;

    invoke-direct {p1}, Landroid/service/notification/NotificationStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 215
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateGrantableUris()V

    .line 217
    return-void
.end method

.method private calculateAttributes()Landroid/media/AudioAttributes;
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 311
    if-nez v1, :cond_12

    .line 312
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 315
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_61

    .line 316
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_61

    .line 318
    iget-object v2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_29

    .line 320
    iget-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    goto :goto_61

    .line 321
    :cond_29
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v2, :cond_45

    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 322
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 324
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    .line 325
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_61

    .line 327
    :cond_45
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_61

    .line 328
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Invalid stream type: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationRecord"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_61
    :goto_61
    return-object v1
.end method

.method private calculateInitialImportance()I
    .registers 10

    .line 335
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1c

    .line 338
    move v2, v4

    goto :goto_1d

    .line 339
    :cond_1c
    move v2, v3

    :goto_1d
    iput v2, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 342
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_27

    .line 343
    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 347
    :cond_27
    nop

    .line 348
    iget v2, v0, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    invoke-static {v2, v5, v4}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v2

    iput v2, v0, Landroid/app/Notification;->priority:I

    .line 350
    iget v2, v0, Landroid/app/Notification;->priority:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v2, v5, :cond_4a

    const/4 v5, -0x1

    if-eq v2, v5, :cond_47

    if-eqz v2, :cond_44

    if-eq v2, v3, :cond_42

    if-eq v2, v4, :cond_42

    move v2, v7

    goto :goto_4c

    .line 362
    :cond_42
    move v2, v6

    goto :goto_4c

    .line 358
    :cond_44
    nop

    .line 359
    move v2, v7

    goto :goto_4c

    .line 355
    :cond_47
    nop

    .line 356
    move v2, v4

    goto :goto_4c

    .line 352
    :cond_4a
    nop

    .line 353
    move v2, v3

    .line 365
    :goto_4c
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v2, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 366
    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-nez v8, :cond_5a

    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    if-eqz v8, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    :cond_5a
    :goto_5a
    iput-boolean v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 370
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_8b

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_6e

    .line 372
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 373
    :cond_6e
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-nez v1, :cond_77

    if-le v2, v4, :cond_77

    .line 374
    move v2, v4

    .line 377
    :cond_77
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v1, :cond_80

    .line 378
    if-ge v2, v7, :cond_80

    .line 379
    move v2, v7

    .line 383
    :cond_80
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_86

    .line 384
    move v1, v6

    goto :goto_87

    .line 383
    :cond_86
    move v1, v2

    .line 386
    :goto_87
    nop

    .line 387
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 391
    :cond_8b
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 392
    return v1
.end method

.method private calculateLights()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 9

    .line 252
    nop

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 258
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    goto :goto_30

    .line 259
    :cond_2f
    move v2, v3

    .line 260
    :goto_30
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_41

    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_42

    .line 261
    :cond_41
    move-object v4, v5

    .line 262
    :goto_42
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_76

    .line 263
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_76

    .line 265
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 266
    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_75

    .line 267
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-direct {v5, v4, v6, v7}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    .line 269
    iget v2, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_77

    .line 270
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v5, v3, v0, v1}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_77

    .line 274
    :cond_75
    goto :goto_77

    .line 277
    :cond_76
    move-object v5, v4

    :cond_77
    :goto_77
    return-object v5
.end method

.method private calculateRankingTimeMs(J)J
    .registers 10

    .line 906
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 908
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    iget-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1b

    .line 909
    iget-wide p1, v0, Landroid/app/Notification;->when:J

    return-wide p1

    .line 913
    :cond_1b
    cmp-long v0, p1, v3

    if-lez v0, :cond_20

    .line 914
    return-wide p1

    .line 916
    :cond_20
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p1

    return-wide p1
.end method

.method private calculateSound()Landroid/net/Uri;
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 237
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3b

    .line 240
    iget v1, v0, Landroid/app/Notification;->defaults:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 241
    :goto_34
    if-eqz v2, :cond_39

    .line 242
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_3b

    .line 244
    :cond_39
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 247
    :cond_3b
    :goto_3b
    return-object v1
.end method

.method private calculateUserSentiment()V
    .registers 2

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-eqz v0, :cond_13

    .line 1066
    :cond_10
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 1068
    :cond_13
    return-void
.end method

.method private calculateVibration()[J
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 282
    const v2, 0x1070026

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 288
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    if-nez v1, :cond_27

    .line 289
    move-object v1, v0

    goto :goto_31

    :cond_27
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    goto :goto_31

    .line 291
    :cond_30
    const/4 v1, 0x0

    .line 293
    :goto_31
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_56

    .line 294
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_56

    .line 296
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 297
    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    .line 299
    :goto_50
    if-eqz v2, :cond_53

    .line 300
    goto :goto_57

    .line 302
    :cond_53
    iget-object v0, v1, Landroid/app/Notification;->vibrate:[J

    goto :goto_57

    .line 305
    :cond_56
    move-object v0, v1

    :goto_57
    return-object v0
.end method

.method private getUserExplanation()Ljava/lang/String;
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 713
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    .line 716
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    return-object v0
.end method

.method private isPreChannelsNotification()Z
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 221
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_18

    .line 222
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private setUserSentiment(I)V
    .registers 2

    .line 1071
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 1072
    return-void
.end method

.method private visitGrantableUri(Landroid/net/Uri;Z)V
    .registers 12

    .line 1214
    if-eqz p1, :cond_84

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_84

    .line 1217
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 1218
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    return-void

    .line 1220
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1223
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    .line 1224
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 1226
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 1223
    move v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 1228
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    if-nez v1, :cond_3e

    .line 1229
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 1231
    :cond_3e
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_43} :catch_46
    .catchall {:try_start_1f .. :try_end_43} :catchall_44

    goto :goto_7f

    .line 1241
    :catchall_44
    move-exception p1

    goto :goto_7b

    .line 1232
    :catch_46
    move-exception v1

    .line 1233
    if-nez p2, :cond_7f

    .line 1234
    :try_start_49
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v2, 0x1c

    if-ge p2, v2, :cond_7a

    .line 1237
    const-string p2, "NotificationRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1235
    :cond_7a
    throw v1
    :try_end_7b
    .catchall {:try_start_49 .. :try_end_7b} :catchall_44

    .line 1241
    :goto_7b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_7f
    :goto_7f
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1242
    nop

    .line 1243
    return-void

    .line 1214
    :cond_84
    :goto_84
    return-void
.end method


# virtual methods
.method public addAdjustment(Landroid/service/notification/Adjustment;)V
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public applyAdjustments()V
    .registers 9

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 617
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 618
    :try_start_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 619
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v3

    .line 620
    const-string v4, "key_people"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 621
    nop

    .line 622
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_people"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 623
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setPeopleOverride(Ljava/util/ArrayList;)V

    .line 625
    :cond_32
    const-string v4, "key_snooze_criteria"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 626
    nop

    .line 627
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_snooze_criteria"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 629
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSnoozeCriteria(Ljava/util/ArrayList;)V

    .line 631
    :cond_48
    const-string v4, "key_group_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 632
    nop

    .line 633
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_group_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 636
    :cond_5e
    const-string v4, "key_user_sentiment"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_84

    .line 639
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-nez v4, :cond_84

    .line 640
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    and-int/2addr v4, v5

    if-nez v4, :cond_84

    .line 641
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "key_user_sentiment"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setUserSentiment(I)V

    .line 645
    :cond_84
    const-string v4, "key_contextual_actions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 646
    const-string v4, "key_contextual_actions"

    .line 647
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 646
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSystemGeneratedSmartActions(Ljava/util/ArrayList;)V

    .line 649
    :cond_95
    const-string v4, "key_text_replies"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 650
    const-string v4, "key_text_replies"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSmartReplies(Ljava/util/ArrayList;)V

    .line 652
    :cond_a6
    const-string v4, "key_importance"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 653
    const-string v4, "key_importance"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 654
    const/16 v6, -0x3e8

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 655
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 656
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setAssistantImportance(I)V

    .line 658
    :cond_c1
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d3

    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d3

    .line 659
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    .line 661
    :cond_d3
    goto/16 :goto_c

    .line 663
    :cond_d5
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 664
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_dc
    move-exception v1

    monitor-exit v0
    :try_end_de
    .catchall {:try_start_6 .. :try_end_de} :catchall_dc

    throw v1
.end method

.method protected calculateGrantableUris()V
    .registers 3

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1192
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;-><init>(Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 1196
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_2a

    .line 1199
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    invoke-direct {p0, v1, v0}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1203
    :cond_2a
    return-void
.end method

.method protected calculateImportance()V
    .registers 3

    .line 754
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 755
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 758
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v0

    const/16 v1, -0x3e8

    if-nez v0, :cond_35

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq v0, v1, :cond_35

    .line 760
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_35

    .line 761
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    if-nez v0, :cond_35

    .line 762
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 763
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 765
    :cond_35
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    if-eq v0, v1, :cond_3e

    .line 766
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 767
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 769
    :cond_3e
    return-void
.end method

.method public canBubble()Z
    .registers 2

    .line 980
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    return v0
.end method

.method public canShowBadge()Z
    .registers 2

    .line 988
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    return v0
.end method

.method public copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 397
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 398
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 399
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 400
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 401
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 402
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 403
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 404
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 405
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 406
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_45

    .line 407
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 410
    :cond_45
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JZI)V
    .registers 9

    .line 421
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 423
    iget-object p4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p4

    const-wide v0, 0x10900000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 424
    const-wide v0, 0x10e00000002L

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 425
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p4

    if-eqz p4, :cond_30

    .line 426
    const-wide p4, 0x10900000004L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 428
    :cond_30
    const-wide p4, 0x10800000008L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    move v0, v1

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 429
    const-wide p4, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v0

    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    :goto_50
    invoke-virtual {p1, p4, p5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 430
    const-wide p4, 0x10500000003L

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 431
    const-wide p4, 0x10900000009L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 432
    const-wide p4, 0x1110000000aL

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 433
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_91

    .line 434
    const-wide p4, 0x10900000005L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 436
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p4

    if-eqz p4, :cond_a3

    .line 437
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p4

    const-wide v0, 0x10b00000006L

    invoke-virtual {p4, p1, v0, v1}, Landroid/media/AudioAttributes;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 439
    :cond_a3
    const-wide p4, 0x1090000000bL

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 440
    const-wide p4, 0x1090000000cL

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 442
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 443
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 16

    .line 452
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "opPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fullscreenIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deleteIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "groupAlertBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tickerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-object v0, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    if-nez v0, :cond_1e2

    .line 471
    iget-object v0, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    if-eqz p4, :cond_1de

    .line 474
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_1d3

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d5

    :cond_1d3
    const-string v0, ""

    :goto_1d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e1

    .line 477
    :cond_1de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :goto_1e1
    goto :goto_1e5

    .line 480
    :cond_1e2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :goto_1e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bigContentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "headsUpContentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 485
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p3, Landroid/app/Notification;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "color=0x%08x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "timeout="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p3}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    iget-object v0, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_2e7

    iget-object v0, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-lez v0, :cond_2e7

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "actions={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v0, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    .line 492
    move v6, v2

    :goto_2a2
    if-ge v6, v0, :cond_2d3

    .line 493
    iget-object v7, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v7, v7, v6

    .line 494
    if-eqz v7, :cond_2d0

    .line 495
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    .line 497
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    aput-object v9, v8, v5

    .line 499
    iget-object v9, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v9, :cond_2bf

    move-object v7, v1

    goto :goto_2c5

    :cond_2bf
    iget-object v7, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2c5
    aput-object v7, v8, v4

    .line 495
    const-string v7, "%s    [%d] \"%s\" -> %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    :cond_2d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a2

    .line 503
    :cond_2d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  }"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    :cond_2e7
    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_406

    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_406

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "extras={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_311
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    iget-object v7, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 510
    if-nez v6, :cond_346

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3ef

    .line 513
    :cond_346
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    if-eqz p4, :cond_35d

    instance-of v7, v6, Ljava/lang/CharSequence;

    if-nez v7, :cond_35b

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_35d

    :cond_35b
    goto/16 :goto_3ec

    .line 516
    :cond_35d
    instance-of v7, v6, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_383

    .line 517
    new-array v7, v5, [Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    .line 518
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 519
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    .line 517
    const-string v6, " (%dx%d)"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3ec

    .line 520
    :cond_383
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    const-string v8, ")"

    const-string v9, " ("

    if-eqz v7, :cond_3d3

    .line 521
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 522
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    if-nez p4, :cond_3d2

    .line 524
    move v8, v2

    :goto_3ad
    if-ge v8, v7, :cond_3d2

    .line 525
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 526
    new-array v9, v4, [Ljava/lang/Object;

    aput-object p2, v9, v2

    .line 527
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 526
    const-string v10, "%s      [%d] %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    add-int/lit8 v8, v8, 0x1

    goto :goto_3ad

    .line 530
    :cond_3d2
    goto :goto_3ec

    .line 531
    :cond_3d3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    :goto_3ec
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 535
    :goto_3ef
    goto/16 :goto_311

    .line 536
    :cond_3f1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    :cond_406
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stats="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mContactAffinity="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mRecentlyIntrusive="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPackagePriority="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPackageVisibility="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSystemImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 544
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 543
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAsstImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 546
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 545
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 548
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 547
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mImportanceExplanation="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsAppImportanceLocked="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIntercept="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHidden=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mGlobalSortKey="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mRankingTimeMs="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mCreationTimeMs="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mVisibleSinceMs="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mUpdateTimeMs="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mInterruptionTimeMs="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSuppressedVisualEffects= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    iget-boolean p4, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz p4, :cond_6c0

    .line 561
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [Ljava/lang/Object;

    iget v1, p3, Landroid/app/Notification;->defaults:I

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 561
    const-string v1, "defaults=0x%08x flags=0x%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "n.sound="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "n.audioStreamType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "n.audioAttributes="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p3, Landroid/app/Notification;->ledARGB:I

    .line 567
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Landroid/app/Notification;->ledOnMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p3, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 566
    const-string v1, "  led=0x%08x onMs=%d offMs=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "vibrate="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/app/Notification;->vibrate:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    :cond_6c0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSound= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mVibration= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAttributes= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mLight= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mShowBadge="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mColorized="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->isColorized()Z

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "mIsInterruptive="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "effectiveNotificationChannel="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object p3

    const-string p4, ","

    if-eqz p3, :cond_7b4

    .line 579
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "overridePeople= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    :cond_7b4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_7da

    .line 582
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "snoozeCriteria="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    :cond_7da
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mAdjustments="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;
    .registers 5

    .line 446
    if-nez p1, :cond_6

    const-string/jumbo p1, "null"

    return-object p1

    .line 447
    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 447
    const-string p1, "%s/0x%08x (%d bytes): %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssistantImportance()I
    .registers 2

    .line 746
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    return v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getAuthoritativeRank()I
    .registers 2

    .line 945
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    return v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getContactAffinity()F
    .registers 2

    .line 677
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    return v0
.end method

.method public getCriticality()I
    .registers 2

    .line 807
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return v0
.end method

.method public getEditChoicesBeforeSending()Z
    .registers 2

    .line 1131
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    return v0
.end method

.method public getExposureMs(J)I
    .registers 7

    .line 871
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    sub-long/2addr p1, v0

    long-to-int p1, p1

    :goto_c
    return p1
.end method

.method public getFlags()I
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    return v0
.end method

.method public getFreshnessMs(J)I
    .registers 5

    .line 855
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public getGlobalSortKey()Ljava/lang/String;
    .registers 2

    .line 924
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantableUris()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImportance()I
    .registers 2

    .line 772
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 4

    .line 776
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    const/4 v2, 0x5

    if-eq v0, v2, :cond_20

    .line 789
    return-object v1

    .line 787
    :cond_15
    const-string/jumbo v0, "system"

    return-object v0

    .line 785
    :cond_19
    const-string v0, "asst"

    return-object v0

    .line 783
    :cond_1c
    const-string/jumbo v0, "user"

    return-object v0

    .line 781
    :cond_20
    const-string v0, "app"

    return-object v0

    .line 778
    :cond_23
    return-object v1
.end method

.method public getInterruptionMs(J)I
    .registers 5

    .line 875
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public getIsAppImportanceLocked()Z
    .registers 2

    .line 964
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    return v0
.end method

.method public getItemLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudiblyAlertedMs()J
    .registers 3

    .line 1048
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public getLastIntrusive()J
    .registers 3

    .line 692
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    return-wide v0
.end method

.method public getLifespanMs(J)I
    .registers 5

    .line 863
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public getLight()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    return-object v0
.end method

.method public getLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public getLogMaker(J)Landroid/metrics/LogMaker;
    .registers 6

    .line 1246
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1248
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1249
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31b

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1250
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1252
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1251
    const/16 p2, 0x5dc

    invoke-virtual {v0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1254
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/16 v0, -0x3e8

    if-eqz p2, :cond_7f

    .line 1255
    const/16 v1, 0x698

    .line 1256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1255
    invoke-virtual {p1, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1259
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_61

    const/4 v1, 0x4

    if-ne p2, v1, :cond_7f

    :cond_61
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget p2, p2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    if-eq p2, v0, :cond_7f

    .line 1263
    const/16 p2, 0x69a

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 1264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1263
    invoke-virtual {p1, p2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1265
    const/16 p2, 0x699

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 1266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1265
    invoke-virtual {p1, p2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1270
    :cond_7f
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq p2, v0, :cond_8c

    .line 1271
    const/16 v0, 0x69b

    .line 1272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1271
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1277
    :cond_8c
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    if-eqz p2, :cond_9d

    .line 1278
    const/16 v0, 0x6ce

    .line 1279
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1278
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1281
    :cond_9d
    return-object p1
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNumSmartActionsAdded()I
    .registers 2

    .line 1119
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    return v0
.end method

.method public getNumSmartRepliesAdded()I
    .registers 2

    .line 1111
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    return v0
.end method

.method public getPackagePriority()I
    .registers 2

    .line 700
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    return v0
.end method

.method public getPackageVisibilityOverride()I
    .registers 2

    .line 708
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return v0
.end method

.method public getPeopleOverride()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRankingTimeMs()J
    .registers 3

    .line 847
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    return-wide v0
.end method

.method public getSmartReplies()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSnoozeCriteria()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .registers 2

    .line 996
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public getStats()Landroid/service/notification/NotificationStats;
    .registers 2

    .line 1079
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    return-object v0
.end method

.method public getSuggestionsGeneratedByAssistant()Z
    .registers 2

    .line 1127
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    return v0
.end method

.method public getSuppressedVisualEffects()I
    .registers 2

    .line 832
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getSystemGeneratedSmartActions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    return v0
.end method

.method public getUserSentiment()I
    .registers 2

    .line 1075
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    return v0
.end method

.method public getVibration()[J
    .registers 2

    .line 1000
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    return-object v0
.end method

.method public hasAdjustment(Ljava/lang/String;)Z
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 601
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 602
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 604
    :cond_22
    goto :goto_9

    .line 605
    :cond_23
    monitor-exit v0

    .line 606
    const/4 p1, 0x0

    return p1

    .line 605
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public hasBeenVisiblyExpanded()Z
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->hasBeenVisiblyExpanded()Z

    move-result v0

    return v0
.end method

.method public hasRecordedInterruption()Z
    .registers 2

    .line 1039
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    return v0
.end method

.method public hasSeenSmartReplies()Z
    .registers 2

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    return v0
.end method

.method public hasUndecoratedRemoteView()Z
    .registers 6

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v1

    .line 1295
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    const-class v4, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 1296
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-class v4, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 1297
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    .line 1298
    :goto_1f
    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v4, :cond_2e

    iget-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v4, :cond_2e

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v3

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v2

    .line 1301
    :goto_2f
    if-eqz v0, :cond_34

    if-nez v1, :cond_34

    goto :goto_35

    :cond_34
    move v2, v3

    :goto_35
    return v2
.end method

.method public isAudioAttributesUsage(I)Z
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isCategory(Ljava/lang/String;)Z
    .registers 3

    .line 836
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isHidden()Z
    .registers 2

    .line 823
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    return v0
.end method

.method public isIntercepted()Z
    .registers 2

    .line 811
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return v0
.end method

.method public isInterruptive()Z
    .registers 2

    .line 1043
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    return v0
.end method

.method public isNewEnoughForAlerting(J)Z
    .registers 3

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result p1

    const/16 p2, 0x7d0

    if-gt p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isProxied()Z
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRecentlyIntrusive()Z
    .registers 2

    .line 688
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    return v0
.end method

.method public isSeen()Z
    .registers 2

    .line 929
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$calculateGrantableUris$0$NotificationRecord(Landroid/net/Uri;)V
    .registers 3

    .line 1193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1194
    return-void
.end method

.method public recordDirectReplied()V
    .registers 2

    .line 1087
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setDirectReplied()V

    .line 1088
    return-void
.end method

.method public recordDismissalSentiment(I)V
    .registers 3

    .line 1095
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSentiment(I)V

    .line 1096
    return-void
.end method

.method public recordDismissalSurface(I)V
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSurface(I)V

    .line 1092
    return-void
.end method

.method public recordExpanded()V
    .registers 2

    .line 1083
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setExpanded()V

    .line 1084
    return-void
.end method

.method public recordSnoozed()V
    .registers 2

    .line 1099
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSnoozed()V

    .line 1100
    return-void
.end method

.method public recordViewedSettings()V
    .registers 2

    .line 1103
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setViewedSettings()V

    .line 1104
    return-void
.end method

.method public setAllowBubble(Z)V
    .registers 2

    .line 984
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 985
    return-void
.end method

.method public setAssistantImportance(I)V
    .registers 2

    .line 736
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 739
    return-void
.end method

.method public setAudiblyAlerted(Z)V
    .registers 4

    .line 1027
    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, -0x1

    :goto_9
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    .line 1028
    return-void
.end method

.method public setAuthoritativeRank(I)V
    .registers 2

    .line 941
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 942
    return-void
.end method

.method public setContactAffinity(F)V
    .registers 2

    .line 673
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 674
    return-void
.end method

.method public setCriticality(I)V
    .registers 2

    .line 803
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 804
    return-void
.end method

.method public setEditChoicesBeforeSending(Z)V
    .registers 2

    .line 1135
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    .line 1136
    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .registers 2

    .line 920
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    .line 921
    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    .line 819
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 820
    return-void
.end method

.method public setIntercepted(Z)Z
    .registers 2

    .line 793
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 794
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return p1
.end method

.method public setInterruptive(Z)V
    .registers 6

    .line 1012
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1014
    if-eqz p1, :cond_a

    move-wide v2, v0

    goto :goto_c

    :cond_a
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    :goto_c
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 1016
    if-eqz p1, :cond_3c

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v2, 0x5dd

    .line 1018
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 v2, 0x1

    .line 1019
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v2, 0x5dc

    .line 1021
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1020
    invoke-virtual {p1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1017
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1022
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v0

    const-string/jumbo v1, "note_interruptive"

    invoke-static {p1, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1024
    :cond_3c
    return-void
.end method

.method public setIsAppImportanceLocked(Z)V
    .registers 2

    .line 668
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 669
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 670
    return-void
.end method

.method public setNumSmartActionsAdded(I)V
    .registers 2

    .line 1115
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    .line 1116
    return-void
.end method

.method public setNumSmartRepliesAdded(I)V
    .registers 2

    .line 1107
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    .line 1108
    return-void
.end method

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .registers 3

    .line 953
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public setPackagePriority(I)V
    .registers 2

    .line 696
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 697
    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .registers 2

    .line 704
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 705
    return-void
.end method

.method protected setPeopleOverride(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1052
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 1053
    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .registers 4

    .line 681
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 682
    if-eqz p1, :cond_a

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 685
    :cond_a
    return-void
.end method

.method public setRecordedInterruption(Z)V
    .registers 2

    .line 1035
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    .line 1036
    return-void
.end method

.method public setSeen()V
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSeen()V

    .line 935
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    if-eqz v0, :cond_d

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 938
    :cond_d
    return-void
.end method

.method public setSeenSmartReplies(Z)V
    .registers 2

    .line 1143
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    .line 1144
    return-void
.end method

.method public setShowBadge(Z)V
    .registers 2

    .line 976
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 977
    return-void
.end method

.method public setSmartReplies(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1163
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 1164
    return-void
.end method

.method protected setSnoozeCriteria(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 1060
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1061
    return-void
.end method

.method public setSuggestionsGeneratedByAssistant(Z)V
    .registers 2

    .line 1123
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 1124
    return-void
.end method

.method public setSuppressedVisualEffects(I)V
    .registers 2

    .line 828
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 829
    return-void
.end method

.method public setSystemGeneratedSmartActions(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    .line 1155
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 1156
    return-void
.end method

.method public setSystemImportance(I)V
    .registers 2

    .line 724
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 727
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 728
    return-void
.end method

.method public setTextChanged(Z)V
    .registers 2

    .line 1031
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 1032
    return-void
.end method

.method public setVisibility(ZII)V
    .registers 14

    .line 882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 883
    if-eqz p1, :cond_8

    move-wide v2, v0

    goto :goto_a

    :cond_8
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    :goto_a
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 884
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 885
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x80

    .line 886
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 887
    if-eqz p1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x2

    :goto_20
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    .line 888
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    .line 889
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 885
    invoke-static {p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 890
    if-eqz p1, :cond_4c

    .line 891
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 892
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v2

    const-string/jumbo v3, "note_freshness"

    invoke-static {p3, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 894
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 895
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v6

    .line 896
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v7

    const/4 v8, 0x0

    .line 894
    move v5, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    .line 899
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 589
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 592
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 593
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 594
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 595
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 589
    const-string v1, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%sappImportanceLocked=%s: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 2

    .line 968
    if-eqz p1, :cond_a

    .line 969
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 970
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 971
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 973
    :cond_a
    return-void
.end method
