.class Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupResult"
.end annotation


# static fields
.field private static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field private mAffinity:F

.field private final mExpireMillis:J

.field private mInWhiteList:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 481
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 471
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    return v0
.end method

.method private isExpired()Z
    .registers 5

    .line 520
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isInvalid()Z
    .registers 3

    .line 524
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method


# virtual methods
.method public getAffinity()F
    .registers 2

    .line 528
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 529
    const/4 v0, 0x0

    return v0

    .line 531
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return v0
.end method

.method public isContactInWhiteList()Z
    .registers 2

    .line 535
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mInWhiteList:Z

    return v0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .registers 11
    .param p1, "cursor"  # Landroid/database/Cursor;

    .line 484
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 488
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 489
    .local v0, "idIdx":I
    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_33

    .line 490
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 491
    .local v2, "id":I
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact _ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 493
    .end local v2  # "id":I
    :cond_33
    const/4 v2, -0x1

    .line 494
    .restart local v2  # "id":I
    const-string/jumbo v3, "invalid cursor: no _ID"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_3a
    :goto_3a
    const-string/jumbo v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 499
    .local v3, "starIdx":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_75

    .line 500
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4d

    move v6, v4

    goto :goto_4e

    :cond_4d
    move v6, v5

    .line 501
    .local v6, "isStarred":Z
    :goto_4e
    if-eqz v6, :cond_5a

    .line 502
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 504
    :cond_5a
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_74

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact STARRED is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v6  # "isStarred":Z
    :cond_74
    goto :goto_81

    .line 506
    :cond_75
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v6

    if-eqz v6, :cond_81

    const-string/jumbo v6, "invalid cursor: no STARRED"

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_81
    :goto_81
    const-string v6, "contact_type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 510
    .local v6, "whiteListIdx":I
    if-ltz v6, :cond_b3

    .line 511
    iget-boolean v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mInWhiteList:Z

    if-nez v7, :cond_95

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_94

    goto :goto_95

    :cond_94
    move v4, v5

    :cond_95
    :goto_95
    iput-boolean v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mInWhiteList:Z

    .line 512
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact in white list mInWhiteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mInWhiteList:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_b3
    return-void
.end method
