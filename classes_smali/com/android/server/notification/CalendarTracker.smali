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
    .param p1, "systemContext"  # Landroid/content/Context;
    .param p2, "userContext"  # Landroid/content/Context;

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
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/CalendarTracker;

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/CalendarTracker;

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object v0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "status"  # I

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

    move-result-object v0

    return-object v0

    .line 240
    :cond_20
    const-string v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    .line 239
    :cond_23
    const-string v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    .line 238
    :cond_26
    const-string v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    .line 237
    :cond_29
    const-string v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    .line 236
    :cond_2c
    const-string v0, "ATTENDEE_STATUS_NONE"

    return-object v0
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "availability"  # I

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

    move-result-object v0

    return-object v0

    .line 249
    :cond_1a
    const-string v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    .line 248
    :cond_1d
    const-string v0, "AVAILABILITY_FREE"

    return-object v0

    .line 247
    :cond_20
    const-string v0, "AVAILABILITY_BUSY"

    return-object v0
.end method

.method private getCalendarsWithAccess()Landroid/util/ArraySet;
    .registers 12
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
    .local v0, "start":J
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 94
    .local v2, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "projection":[Ljava/lang/String;
    const-string v3, "calendar_access_level >= 500 AND sync_events = 1"

    .line 98
    .local v3, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 100
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_12
    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 102
    :goto_23
    if-eqz v10, :cond_38

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 103
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_5d

    goto :goto_23

    .line 106
    :cond_38
    if-eqz v10, :cond_3d

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3d
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCalendarsWithAccess took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConditionProviders.CT"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_5c
    return-object v2

    .line 106
    :catchall_5d
    move-exception v4

    if-eqz v10, :cond_63

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v4
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .registers 25
    .param p1, "filter"  # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"  # I
    .param p3, "email"  # Ljava/lang/String;

    .line 179
    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    .local v2, "start":J
    const-string v10, "event_id = ? AND attendeeEmail = ?"

    .line 181
    .local v10, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v12, 0x1

    aput-object v1, v8, v12

    .line 186
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 189
    .local v4, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "meetsAttendee took "

    const-string v6, "ConditionProviders.CT"

    if-eqz v4, :cond_f4

    :try_start_2e
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3c

    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto/16 :goto_fa

    .line 193
    :cond_3c
    const/4 v7, 0x0

    .line 194
    .local v7, "rt":Z
    :goto_3d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 195
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 196
    .local v14, "rowEventId":J
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "rowEmail":Ljava/lang/String;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v16

    .line 198
    .local v17, "status":I
    move-object/from16 v12, p1

    iget v11, v12, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    move/from16 v0, v17

    .end local v17  # "status":I
    .local v0, "status":I
    invoke-static {v11, v0}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v11

    .line 199
    .local v11, "meetsReply":Z
    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_ec

    if-eqz v17, :cond_9e

    move-object/from16 v17, v8

    .end local v8  # "selectionArgs":[Ljava/lang/String;
    .local v17, "selectionArgs":[Ljava/lang/String;
    :try_start_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_97

    move-object/from16 v20, v10

    .end local v10  # "selection":Ljava/lang/String;
    .local v20, "selection":Ljava/lang/String;
    :try_start_68
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "status=%s, meetsReply=%s"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    .line 202
    invoke-static {v0}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v13, v18

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v16, 0x1

    aput-object v19, v13, v16

    .line 201
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_68 .. :try_end_91} :catchall_92

    goto :goto_a5

    .line 209
    .end local v0  # "status":I
    .end local v7  # "rt":Z
    .end local v9  # "rowEmail":Ljava/lang/String;
    .end local v11  # "meetsReply":Z
    .end local v14  # "rowEventId":J
    :catchall_92
    move-exception v0

    move/from16 v8, p2

    goto/16 :goto_127

    .end local v20  # "selection":Ljava/lang/String;
    .restart local v10  # "selection":Ljava/lang/String;
    :catchall_97
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v8, p2

    .end local v10  # "selection":Ljava/lang/String;
    .restart local v20  # "selection":Ljava/lang/String;
    goto/16 :goto_127

    .line 199
    .end local v17  # "selectionArgs":[Ljava/lang/String;
    .end local v20  # "selection":Ljava/lang/String;
    .restart local v0  # "status":I
    .restart local v7  # "rt":Z
    .restart local v8  # "selectionArgs":[Ljava/lang/String;
    .restart local v9  # "rowEmail":Ljava/lang/String;
    .restart local v10  # "selection":Ljava/lang/String;
    .restart local v11  # "meetsReply":Z
    .restart local v14  # "rowEventId":J
    :cond_9e
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    const/4 v12, 0x2

    const/16 v18, 0x0

    .line 203
    .end local v8  # "selectionArgs":[Ljava/lang/String;
    .end local v10  # "selection":Ljava/lang/String;
    .restart local v17  # "selectionArgs":[Ljava/lang/String;
    .restart local v20  # "selection":Ljava/lang/String;
    :goto_a5
    move/from16 v8, p2

    int-to-long v12, v8

    cmp-long v10, v14, v12

    if-nez v10, :cond_b6

    :try_start_ac
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_126

    if-eqz v10, :cond_b6

    if-eqz v11, :cond_b6

    const/4 v10, 0x1

    goto :goto_b8

    :cond_b6
    move/from16 v10, v18

    .line 205
    .local v10, "eventMeets":Z
    :goto_b8
    or-int/2addr v7, v10

    .line 206
    .end local v0  # "status":I
    .end local v9  # "rowEmail":Ljava/lang/String;
    .end local v10  # "eventMeets":Z
    .end local v11  # "meetsReply":Z
    .end local v14  # "rowEventId":J
    move-object/from16 v13, p0

    move-object/from16 v8, v17

    move/from16 v11, v18

    move-object/from16 v10, v20

    const/4 v0, 0x2

    const/4 v12, 0x1

    goto/16 :goto_3d

    .line 194
    .end local v17  # "selectionArgs":[Ljava/lang/String;
    .end local v20  # "selection":Ljava/lang/String;
    .restart local v8  # "selectionArgs":[Ljava/lang/String;
    .local v10, "selection":Ljava/lang/String;
    :cond_c5
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 207
    .end local v8  # "selectionArgs":[Ljava/lang/String;
    .end local v10  # "selection":Ljava/lang/String;
    .restart local v17  # "selectionArgs":[Ljava/lang/String;
    .restart local v20  # "selection":Ljava/lang/String;
    nop

    .line 209
    nop

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_eb
    return v7

    .line 209
    .end local v7  # "rt":Z
    .end local v17  # "selectionArgs":[Ljava/lang/String;
    .end local v20  # "selection":Ljava/lang/String;
    .restart local v8  # "selectionArgs":[Ljava/lang/String;
    .restart local v10  # "selection":Ljava/lang/String;
    :catchall_ec
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .end local v8  # "selectionArgs":[Ljava/lang/String;
    .end local v10  # "selection":Ljava/lang/String;
    .restart local v17  # "selectionArgs":[Ljava/lang/String;
    .restart local v20  # "selection":Ljava/lang/String;
    goto :goto_127

    .line 189
    .end local v17  # "selectionArgs":[Ljava/lang/String;
    .end local v20  # "selection":Ljava/lang/String;
    .restart local v8  # "selectionArgs":[Ljava/lang/String;
    .restart local v10  # "selection":Ljava/lang/String;
    :cond_f4
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 190
    .end local v8  # "selectionArgs":[Ljava/lang/String;
    .end local v10  # "selection":Ljava/lang/String;
    .restart local v17  # "selectionArgs":[Ljava/lang/String;
    .restart local v20  # "selection":Ljava/lang/String;
    :goto_fa
    :try_start_fa
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_103

    const-string v0, "No attendees found"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_126

    .line 191
    :cond_103
    nop

    .line 209
    if-eqz v4, :cond_109

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_109
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_124

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_124
    const/4 v0, 0x1

    return v0

    .line 209
    :catchall_126
    move-exception v0

    :goto_127
    if-eqz v4, :cond_12c

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_12c
    sget-boolean v7, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v7, :cond_147

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    throw v0
.end method

.method private static meetsReply(II)Z
    .registers 5
    .param p0, "reply"  # I
    .param p1, "attendeeStatus"  # I

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

    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

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
    .param p1, "registered"  # Z

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
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 220
    .local v1, "userId":I
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

    if-eqz v2, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_58
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_8b

    .line 227
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_75

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_75
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    :cond_8b
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .registers 38
    .param p1, "filter"  # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"  # J

    .line 117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "ConditionProviders.CT"

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 118
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 119
    const-wide/32 v7, 0x5265c00

    add-long v9, v3, v7

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 120
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 121
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "begin ASC"

    move-object v12, v9

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 123
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v11, v0

    .line 124
    .local v11, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    add-long/2addr v7, v3

    iput-wide v7, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 126
    :try_start_37
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v0

    .line 127
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_3b
    if-eqz v10, :cond_1bc

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1bc

    .line 128
    const/4 v7, 0x0

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 129
    .local v12, "begin":J
    const/4 v8, 0x1

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 130
    .local v14, "end":J
    const/4 v7, 0x2

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, "title":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v7, 0x1

    if-ne v8, v7, :cond_5c

    const/4 v7, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v7, 0x0

    .line 132
    .local v7, "calendarVisible":Z
    :goto_5d
    const/4 v8, 0x4

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v22, v21

    .line 133
    .local v22, "eventId":I
    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 134
    .local v24, "name":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 135
    .local v26, "owner":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 136
    .local v27, "calendarId":J
    const/16 v8, 0x8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v29

    .line 137
    .local v30, "availability":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 138
    .local v8, "canAccessCal":Z
    sget-boolean v31, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v31, :cond_104

    .line 139
    move-object/from16 v31, v0

    .end local v0  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v31, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v0, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_90} :catch_1d2
    .catchall {:try_start_37 .. :try_end_90} :catchall_1ca

    move-object/from16 v32, v6

    .end local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .local v32, "uriBuilder":Landroid/net/Uri$Builder;
    const/16 v6, 0xa

    :try_start_94
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v6, v16
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_fd
    .catchall {:try_start_94 .. :try_end_9a} :catchall_f6

    move-object/from16 v33, v9

    .end local v9  # "uri":Landroid/net/Uri;
    .local v33, "uri":Landroid/net/Uri;
    :try_start_9c
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x1

    aput-object v9, v6, v19

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    const/16 v18, 0x2

    aput-object v9, v6, v18

    .line 141
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v18, 0x3

    aput-object v9, v6, v18

    .line 142
    invoke-static/range {v30 .. v30}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x4

    aput-object v9, v6, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x5

    aput-object v9, v6, v18

    move-object/from16 v9, v24

    const/16 v18, 0x6

    .end local v24  # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    aput-object v9, v6, v18
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_cc} :catch_f1
    .catchall {:try_start_9c .. :try_end_cc} :catchall_ec

    move-object/from16 v18, v10

    move-object/from16 v10, v26

    const/16 v20, 0x7

    .end local v26  # "owner":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_d2
    aput-object v10, v6, v20

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x8

    aput-object v20, v6, v21

    const/16 v20, 0x9

    .line 143
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v6, v20

    .line 139
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 171
    .end local v7  # "calendarVisible":Z
    .end local v8  # "canAccessCal":Z
    .end local v9  # "name":Ljava/lang/String;
    .end local v12  # "begin":J
    .end local v14  # "end":J
    .end local v17  # "title":Ljava/lang/String;
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v22  # "eventId":I
    .end local v27  # "calendarId":J
    .end local v30  # "availability":I
    .end local v31  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v10, "cursor":Landroid/database/Cursor;
    :catchall_ec
    move-exception v0

    move-object/from16 v18, v10

    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1e4

    .line 168
    .end local v18  # "cursor":Landroid/database/Cursor;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    :catch_f1
    move-exception v0

    move-object/from16 v18, v10

    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1d9

    .line 171
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v33  # "uri":Landroid/net/Uri;
    .local v9, "uri":Landroid/net/Uri;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    :catchall_f6
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v9  # "uri":Landroid/net/Uri;
    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v33  # "uri":Landroid/net/Uri;
    goto/16 :goto_1e4

    .line 168
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v33  # "uri":Landroid/net/Uri;
    .restart local v9  # "uri":Landroid/net/Uri;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    :catch_fd
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v9  # "uri":Landroid/net/Uri;
    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v33  # "uri":Landroid/net/Uri;
    goto/16 :goto_1d9

    .line 138
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33  # "uri":Landroid/net/Uri;
    .restart local v0  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v7  # "calendarVisible":Z
    .restart local v8  # "canAccessCal":Z
    .restart local v9  # "uri":Landroid/net/Uri;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    .restart local v12  # "begin":J
    .restart local v14  # "end":J
    .restart local v17  # "title":Ljava/lang/String;
    .restart local v22  # "eventId":I
    .restart local v24  # "name":Ljava/lang/String;
    .restart local v26  # "owner":Ljava/lang/String;
    .restart local v27  # "calendarId":J
    .restart local v30  # "availability":I
    :cond_104
    move-object/from16 v31, v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    move-object/from16 v9, v24

    move-object/from16 v10, v26

    const/16 v16, 0x0

    .line 145
    .end local v0  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v24  # "name":Ljava/lang/String;
    .end local v26  # "owner":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v31  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33  # "uri":Landroid/net/Uri;
    :goto_112
    cmp-long v0, v3, v12

    if-ltz v0, :cond_11c

    cmp-long v0, v3, v14

    if-gez v0, :cond_11c

    const/4 v0, 0x1

    goto :goto_11e

    :cond_11c
    move/from16 v0, v16

    .line 146
    .local v0, "meetsTime":Z
    :goto_11e
    if-eqz v7, :cond_149

    if-eqz v8, :cond_149

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v6, :cond_12e

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v6, :cond_12b

    goto :goto_12e

    :cond_12b
    move/from16 v20, v7

    goto :goto_144

    :cond_12e
    :goto_12e
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 148
    move/from16 v20, v7

    .end local v7  # "calendarVisible":Z
    .local v20, "calendarVisible":Z
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_144

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 149
    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b

    :cond_144
    :goto_144
    const/4 v6, 0x1

    goto :goto_14d

    .line 168
    .end local v0  # "meetsTime":Z
    .end local v8  # "canAccessCal":Z
    .end local v9  # "name":Ljava/lang/String;
    .end local v10  # "owner":Ljava/lang/String;
    .end local v12  # "begin":J
    .end local v14  # "end":J
    .end local v17  # "title":Ljava/lang/String;
    .end local v20  # "calendarVisible":Z
    .end local v22  # "eventId":I
    .end local v27  # "calendarId":J
    .end local v30  # "availability":I
    .end local v31  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :catch_146
    move-exception v0

    goto/16 :goto_1d9

    .line 146
    .restart local v0  # "meetsTime":Z
    .restart local v7  # "calendarVisible":Z
    .restart local v8  # "canAccessCal":Z
    .restart local v9  # "name":Ljava/lang/String;
    .restart local v10  # "owner":Ljava/lang/String;
    .restart local v12  # "begin":J
    .restart local v14  # "end":J
    .restart local v17  # "title":Ljava/lang/String;
    .restart local v22  # "eventId":I
    .restart local v27  # "calendarId":J
    .restart local v30  # "availability":I
    .restart local v31  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_149
    move/from16 v20, v7

    .line 149
    .end local v7  # "calendarVisible":Z
    .restart local v20  # "calendarVisible":Z
    :cond_14b
    move/from16 v6, v16

    .line 150
    .local v6, "meetsCalendar":Z
    :goto_14d
    move/from16 v21, v8

    move/from16 v7, v30

    const/4 v8, 0x1

    .end local v8  # "canAccessCal":Z
    .end local v30  # "availability":I
    .local v7, "availability":I
    .local v21, "canAccessCal":Z
    if-eq v7, v8, :cond_156

    const/16 v16, 0x1

    :cond_156
    move/from16 v8, v16

    .line 151
    .local v8, "meetsAvailability":Z
    if-eqz v6, :cond_1aa

    if-eqz v8, :cond_1aa

    .line 152
    sget-boolean v16, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v16, :cond_168

    move/from16 v16, v6

    .end local v6  # "meetsCalendar":Z
    .local v16, "meetsCalendar":Z
    const-string v6, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    .end local v16  # "meetsCalendar":Z
    .restart local v6  # "meetsCalendar":Z
    :cond_168
    move/from16 v16, v6

    .line 153
    .end local v6  # "meetsCalendar":Z
    .restart local v16  # "meetsCalendar":Z
    :goto_16a
    move/from16 v6, v22

    .end local v22  # "eventId":I
    .local v6, "eventId":I
    invoke-direct {v1, v2, v6, v10}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v22

    .line 154
    .local v22, "meetsAttendee":Z
    if-eqz v22, :cond_1a7

    .line 155
    sget-boolean v23, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v23, :cond_17b

    const-string v1, "    MEETS ATTENDEE"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_17b
    if-eqz v0, :cond_189

    .line 157
    sget-boolean v1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v1, :cond_186

    const-string v1, "      MEETS TIME"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_186
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 160
    :cond_189
    cmp-long v1, v12, v3

    if-lez v1, :cond_198

    move/from16 v19, v0

    .end local v0  # "meetsTime":Z
    .local v19, "meetsTime":Z
    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_19a

    .line 161
    iput-wide v12, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_1b0

    .line 160
    .end local v19  # "meetsTime":Z
    .restart local v0  # "meetsTime":Z
    :cond_198
    move/from16 v19, v0

    .line 162
    .end local v0  # "meetsTime":Z
    .restart local v19  # "meetsTime":Z
    :cond_19a
    cmp-long v0, v14, v3

    if-lez v0, :cond_1b0

    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_1b0

    .line 163
    iput-wide v14, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_1a6} :catch_146
    .catchall {:try_start_d2 .. :try_end_1a6} :catchall_1e3

    goto :goto_1b0

    .line 154
    .end local v19  # "meetsTime":Z
    .restart local v0  # "meetsTime":Z
    :cond_1a7
    move/from16 v19, v0

    .end local v0  # "meetsTime":Z
    .restart local v19  # "meetsTime":Z
    goto :goto_1b0

    .line 151
    .end local v16  # "meetsCalendar":Z
    .end local v19  # "meetsTime":Z
    .restart local v0  # "meetsTime":Z
    .local v6, "meetsCalendar":Z
    .local v22, "eventId":I
    :cond_1aa
    move/from16 v19, v0

    move/from16 v16, v6

    move/from16 v6, v22

    .line 167
    .end local v0  # "meetsTime":Z
    .end local v6  # "meetsCalendar":Z
    .end local v7  # "availability":I
    .end local v8  # "meetsAvailability":Z
    .end local v9  # "name":Ljava/lang/String;
    .end local v10  # "owner":Ljava/lang/String;
    .end local v12  # "begin":J
    .end local v14  # "end":J
    .end local v17  # "title":Ljava/lang/String;
    .end local v20  # "calendarVisible":Z
    .end local v21  # "canAccessCal":Z
    .end local v22  # "eventId":I
    .end local v27  # "calendarId":J
    :cond_1b0
    :goto_1b0
    move-object/from16 v1, p0

    move-object/from16 v10, v18

    move-object/from16 v0, v31

    move-object/from16 v6, v32

    move-object/from16 v9, v33

    goto/16 :goto_3b

    .line 127
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v31  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33  # "uri":Landroid/net/Uri;
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    .local v9, "uri":Landroid/net/Uri;
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_1bc
    move-object/from16 v31, v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .line 171
    .end local v0  # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9  # "uri":Landroid/net/Uri;
    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33  # "uri":Landroid/net/Uri;
    if-eqz v18, :cond_1e2

    .line 172
    :goto_1c6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_1e2

    .line 171
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33  # "uri":Landroid/net/Uri;
    .restart local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9  # "uri":Landroid/net/Uri;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    :catchall_1ca
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9  # "uri":Landroid/net/Uri;
    .end local v10  # "cursor":Landroid/database/Cursor;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33  # "uri":Landroid/net/Uri;
    goto :goto_1e4

    .line 168
    .end local v18  # "cursor":Landroid/database/Cursor;
    .end local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33  # "uri":Landroid/net/Uri;
    .restart local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9  # "uri":Landroid/net/Uri;
    .restart local v10  # "cursor":Landroid/database/Cursor;
    :catch_1d2
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .line 169
    .end local v6  # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9  # "uri":Landroid/net/Uri;
    .end local v10  # "cursor":Landroid/database/Cursor;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18  # "cursor":Landroid/database/Cursor;
    .restart local v32  # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33  # "uri":Landroid/net/Uri;
    :goto_1d9
    :try_start_1d9
    const-string v1, "error reading calendar"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1de
    .catchall {:try_start_1d9 .. :try_end_1de} :catchall_1e3

    .line 171
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    if-eqz v18, :cond_1e2

    .line 172
    goto :goto_1c6

    .line 175
    :cond_1e2
    :goto_1e2
    return-object v11

    .line 171
    :catchall_1e3
    move-exception v0

    :goto_1e4
    if-eqz v18, :cond_1e9

    .line 172
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1e9
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 89
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/notification/CalendarTracker$Callback;

    .line 80
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_5

    return-void

    .line 81
    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 82
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 83
    return-void
.end method
