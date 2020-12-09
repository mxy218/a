.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 40
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 45
    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 59
    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 75
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object p0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .registers 3

    .line 235
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_20
    const-string p0, "ATTENDEE_STATUS_TENTATIVE"

    return-object p0

    .line 239
    :cond_23
    const-string p0, "ATTENDEE_STATUS_INVITED"

    return-object p0

    .line 238
    :cond_26
    const-string p0, "ATTENDEE_STATUS_DECLINED"

    return-object p0

    .line 237
    :cond_29
    const-string p0, "ATTENDEE_STATUS_ACCEPTED"

    return-object p0

    .line 236
    :cond_2c
    const-string p0, "ATTENDEE_STATUS_NONE"

    return-object p0
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .registers 3

    .line 246
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_1a
    const-string p0, "AVAILABILITY_TENTATIVE"

    return-object p0

    .line 248
    :cond_1d
    const-string p0, "AVAILABILITY_FREE"

    return-object p0

    .line 247
    :cond_20
    const-string p0, "AVAILABILITY_BUSY"

    return-object p0
.end method

.method private getCalendarsWithAccess()Landroid/util/ArraySet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 94
    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 98
    nop

    .line 100
    const/4 v3, 0x0

    :try_start_11
    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 102
    :goto_21
    if-eqz v3, :cond_36

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 103
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_5b

    goto :goto_21

    .line 106
    :cond_36
    if-eqz v3, :cond_3b

    .line 107
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3b
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_5a

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCalendarsWithAccess took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.CT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_5a
    return-object v2

    .line 106
    :catchall_5b
    move-exception v0

    if-eqz v3, :cond_61

    .line 107
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .registers 22

    .line 179
    move-object/from16 v0, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 180
    nop

    .line 181
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v8, v10

    const/4 v11, 0x1

    aput-object v0, v8, v11

    .line 186
    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const-string v7, "event_id = ? AND attendeeEmail = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 189
    const-string v5, "meetsAttendee took "

    const-string v6, "ConditionProviders.CT"

    if-eqz v4, :cond_bd

    :try_start_2d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_35

    goto/16 :goto_bd

    .line 193
    :cond_35
    move v7, v10

    .line 194
    :goto_36
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 195
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 196
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 197
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 198
    move-object/from16 v14, p1

    iget v15, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v15, v13}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v15

    .line 199
    sget-boolean v16, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v16, :cond_82

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "status=%s, meetsReply=%s"

    new-array v14, v3, [Ljava/lang/Object;

    .line 202
    invoke-static {v13}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v14, v17

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/16 v16, 0x1

    aput-object v13, v14, v16

    .line 201
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 199
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_82
    move/from16 v17, v10

    .line 203
    :goto_84
    move/from16 v10, p2

    int-to-long v13, v10

    cmp-long v8, v8, v13

    if-nez v8, :cond_95

    invoke-static {v12, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_8f
    .catchall {:try_start_2d .. :try_end_8f} :catchall_e9

    if-eqz v8, :cond_95

    if-eqz v15, :cond_95

    const/4 v8, 0x1

    goto :goto_97

    :cond_95
    move/from16 v8, v17

    .line 205
    :goto_97
    or-int/2addr v7, v8

    .line 206
    move/from16 v10, v17

    const/4 v11, 0x1

    goto :goto_36

    .line 207
    :cond_9c
    nop

    .line 209
    nop

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_bc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_bc
    return v7

    .line 190
    :cond_bd
    :goto_bd
    :try_start_bd
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_c6

    const-string v0, "No attendees found"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_e9

    .line 191
    :cond_c6
    nop

    .line 209
    if-eqz v4, :cond_cc

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_cc
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_e7
    const/4 v0, 0x1

    return v0

    .line 209
    :catchall_e9
    move-exception v0

    if-eqz v4, :cond_ef

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_ef
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_10a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    throw v0
.end method

.method private static meetsReply(II)Z
    .registers 5

    .line 255
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_15

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_a

    .line 264
    return v1

    .line 257
    :cond_a
    if-ne p1, v2, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 259
    :cond_e
    if-eq p1, v2, :cond_13

    const/4 p0, 0x4

    if-ne p1, p0, :cond_14

    :cond_13
    move v1, v2

    :cond_14
    return v1

    .line 262
    :cond_15
    if-eq p1, v0, :cond_18

    move v1, v2

    :cond_18
    return v1
.end method

.method private setRegistered(Z)V
    .registers 7

    .line 217
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 220
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    const-string v3, "ConditionProviders.CT"

    if-eqz v2, :cond_35

    .line 221
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_30
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    :cond_35
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 225
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegistered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_57
    iget-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p1, :cond_8a

    .line 227
    sget-boolean p1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p1, :cond_74

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register content observer u="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_74
    sget-object p1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    sget-object p1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    :cond_8a
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .registers 28

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "ConditionProviders.CT"

    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 118
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 119
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 120
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 121
    iget-object v5, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "begin ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 123
    new-instance v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v8}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    .line 124
    iput-wide v6, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 126
    :try_start_33
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v6

    .line 127
    :goto_37
    if-eqz v5, :cond_17d

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 128
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 129
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 130
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 131
    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v11, :cond_57

    move v7, v11

    goto :goto_58

    :cond_57
    const/4 v7, 0x0

    .line 132
    :goto_58
    const/4 v14, 0x4

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5d} :catch_18a
    .catchall {:try_start_33 .. :try_end_5d} :catchall_186

    .line 133
    const/4 v14, 0x5

    move-object/from16 v19, v8

    :try_start_60
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    const/4 v14, 0x6

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v14, 0x7

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 136
    const/16 v14, 0x8

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 137
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 138
    sget-boolean v22, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v22, :cond_da

    .line 139
    move-object/from16 v22, v6

    const-string/jumbo v6, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_85} :catch_177
    .catchall {:try_start_60 .. :try_end_85} :catchall_186

    move-object/from16 v23, v5

    const/16 v5, 0xa

    :try_start_89
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v5, v17

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    const/16 v18, 0x1

    aput-object v15, v5, v18

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/16 v16, 0x2

    aput-object v15, v5, v16

    .line 141
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v5, v16

    .line 142
    invoke-static {v1}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v5, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v5, v16

    const/4 v15, 0x6

    aput-object v8, v5, v15

    const/4 v15, 0x7

    aput-object v0, v5, v15

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x8

    aput-object v15, v5, v16

    const/16 v15, 0x9

    .line 143
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v15

    .line 139
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 168
    :catch_d7
    move-exception v0

    goto/16 :goto_17a

    .line 138
    :cond_da
    move-object/from16 v23, v5

    move-object/from16 v22, v6

    const/16 v17, 0x0

    .line 145
    :goto_e0
    cmp-long v5, v2, v9

    if-ltz v5, :cond_ea

    cmp-long v5, v2, v12

    if-gez v5, :cond_ea

    const/4 v5, 0x1

    goto :goto_ec

    :cond_ea
    move/from16 v5, v17

    .line 146
    :goto_ec
    if-eqz v7, :cond_111

    if-eqz v14, :cond_111

    move v6, v1

    move-object/from16 v1, p1

    iget-object v7, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v7, :cond_fb

    iget-object v7, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v7, :cond_10f

    :cond_fb
    iget-object v7, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 148
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v7, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10f

    iget-object v7, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 149
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_114

    :cond_10f
    const/4 v7, 0x1

    goto :goto_116

    .line 146
    :cond_111
    move v6, v1

    move-object/from16 v1, p1

    .line 149
    :cond_114
    move/from16 v7, v17

    .line 150
    :goto_116
    const/4 v8, 0x1

    if-eq v6, v8, :cond_11b

    const/16 v17, 0x1

    .line 151
    :cond_11b
    if-eqz v7, :cond_16c

    if-eqz v17, :cond_16c

    .line 152
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_128

    const-string v6, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_128
    move-object v6, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v6}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v6

    .line 154
    if-eqz v6, :cond_169

    .line 155
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_13a

    const-string v6, "    MEETS ATTENDEE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_13a
    if-eqz v5, :cond_14b

    .line 157
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_145

    const-string v5, "      MEETS TIME"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_145} :catch_d7
    .catchall {:try_start_89 .. :try_end_145} :catchall_197

    .line 158
    :cond_145
    move-object/from16 v5, v19

    const/4 v6, 0x1

    :try_start_148
    iput-boolean v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    goto :goto_14d

    .line 156
    :cond_14b
    move-object/from16 v5, v19

    .line 160
    :goto_14d
    cmp-long v6, v9, v2

    if-lez v6, :cond_15c

    iget-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v9, v6

    if-gez v6, :cond_15c

    .line 161
    iput-wide v9, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_170

    .line 168
    :catch_15a
    move-exception v0

    goto :goto_18e

    .line 162
    :cond_15c
    cmp-long v6, v12, v2

    if-lez v6, :cond_170

    iget-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v12, v6

    if-gez v6, :cond_170

    .line 163
    iput-wide v12, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_168} :catch_15a
    .catchall {:try_start_148 .. :try_end_168} :catchall_197

    goto :goto_170

    .line 154
    :cond_169
    move-object/from16 v5, v19

    goto :goto_170

    .line 151
    :cond_16c
    move-object/from16 v0, p0

    move-object/from16 v5, v19

    .line 167
    :cond_170
    :goto_170
    move-object v8, v5

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    goto/16 :goto_37

    .line 168
    :catch_177
    move-exception v0

    move-object/from16 v23, v5

    :goto_17a
    move-object/from16 v5, v19

    goto :goto_18e

    .line 127
    :cond_17d
    move-object/from16 v23, v5

    move-object v5, v8

    .line 171
    if-eqz v23, :cond_196

    .line 172
    :goto_182
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_196

    .line 171
    :catchall_186
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_198

    .line 168
    :catch_18a
    move-exception v0

    move-object/from16 v23, v5

    move-object v5, v8

    .line 169
    :goto_18e
    :try_start_18e
    const-string v1, "error reading calendar"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_193
    .catchall {:try_start_18e .. :try_end_193} :catchall_197

    .line 171
    if-eqz v23, :cond_196

    .line 172
    goto :goto_182

    .line 175
    :cond_196
    :goto_196
    return-object v5

    .line 171
    :catchall_197
    move-exception v0

    :goto_198
    if-eqz v23, :cond_19d

    .line 172
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_19d
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "u="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 89
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_5

    return-void

    .line 81
    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 82
    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-direct {p0, p1}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 83
    return-void
.end method
