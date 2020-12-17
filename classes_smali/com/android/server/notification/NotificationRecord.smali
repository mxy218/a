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

.field private isDisableRemind:Z

.field private isMaxPriority:Z

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

.field private mContactInWhiteList:Z

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

.field private mRecentlyIntrusiveHasBeen:Z

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

    .line 93
    const-string v0, "NotificationRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationRecord;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p3, "channel"  # Landroid/app/NotificationChannel;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 148
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 149
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 155
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 157
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 1394
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusiveHasBeen:Z

    .line 197
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 198
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 199
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 200
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAm:Landroid/app/IActivityManager;

    .line 201
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 202
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    .line 203
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 204
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 205
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 206
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 207
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 209
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 210
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->isPreChannelsNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 211
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateSound()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 212
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    .line 213
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 214
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 215
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateLights()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 217
    new-instance v0, Landroid/service/notification/NotificationStats;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 218
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateGrantableUris()V

    .line 220
    return-void
.end method

.method private calculateAttributes()Landroid/media/AudioAttributes;
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 313
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 314
    .local v1, "attributes":Landroid/media/AudioAttributes;
    if-nez v1, :cond_12

    .line 315
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 318
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_61

    .line 319
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_61

    .line 321
    iget-object v2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_29

    .line 323
    iget-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    goto :goto_61

    .line 324
    :cond_29
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v2, :cond_45

    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 325
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 327
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, v0, Landroid/app/Notification;->audioStreamType:I

    .line 328
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_61

    .line 330
    :cond_45
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_61

    .line 331
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Invalid stream type: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationRecord"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_61
    :goto_61
    return-object v1
.end method

.method private calculateInitialImportance()I
    .registers 8

    .line 338
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 339
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 340
    .local v1, "importance":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1c

    .line 341
    move v2, v4

    goto :goto_1d

    .line 342
    :cond_1c
    move v2, v3

    :goto_1d
    iput v2, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 345
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_27

    .line 346
    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 350
    :cond_27
    const/4 v2, 0x3

    .line 351
    .local v2, "requestedImportance":I
    iget v5, v0, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    invoke-static {v5, v6, v4}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v5

    iput v5, v0, Landroid/app/Notification;->priority:I

    .line 353
    iget v5, v0, Landroid/app/Notification;->priority:I

    if-eq v5, v6, :cond_45

    const/4 v6, -0x1

    if-eq v5, v6, :cond_43

    if-eqz v5, :cond_41

    if-eq v5, v3, :cond_3f

    if-eq v5, v4, :cond_3f

    goto :goto_47

    .line 365
    :cond_3f
    const/4 v2, 0x4

    goto :goto_47

    .line 361
    :cond_41
    const/4 v2, 0x3

    .line 362
    goto :goto_47

    .line 358
    :cond_43
    const/4 v2, 0x2

    .line 359
    goto :goto_47

    .line 355
    :cond_45
    const/4 v2, 0x1

    .line 356
    nop

    .line 368
    :goto_47
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v2, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 369
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-nez v6, :cond_55

    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    if-eqz v6, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :cond_55
    :goto_55
    iput-boolean v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 373
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_85

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_69

    .line 375
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v3

    if-nez v3, :cond_85

    .line 376
    :cond_69
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-nez v3, :cond_72

    if-le v2, v4, :cond_72

    .line 377
    const/4 v2, 0x2

    .line 380
    :cond_72
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v3, :cond_7c

    .line 381
    const/4 v3, 0x3

    if-ge v2, v3, :cond_7c

    .line 382
    const/4 v2, 0x3

    .line 386
    :cond_7c
    iget-object v3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_81

    .line 387
    const/4 v2, 0x4

    .line 389
    :cond_81
    move v1, v2

    .line 390
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 394
    :cond_85
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v1, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 395
    return v1
.end method

.method private calculateLights()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 11

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 256
    .local v0, "defaultLightColor":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 258
    .local v1, "defaultLightOn":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 261
    .local v2, "defaultLightOff":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    goto :goto_3b

    .line 262
    :cond_3a
    move v3, v0

    :goto_3b
    nop

    .line 263
    .local v3, "channelLightColor":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_4c

    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_4d

    .line 264
    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    nop

    .line 265
    .local v4, "light":Lcom/android/server/notification/NotificationRecord$Light;
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v5, :cond_84

    .line 266
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_84

    .line 268
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 269
    .local v5, "notification":Landroid/app/Notification;
    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_83

    .line 270
    new-instance v6, Lcom/android/server/notification/NotificationRecord$Light;

    iget v7, v5, Landroid/app/Notification;->ledARGB:I

    iget v8, v5, Landroid/app/Notification;->ledOnMS:I

    iget v9, v5, Landroid/app/Notification;->ledOffMS:I

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    move-object v4, v6

    .line 272
    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_84

    .line 273
    new-instance v6, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    move-object v4, v6

    goto :goto_84

    .line 277
    :cond_83
    const/4 v4, 0x0

    .line 280
    .end local v5  # "notification":Landroid/app/Notification;
    :cond_84
    :goto_84
    return-object v4
.end method

.method private calculateRankingTimeMs(J)J
    .registers 10
    .param p1, "previousRankingTimeMs"  # J

    .line 936
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 938
    .local v0, "n":Landroid/app/Notification;
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

    .line 939
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    return-wide v1

    .line 943
    :cond_1b
    cmp-long v1, p1, v3

    if-lez v1, :cond_20

    .line 944
    return-wide p1

    .line 946
    :cond_20
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    return-wide v1
.end method

.method private calculateSound()Landroid/net/Uri;
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 235
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 236
    const/4 v1, 0x0

    return-object v1

    .line 239
    :cond_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "sound":Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3c

    .line 243
    iget v2, v0, Landroid/app/Notification;->defaults:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    move v2, v3

    .line 244
    .local v2, "useDefaultSound":Z
    if-eqz v2, :cond_3a

    .line 245
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_3c

    .line 247
    :cond_3a
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 250
    .end local v2  # "useDefaultSound":Z
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method private calculateUserSentiment()V
    .registers 2

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-eqz v0, :cond_13

    .line 1096
    :cond_10
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 1098
    :cond_13
    return-void
.end method

.method private calculateVibration()[J
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 285
    const v2, 0x1070024

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    .line 290
    .local v0, "defaultVibration":[J
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 291
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    if-nez v1, :cond_27

    .line 292
    move-object v1, v0

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    .local v1, "vibration":[J
    :goto_2f
    goto :goto_31

    .line 294
    .end local v1  # "vibration":[J
    :cond_30
    const/4 v1, 0x0

    .line 296
    .restart local v1  # "vibration":[J
    :goto_31
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_56

    .line 297
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_56

    .line 299
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 300
    .local v2, "notification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 302
    .local v3, "useDefaultVibrate":Z
    :goto_50
    if-eqz v3, :cond_54

    .line 303
    move-object v1, v0

    goto :goto_56

    .line 305
    :cond_54
    iget-object v1, v2, Landroid/app/Notification;->vibrate:[J

    .line 308
    .end local v2  # "notification":Landroid/app/Notification;
    .end local v3  # "useDefaultVibrate":Z
    :cond_56
    :goto_56
    return-object v1
.end method

.method private getUserExplanation()Ljava/lang/String;
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 743
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    .line 746
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    return-object v0
.end method

.method static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "baseContext"  # Landroid/content/Context;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "id"  # I

    .line 599
    if-eqz p1, :cond_b

    .line 601
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_8

    .line 604
    .local v0, "c":Landroid/content/Context;
    :goto_7
    goto :goto_c

    .line 602
    .end local v0  # "c":Landroid/content/Context;
    :catch_8
    move-exception v0

    .line 603
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .local v0, "c":Landroid/content/Context;
    goto :goto_7

    .line 606
    .end local v0  # "c":Landroid/content/Context;
    :cond_b
    move-object v0, p0

    .line 609
    .restart local v0  # "c":Landroid/content/Context;
    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 611
    .local v1, "r":Landroid/content/res/Resources;
    :try_start_10
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v2

    .line 612
    :catch_15
    move-exception v2

    .line 613
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    return-object v3
.end method

.method private isPreChannelsNotification()Z
    .registers 3

    .line 223
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_19

    .line 225
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private setUserSentiment(I)V
    .registers 2
    .param p1, "userSentiment"  # I

    .line 1101
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 1102
    return-void
.end method

.method private visitGrantableUri(Landroid/net/Uri;Z)V
    .registers 12
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "userOverriddenUri"  # Z

    .line 1244
    if-eqz p1, :cond_85

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_85

    .line 1247
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 1248
    .local v0, "sourceUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    return-void

    .line 1250
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1253
    .local v7, "ident":J
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    .line 1254
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 1256
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 1253
    move v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 1258
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    if-nez v1, :cond_3e

    .line 1259
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 1261
    :cond_3e
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_43} :catch_46
    .catchall {:try_start_1f .. :try_end_43} :catchall_44

    goto :goto_80

    .line 1271
    :catchall_44
    move-exception v1

    goto :goto_7c

    .line 1262
    :catch_46
    move-exception v1

    .line 1263
    .local v1, "e":Ljava/lang/SecurityException;
    if-nez p2, :cond_80

    .line 1264
    :try_start_49
    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_7a

    .line 1267
    const-string v2, "NotificationRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 1265
    :cond_7a
    nop

    .end local v0  # "sourceUid":I
    .end local v7  # "ident":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationRecord;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "userOverriddenUri":Z
    throw v1
    :try_end_7c
    .catchall {:try_start_49 .. :try_end_7c} :catchall_44

    .line 1271
    .end local v1  # "e":Ljava/lang/SecurityException;
    .restart local v0  # "sourceUid":I
    .restart local v7  # "ident":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationRecord;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "userOverriddenUri":Z
    :goto_7c
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_80
    :goto_80
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    nop

    .line 1273
    return-void

    .line 1244
    .end local v0  # "sourceUid":I
    .end local v7  # "ident":J
    :cond_85
    :goto_85
    return-void
.end method


# virtual methods
.method public addAdjustment(Landroid/service/notification/Adjustment;)V
    .registers 4
    .param p1, "adjustment"  # Landroid/service/notification/Adjustment;

    .line 640
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 641
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public applyAdjustments()V
    .registers 11

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 647
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v2

    .line 648
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Adjustment;

    .line 649
    .local v4, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v5

    .line 650
    .local v5, "signals":Landroid/os/Bundle;
    const-string/jumbo v6, "key_people"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 651
    nop

    .line 652
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key_people"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 653
    .local v6, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setPeopleOverride(Ljava/util/ArrayList;)V

    .line 655
    .end local v6  # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    const-string/jumbo v6, "key_snooze_criteria"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 656
    nop

    .line 657
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key_snooze_criteria"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 659
    .local v6, "snoozeCriterionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setSnoozeCriteria(Ljava/util/ArrayList;)V

    .line 661
    .end local v6  # "snoozeCriterionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    :cond_4d
    const-string/jumbo v6, "key_group_key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 662
    nop

    .line 663
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key_group_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 664
    .local v6, "groupOverrideKey":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 666
    .end local v6  # "groupOverrideKey":Ljava/lang/String;
    :cond_65
    const-string/jumbo v6, "key_user_sentiment"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_8d

    .line 669
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-nez v6, :cond_8d

    .line 670
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v6

    and-int/2addr v6, v7

    if-nez v6, :cond_8d

    .line 671
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v8, "key_user_sentiment"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setUserSentiment(I)V

    .line 675
    :cond_8d
    const-string/jumbo v6, "key_contextual_actions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 676
    const-string/jumbo v6, "key_contextual_actions"

    .line 677
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 676
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setSystemGeneratedSmartActions(Ljava/util/ArrayList;)V

    .line 679
    :cond_a0
    const-string/jumbo v6, "key_text_replies"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 680
    const-string/jumbo v6, "key_text_replies"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setSmartReplies(Ljava/util/ArrayList;)V

    .line 682
    :cond_b3
    const-string/jumbo v6, "key_importance"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 683
    const-string/jumbo v6, "key_importance"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 684
    .local v6, "importance":I
    const/16 v8, -0x3e8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v6, v8

    .line 685
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 686
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->setAssistantImportance(I)V

    .line 688
    .end local v6  # "importance":I
    :cond_d2
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e4

    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e4

    .line 689
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    .line 691
    .end local v4  # "adjustment":Landroid/service/notification/Adjustment;
    .end local v5  # "signals":Landroid/os/Bundle;
    :cond_e4
    goto/16 :goto_d

    .line 693
    :cond_e6
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 694
    monitor-exit v2

    .line 695
    return-void

    .line 694
    :catchall_ed
    move-exception v3

    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_7 .. :try_end_ef} :catchall_ed

    throw v3
.end method

.method protected calculateGrantableUris()V
    .registers 5

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1222
    .local v0, "notification":Landroid/app/Notification;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;-><init>(Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 1226
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1227
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 1228
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_2a

    .line 1229
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1233
    .end local v1  # "channel":Landroid/app/NotificationChannel;
    :cond_2a
    return-void
.end method

.method protected calculateImportance()V
    .registers 3

    .line 784
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 785
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 788
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v0

    const/16 v1, -0x3e8

    if-nez v0, :cond_35

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq v0, v1, :cond_35

    .line 790
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_35

    .line 791
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    if-nez v0, :cond_35

    .line 792
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 793
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 795
    :cond_35
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    if-eq v0, v1, :cond_3e

    .line 796
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 797
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 799
    :cond_3e
    return-void
.end method

.method public canBubble()Z
    .registers 2

    .line 1010
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    return v0
.end method

.method public canShowBadge()Z
    .registers 2

    .line 1018
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    return v0
.end method

.method public copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "previous"  # Lcom/android/server/notification/NotificationRecord;

    .line 400
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 401
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 402
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 403
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 404
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 405
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 406
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 407
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 408
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 409
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_45

    .line 410
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 413
    :cond_45
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JZI)V
    .registers 13
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "redact"  # Z
    .param p5, "state"  # I

    .line 424
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 426
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 427
    const-wide v2, 0x10e00000002L

    invoke-virtual {p1, v2, v3, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 429
    const-wide v2, 0x10900000004L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 431
    :cond_30
    const-wide v2, 0x10800000008L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3f

    move v4, v5

    goto :goto_40

    :cond_3f
    move v4, v6

    :goto_40
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 432
    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v4

    if-eqz v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v5, v6

    :goto_50
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 433
    const-wide v2, 0x10500000003L

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 434
    const-wide v2, 0x10900000009L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 435
    const-wide v2, 0x1110000000aL

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 437
    const-wide v2, 0x10900000005L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 439
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 440
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 442
    :cond_a3
    const-wide v2, 0x1090000000bL

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 443
    const-wide v2, 0x1090000000cL

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 445
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 446
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 23
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "baseContext"  # Landroid/content/Context;
    .param p4, "redact"  # Z

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 456
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 457
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "iconStr":Ljava/lang/String;
    const/4 v6, 0x2

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v7

    if-ne v7, v6, :cond_40

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v9

    move-object/from16 v10, p3

    invoke-static {v10, v8, v9}, Lcom/android/server/notification/NotificationRecord;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    .line 458
    :cond_40
    move-object/from16 v10, p3

    .line 461
    :goto_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .end local p2  # "prefix":Ljava/lang/String;
    .local v2, "prefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "opPkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "icon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "flags=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/app/Notification;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/app/Notification;->priority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "seen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v8}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "groupKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "fullscreenIntent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "contentIntent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "deleteIntent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/app/Notification;->number:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "groupAlertBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tickerText="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-object v7, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string/jumbo v8, "null"

    const/4 v9, 0x0

    if-nez v7, :cond_21c

    .line 479
    iget-object v7, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, "ticker":Ljava/lang/String;
    if-eqz p4, :cond_218

    .line 482
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-le v11, v12, :cond_20d

    const/16 v11, 0x8

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_20f

    :cond_20d
    const-string v11, ""

    :goto_20f
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    const-string v11, "..."

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21b

    .line 485
    :cond_218
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .end local v7  # "ticker":Ljava/lang/String;
    :goto_21b
    goto :goto_21f

    .line 488
    :cond_21c
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    :goto_21f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "contentView="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "bigContentView="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "headsUpContentView="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 493
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    iget v13, v3, Landroid/app/Notification;->color:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const-string v13, "color=0x%08x"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "timeout="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v3}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 495
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v7, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v12, 0x3

    if-eqz v7, :cond_321

    iget-object v7, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    if-lez v7, :cond_321

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "actions={"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    iget-object v7, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    .line 500
    .local v7, "N":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2db
    if-ge v13, v7, :cond_30d

    .line 501
    iget-object v14, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v14, v14, v13

    .line 502
    .local v14, "action":Landroid/app/Notification$Action;
    if-eqz v14, :cond_309

    .line 503
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v9

    .line 505
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    iget-object v11, v14, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    aput-object v11, v15, v6

    .line 507
    iget-object v11, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v11, :cond_2f8

    move-object v11, v8

    goto :goto_2fe

    :cond_2f8
    iget-object v11, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2fe
    aput-object v11, v15, v12

    .line 503
    const-string v11, "%s    [%d] \"%s\" -> %s"

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    .end local v14  # "action":Landroid/app/Notification$Action;
    :cond_309
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto :goto_2db

    .line 511
    .end local v13  # "i":I
    :cond_30d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  }"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    .end local v7  # "N":I
    :cond_321
    iget-object v7, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_44d

    iget-object v7, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_44d

    .line 514
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "extras={"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    iget-object v7, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_34b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_438

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 516
    .local v11, "key":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    iget-object v13, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 518
    .local v13, "val":Ljava/lang/Object;
    if-nez v13, :cond_380

    .line 519
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_434

    .line 521
    :cond_380
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    if-eqz p4, :cond_397

    instance-of v14, v13, Ljava/lang/CharSequence;

    if-nez v14, :cond_395

    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_397

    :cond_395
    goto/16 :goto_431

    .line 524
    :cond_397
    instance-of v14, v13, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_3c3

    .line 525
    new-array v14, v6, [Ljava/lang/Object;

    move-object v15, v13

    check-cast v15, Landroid/graphics/Bitmap;

    .line 526
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    move-object v15, v13

    check-cast v15, Landroid/graphics/Bitmap;

    .line 527
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 525
    const-string v15, " (%dx%d)"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_431

    .line 528
    :cond_3c3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    const-string v15, ")"

    const-string v6, " ("

    if-eqz v14, :cond_418

    .line 529
    invoke-static {v13}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 530
    .local v14, "N":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    if-nez p4, :cond_417

    .line 532
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3ed
    if-ge v6, v14, :cond_417

    .line 533
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 534
    new-array v9, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v9, v15

    .line 535
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v9, v17

    invoke-static {v13, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v9, v16

    .line 534
    const-string v15, "%s      [%d] %s"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ed

    .line 538
    .end local v6  # "j":I
    .end local v14  # "N":I
    :cond_417
    goto :goto_431

    .line 539
    :cond_418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    :goto_431
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 543
    .end local v11  # "key":Ljava/lang/String;
    .end local v13  # "val":Ljava/lang/Object;
    :goto_434
    const/4 v6, 0x2

    const/4 v9, 0x0

    goto/16 :goto_34b

    .line 544
    :cond_438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    :cond_44d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stats="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mContactAffinity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mRecentlyIntrusive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mPackagePriority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mPackageVisibility="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSystemImportance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 552
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 551
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAsstImportance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 554
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mImportance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 556
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mImportanceExplanation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIsAppImportanceLocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIntercept="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mHidden=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mGlobalSortKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mRankingTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mCreationTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mVisibleSinceMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mUpdateTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mInterruptionTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSuppressedVisualEffects= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    iget-boolean v6, v0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v6, :cond_71f

    .line 569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget v7, v3, Landroid/app/Notification;->defaults:I

    .line 570
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    iget v7, v3, Landroid/app/Notification;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 569
    const-string v7, "defaults=0x%08x flags=0x%08x"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.sound="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.audioStreamType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.audioAttributes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v3, Landroid/app/Notification;->ledARGB:I

    .line 575
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget v8, v3, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 574
    const-string v8, "  led=0x%08x onMs=%d offMs=%d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "vibrate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/Notification;->vibrate:[J

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    :cond_71f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSound= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mVibration= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAttributes= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mLight= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mShowBadge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mColorized="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIsInterruptive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "effectiveNotificationChannel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, ","

    if-eqz v6, :cond_81a

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "overridePeople= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    :cond_81a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_840

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "snoozeCriteria="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    :cond_840
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAdjustments="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;
    .registers 5
    .param p1, "rv"  # Landroid/widget/RemoteViews;

    .line 449
    if-nez p1, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    .line 450
    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 451
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

    move-result-object v2

    aput-object v2, v0, v1

    .line 450
    const-string v1, "%s/0x%08x (%d bytes): %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistantImportance()I
    .registers 2

    .line 776
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    return v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 1034
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getAuthoritativeRank()I
    .registers 2

    .line 975
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    return v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getContactAffinity()F
    .registers 2

    .line 707
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    return v0
.end method

.method public getCriticality()I
    .registers 2

    .line 837
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return v0
.end method

.method public getEditChoicesBeforeSending()Z
    .registers 2

    .line 1161
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    return v0
.end method

.method public getExposureMs(J)I
    .registers 7
    .param p1, "now"  # J

    .line 901
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    goto :goto_d

    :cond_a
    sub-long v0, p1, v0

    long-to-int v0, v0

    :goto_d
    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    return v0
.end method

.method public getFreshnessMs(J)I
    .registers 5
    .param p1, "now"  # J

    .line 885
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getGlobalSortKey()Ljava/lang/String;
    .registers 2

    .line 954
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

    .line 1213
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 2

    .line 979
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImportance()I
    .registers 2

    .line 802
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 4

    .line 806
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

    .line 819
    return-object v1

    .line 817
    :cond_15
    const-string/jumbo v0, "system"

    return-object v0

    .line 815
    :cond_19
    const-string v0, "asst"

    return-object v0

    .line 813
    :cond_1c
    const-string/jumbo v0, "user"

    return-object v0

    .line 811
    :cond_20
    const-string v0, "app"

    return-object v0

    .line 808
    :cond_23
    return-object v1
.end method

.method public getInterruptionMs(J)I
    .registers 5
    .param p1, "now"  # J

    .line 905
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getIsAppImportanceLocked()Z
    .registers 2

    .line 994
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    return v0
.end method

.method public getItemLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudiblyAlertedMs()J
    .registers 3

    .line 1078
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public getLastIntrusive()J
    .registers 3

    .line 722
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    return-wide v0
.end method

.method public getLifespanMs(J)I
    .registers 5
    .param p1, "now"  # J

    .line 893
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getLight()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 2

    .line 1022
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    return-object v0
.end method

.method public getLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public getLogMaker(J)Landroid/metrics/LogMaker;
    .registers 7
    .param p1, "now"  # J

    .line 1276
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1279
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31b

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1282
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1281
    const/16 v2, 0x5dc

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1284
    .local v0, "lm":Landroid/metrics/LogMaker;
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/16 v2, -0x3e8

    if-eqz v1, :cond_7f

    .line 1285
    const/16 v3, 0x698

    .line 1286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1285
    invoke-virtual {v0, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1289
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_61

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7f

    :cond_61
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    if-eq v1, v2, :cond_7f

    .line 1293
    const/16 v1, 0x69a

    iget v3, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 1294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1293
    invoke-virtual {v0, v1, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1295
    const/16 v1, 0x699

    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 1296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1295
    invoke-virtual {v0, v1, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1300
    :cond_7f
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq v1, v2, :cond_8c

    .line 1301
    const/16 v2, 0x69b

    .line 1302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1301
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1307
    :cond_8c
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 1308
    const/16 v2, 0x6ce

    .line 1309
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1308
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1311
    :cond_9d
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNumSmartActionsAdded()I
    .registers 2

    .line 1149
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    return v0
.end method

.method public getNumSmartRepliesAdded()I
    .registers 2

    .line 1141
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    return v0
.end method

.method public getPackagePriority()I
    .registers 2

    .line 730
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    return v0
.end method

.method public getPackageVisibilityOverride()I
    .registers 2

    .line 738
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

    .line 1038
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRankingTimeMs()J
    .registers 3

    .line 877
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

    .line 1197
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

    .line 1086
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .registers 2

    .line 1026
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public getStats()Landroid/service/notification/NotificationStats;
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    return-object v0
.end method

.method public getSuggestionsGeneratedByAssistant()Z
    .registers 2

    .line 1157
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    return v0
.end method

.method public getSuppressedVisualEffects()I
    .registers 2

    .line 862
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

    .line 1189
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    return v0
.end method

.method public getUserSentiment()I
    .registers 2

    .line 1105
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    return v0
.end method

.method public getVibration()[J
    .registers 2

    .line 1030
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    return-object v0
.end method

.method public hasAdjustment(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"  # Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 630
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

    .line 631
    .local v2, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 632
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 634
    .end local v2  # "adjustment":Landroid/service/notification/Adjustment;
    :cond_22
    goto :goto_9

    .line 635
    :cond_23
    monitor-exit v0

    .line 636
    const/4 v0, 0x0

    return v0

    .line 635
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public hasBeenVisiblyExpanded()Z
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->hasBeenVisiblyExpanded()Z

    move-result v0

    return v0
.end method

.method public hasRecordedInterruption()Z
    .registers 2

    .line 1069
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    return v0
.end method

.method public hasSeenSmartReplies()Z
    .registers 2

    .line 1169
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    return v0
.end method

.method public isAudioAttributesUsage(I)Z
    .registers 3
    .param p1, "usage"  # I

    .line 870
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"  # Ljava/lang/String;

    .line 866
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInWhiteList()Z
    .registers 2

    .line 1372
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactInWhiteList:Z

    return v0
.end method

.method public isDisableRemind()Z
    .registers 2

    .line 1384
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isDisableRemind:Z

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 853
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    return v0
.end method

.method public isIntercepted()Z
    .registers 2

    .line 841
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return v0
.end method

.method public isInterruptive()Z
    .registers 2

    .line 1073
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    return v0
.end method

.method public isMaxPriority()Z
    .registers 2

    .line 1376
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isMaxPriority:Z

    return v0
.end method

.method public isNewEnoughForAlerting(J)Z
    .registers 5
    .param p1, "now"  # J

    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v0

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isProxied()Z
    .registers 3

    .line 1204
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

    .line 718
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    return v0
.end method

.method public isSeen()Z
    .registers 2

    .line 959
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$calculateGrantableUris$0$NotificationRecord(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"  # Landroid/net/Uri;

    .line 1223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1224
    return-void
.end method

.method public recordDirectReplied()V
    .registers 2

    .line 1117
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setDirectReplied()V

    .line 1118
    return-void
.end method

.method public recordDismissalSentiment(I)V
    .registers 3
    .param p1, "sentiment"  # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSentiment(I)V

    .line 1126
    return-void
.end method

.method public recordDismissalSurface(I)V
    .registers 3
    .param p1, "surface"  # I

    .line 1121
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSurface(I)V

    .line 1122
    return-void
.end method

.method public recordExpanded()V
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setExpanded()V

    .line 1114
    return-void
.end method

.method public recordSnoozed()V
    .registers 2

    .line 1129
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSnoozed()V

    .line 1130
    return-void
.end method

.method public recordViewedSettings()V
    .registers 2

    .line 1133
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setViewedSettings()V

    .line 1134
    return-void
.end method

.method public setAllowBubble(Z)V
    .registers 2
    .param p1, "allow"  # Z

    .line 1014
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 1015
    return-void
.end method

.method public setAssistantImportance(I)V
    .registers 2
    .param p1, "importance"  # I

    .line 766
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 769
    return-void
.end method

.method public setAudiblyAlerted(Z)V
    .registers 4
    .param p1, "audiblyAlerted"  # Z

    .line 1057
    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, -0x1

    :goto_9
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    .line 1058
    return-void
.end method

.method public setAuthoritativeRank(I)V
    .registers 2
    .param p1, "authoritativeRank"  # I

    .line 971
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 972
    return-void
.end method

.method public setContactAffinity(F)V
    .registers 2
    .param p1, "contactAffinity"  # F

    .line 703
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 704
    return-void
.end method

.method public setContactInWhiteList(Z)V
    .registers 2
    .param p1, "inWhiteList"  # Z

    .line 1368
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactInWhiteList:Z

    .line 1369
    return-void
.end method

.method public setCriticality(I)V
    .registers 2
    .param p1, "criticality"  # I

    .line 833
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 834
    return-void
.end method

.method public setDisableRemind(Z)V
    .registers 2
    .param p1, "disableRemind"  # Z

    .line 1388
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->isDisableRemind:Z

    .line 1389
    return-void
.end method

.method public setEditChoicesBeforeSending(Z)V
    .registers 2
    .param p1, "editChoicesBeforeSending"  # Z

    .line 1165
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    .line 1166
    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "globalSortKey"  # Ljava/lang/String;

    .line 950
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    .line 951
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "hidden"  # Z

    .line 849
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 850
    return-void
.end method

.method public setIntercepted(Z)Z
    .registers 3
    .param p1, "intercept"  # Z

    .line 823
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 824
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return v0
.end method

.method public setInterruptive(Z)V
    .registers 7
    .param p1, "interruptive"  # Z

    .line 1042
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 1043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1044
    .local v0, "now":J
    if-eqz p1, :cond_a

    move-wide v2, v0

    goto :goto_c

    :cond_a
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    :goto_c
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 1046
    if-eqz p1, :cond_3c

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x5dd

    .line 1048
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x1

    .line 1049
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x5dc

    .line 1051
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1050
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1047
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1052
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v3

    const-string/jumbo v4, "note_interruptive"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1054
    :cond_3c
    return-void
.end method

.method public setIsAppImportanceLocked(Z)V
    .registers 2
    .param p1, "isAppImportanceLocked"  # Z

    .line 698
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 699
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 700
    return-void
.end method

.method public setMaxPriority(Z)V
    .registers 2
    .param p1, "maxPriority"  # Z

    .line 1380
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->isMaxPriority:Z

    .line 1381
    return-void
.end method

.method public setNumSmartActionsAdded(I)V
    .registers 2
    .param p1, "noActions"  # I

    .line 1145
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    .line 1146
    return-void
.end method

.method public setNumSmartRepliesAdded(I)V
    .registers 2
    .param p1, "noReplies"  # I

    .line 1137
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    .line 1138
    return-void
.end method

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "overrideGroupKey"  # Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public setPackagePriority(I)V
    .registers 2
    .param p1, "packagePriority"  # I

    .line 726
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 727
    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .registers 2
    .param p1, "packageVisibility"  # I

    .line 734
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 735
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

    .line 1082
    .local p1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 1083
    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .registers 4
    .param p1, "recentlyIntrusive"  # Z

    .line 711
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 712
    if-eqz p1, :cond_a

    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 715
    :cond_a
    return-void
.end method

.method public setRecordedInterruption(Z)V
    .registers 2
    .param p1, "recorded"  # Z

    .line 1065
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    .line 1066
    return-void
.end method

.method public setSeen()V
    .registers 2

    .line 964
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSeen()V

    .line 965
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    if-eqz v0, :cond_d

    .line 966
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 968
    :cond_d
    return-void
.end method

.method public setSeenSmartReplies(Z)V
    .registers 2
    .param p1, "hasSeenSmartReplies"  # Z

    .line 1173
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    .line 1174
    return-void
.end method

.method public setShowBadge(Z)V
    .registers 2
    .param p1, "showBadge"  # Z

    .line 1006
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 1007
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

    .line 1193
    .local p1, "smartReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 1194
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

    .line 1090
    .local p1, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1091
    return-void
.end method

.method public setSuggestionsGeneratedByAssistant(Z)V
    .registers 2
    .param p1, "generatedByAssistant"  # Z

    .line 1153
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 1154
    return-void
.end method

.method public setSuppressedVisualEffects(I)V
    .registers 2
    .param p1, "effects"  # I

    .line 858
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 859
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

    .line 1185
    .local p1, "systemGeneratedSmartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 1186
    return-void
.end method

.method public setSystemImportance(I)V
    .registers 2
    .param p1, "importance"  # I

    .line 754
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 757
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 758
    return-void
.end method

.method public setTextChanged(Z)V
    .registers 2
    .param p1, "textChanged"  # Z

    .line 1061
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 1062
    return-void
.end method

.method public setVisibility(ZII)V
    .registers 15
    .param p1, "visible"  # Z
    .param p2, "rank"  # I
    .param p3, "count"  # I

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 913
    .local v0, "now":J
    if-eqz p1, :cond_8

    move-wide v2, v0

    goto :goto_a

    :cond_8
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    :goto_a
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 914
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 915
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x80

    .line 916
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 917
    if-eqz p1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x2

    :goto_20
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    .line 918
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    .line 919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 915
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 920
    if-eqz p1, :cond_4c

    .line 921
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 922
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v3

    const-string/jumbo v4, "note_freshness"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 924
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 925
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v7

    .line 926
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v8

    const/4 v9, 0x0

    .line 924
    move v6, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    .line 929
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 619
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 622
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 623
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

    .line 624
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

    .line 625
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 619
    const-string v1, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%sappImportanceLocked=%s: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 2
    .param p1, "channel"  # Landroid/app/NotificationChannel;

    .line 998
    if-eqz p1, :cond_a

    .line 999
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 1001
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 1003
    :cond_a
    return-void
.end method
