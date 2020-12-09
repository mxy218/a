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


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 423
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .registers 1

    .line 415
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result p0

    return p0
.end method

.method private isExpired()Z
    .registers 5

    .line 453
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

    .line 457
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

    .line 461
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    const/4 v0, 0x0

    return v0

    .line 464
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return v0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .registers 6

    .line 426
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 430
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 431
    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_33

    .line 432
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 433
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact _ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 435
    :cond_33
    nop

    .line 436
    const-string v0, "invalid cursor: no _ID"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_39
    :goto_39
    const-string/jumbo v0, "starred"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 441
    if-ltz v0, :cond_72

    .line 442
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_4a

    const/4 p1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    .line 443
    :goto_4b
    if-eqz p1, :cond_57

    .line 444
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 446
    :cond_57
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact STARRED is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_71
    goto :goto_7d

    .line 448
    :cond_72
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7d

    const-string p1, "invalid cursor: no STARRED"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_7d
    :goto_7d
    return-void
.end method
