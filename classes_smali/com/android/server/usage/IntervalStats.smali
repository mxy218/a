.class public Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStats$EventTracker;
    }
.end annotation


# static fields
.field public static final CURRENT_MAJOR_VERSION:I = 0x1

.field public static final CURRENT_MINOR_VERSION:I = 0x1


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public final events:Landroid/app/usage/EventList;

.field public final interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public lastTimeSaved:J

.field public final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public majorVersion:I

.field public minorVersion:I

.field public final nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 58
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 62
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 63
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 64
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 65
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/app/usage/EventList;

    invoke-direct {v0}, Landroid/app/usage/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 116
    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 418
    if-gez v0, :cond_e

    .line 419
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 420
    return-object p1

    .line 422
    :cond_e
    iget-object p1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private isStatefulEvent(I)Z
    .registers 4

    .line 257
    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    const/4 v1, 0x3

    if-eq p1, v1, :cond_15

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_15

    packed-switch p1, :pswitch_data_16

    .line 270
    const/4 p1, 0x0

    return p1

    .line 268
    :cond_15
    :pswitch_15  #0x13, 0x14, 0x15, 0x16, 0x17
    return v0

    :pswitch_data_16
    .packed-switch 0x13
        :pswitch_15  #00000013
        :pswitch_15  #00000014
        :pswitch_15  #00000015
        :pswitch_15  #00000016
        :pswitch_15  #00000017
    .end packed-switch
.end method

.method private isUserVisibleEvent(I)Z
    .registers 3

    .line 278
    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/16 v0, 0xb

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method


# virtual methods
.method public addEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 320
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 321
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 323
    :cond_14
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 324
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 326
    :cond_20
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 327
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 329
    :cond_2c
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3a

    .line 330
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 332
    :cond_3a
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 333
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    .line 334
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 336
    :cond_4b
    return-void
.end method

.method addEventStatsTo(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;)V"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0xf

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 408
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x10

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 410
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0x11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 412
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x12

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 414
    return-void
.end method

.method buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/usage/UsageEvents$Event;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 169
    :goto_5
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_158

    :pswitch_c  #0x0, 0xa
    goto/16 :goto_155

    .line 225
    :pswitch_e  #0x10
    const-wide v1, 0x10500000010L

    .line 226
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 225
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 227
    goto/16 :goto_155

    .line 221
    :pswitch_27  #0xf
    const-wide v1, 0x1050000000fL

    .line 222
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 221
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 223
    goto/16 :goto_155

    .line 218
    :pswitch_40  #0xe
    const-wide v1, 0x1050000000eL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 219
    goto/16 :goto_155

    .line 213
    :pswitch_4d  #0xd
    const-wide v1, 0x1050000000dL

    .line 214
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 213
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 216
    goto/16 :goto_155

    .line 209
    :pswitch_66  #0xc
    const-wide v1, 0x1090000000cL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 211
    goto/16 :goto_155

    .line 205
    :pswitch_73  #0xb
    const-wide v1, 0x1050000000bL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 207
    goto/16 :goto_155

    .line 201
    :pswitch_80  #0x9
    const-wide v1, 0x10900000009L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 203
    goto/16 :goto_155

    .line 197
    :pswitch_91  #0x8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 198
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 199
    goto/16 :goto_155

    .line 194
    :pswitch_a4  #0x7
    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 195
    goto/16 :goto_155

    .line 191
    :pswitch_b1  #0x6
    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 192
    goto/16 :goto_155

    .line 187
    :pswitch_be  #0x5
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 189
    goto/16 :goto_155

    .line 183
    :pswitch_ce  #0x4
    const-wide v1, 0x10500000004L

    .line 184
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 183
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 185
    goto/16 :goto_155

    .line 179
    :pswitch_e7  #0x3
    const-wide v1, 0x10900000003L

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 181
    goto :goto_155

    .line 175
    :pswitch_f7  #0x2
    const-wide v1, 0x10500000002L

    .line 176
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 175
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 177
    goto :goto_155

    .line 171
    :pswitch_10f  #0x1
    const-wide v1, 0x10900000001L

    .line 172
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 173
    goto :goto_155

    .line 230
    :pswitch_11f  #0xffffffff
    iget p1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13d

    const/16 p2, 0x8

    const-string v1, ""

    if-eq p1, p2, :cond_136

    const/16 p2, 0xc

    if-eq p1, p2, :cond_12f

    goto :goto_148

    .line 242
    :cond_12f
    iget-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p1, :cond_148

    .line 243
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_148

    .line 237
    :cond_136
    iget-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p1, :cond_148

    .line 238
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_148

    .line 232
    :cond_13d
    iget-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p1, :cond_148

    .line 233
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 247
    :cond_148
    :goto_148
    iget-wide p1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_154

    .line 249
    iget-wide p1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide p1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 251
    :cond_154
    return-object v0

    :goto_155
    goto/16 :goto_5

    nop

    :pswitch_data_158
    .packed-switch -0x1
        :pswitch_11f  #ffffffff
        :pswitch_c  #00000000
        :pswitch_10f  #00000001
        :pswitch_f7  #00000002
        :pswitch_e7  #00000003
        :pswitch_ce  #00000004
        :pswitch_be  #00000005
        :pswitch_b1  #00000006
        :pswitch_a4  #00000007
        :pswitch_91  #00000008
        :pswitch_80  #00000009
        :pswitch_c  #0000000a
        :pswitch_73  #0000000b
        :pswitch_66  #0000000c
        :pswitch_4d  #0000000d
        :pswitch_40  #0000000e
        :pswitch_27  #0000000f
        :pswitch_e  #00000010
    .end packed-switch
.end method

.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .registers 4

    .line 153
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 155
    if-eqz p2, :cond_13

    .line 156
    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 158
    :cond_13
    return-object v0
.end method

.method commitTime(J)V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 380
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 381
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 382
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 383
    return-void
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 139
    if-nez v0, :cond_1e

    .line 140
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 141
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 142
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 143
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 144
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1e
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 123
    if-nez v0, :cond_24

    .line 124
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 126
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 127
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 128
    iget-object p1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_24
    return-object v0
.end method

.method incrementAppLaunchCount(Ljava/lang/String;)V
    .registers 3

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object p1

    .line 375
    iget v0, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 376
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JII)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 296
    const/16 v0, 0x1a

    if-eq p5, v0, :cond_15

    const/16 v0, 0x19

    if-ne p5, v0, :cond_9

    goto :goto_15

    .line 305
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 306
    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    goto :goto_32

    .line 299
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 300
    const/4 p2, 0x0

    :goto_1c
    if-ge p2, p1, :cond_31

    .line 301
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 302
    const/4 v2, 0x0

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    .line 300
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 304
    :cond_31
    nop

    .line 308
    :goto_32
    iget-wide p1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_3a

    .line 309
    iput-wide p3, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 311
    :cond_3a
    return-void
.end method

.method updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object p1

    .line 340
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_f

    .line 341
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 344
    :cond_f
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 345
    if-gez v0, :cond_22

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 347
    iget-object p1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 349
    :cond_22
    iget-object p1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/util/ArrayMap;

    .line 351
    :goto_2b
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 352
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .registers 9

    .line 356
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1b

    .line 357
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 358
    iget-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 359
    const-wide/16 v1, 0x1

    sub-long v1, p2, v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 362
    :cond_1b
    if-eqz p1, :cond_2d

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object p1

    .line 364
    iput-wide p2, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 365
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 366
    iget-object p1, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 368
    :cond_2d
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_35

    .line 369
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 371
    :cond_35
    return-void
.end method

.method updateKeyguardHidden(J)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 402
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 403
    return-void
.end method

.method updateKeyguardShown(J)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 397
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 398
    return-void
.end method

.method updateScreenInteractive(J)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 387
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 388
    return-void
.end method

.method updateScreenNonInteractive(J)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 392
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 393
    return-void
.end method

.method upgradeIfNeeded()V
    .registers 3

    .line 431
    iget v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 432
    return-void

    .line 437
    :cond_6
    iput v1, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 438
    return-void
.end method
