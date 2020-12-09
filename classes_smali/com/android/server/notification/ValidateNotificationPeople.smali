.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 60
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 65
    const-string v0, "_id"

    const-string/jumbo v1, "starred"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method static synthetic access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 3

    .line 56
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 291
    if-nez p0, :cond_3

    .line 292
    return-object p1

    .line 294
    :cond_3
    if-nez p1, :cond_6

    .line 295
    return-object p0

    .line 297
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 298
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p0, v3

    .line 299
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 301
    :cond_1b
    array-length p0, p1

    :goto_1c
    if-ge v2, p0, :cond_26

    aget-object v1, p1, v2

    .line 302
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 304
    :cond_26
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 203
    if-nez v0, :cond_31

    .line 205
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_28} :catch_29

    .line 209
    goto :goto_31

    .line 207
    :catch_29
    move-exception p1

    .line 208
    const-string v1, "ValidateNoPeople"

    const-string v2, "failed to create package context for lookups"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 3

    .line 285
    const-string v0, "android.people.list"

    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "android.people"

    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 310
    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 311
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 314
    :cond_b
    instance-of p1, p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_75

    .line 315
    check-cast p0, Ljava/util/ArrayList;

    .line 317
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 318
    return-object v0

    .line 321
    :cond_1a
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_30

    .line 322
    nop

    .line 323
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 326
    :cond_30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_52

    .line 327
    nop

    .line 328
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 329
    new-array v0, p1, [Ljava/lang/String;

    .line 330
    nop

    :goto_40
    if-ge v1, p1, :cond_51

    .line 331
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 333
    :cond_51
    return-object v0

    .line 336
    :cond_52
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Person;

    if-eqz p1, :cond_74

    .line 337
    nop

    .line 338
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 339
    new-array v0, p1, [Ljava/lang/String;

    .line 340
    nop

    :goto_62
    if-ge v1, p1, :cond_73

    .line 341
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    invoke-virtual {v2}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 343
    :cond_73
    return-object v0

    .line 346
    :cond_74
    return-object v0

    .line 349
    :cond_75
    instance-of p1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_81

    .line 350
    new-array p1, v2, [Ljava/lang/String;

    .line 351
    check-cast p0, Ljava/lang/String;

    aput-object p0, p1, v1

    .line 352
    return-object p1

    .line 355
    :cond_81
    instance-of p1, p0, [C

    if-eqz p1, :cond_91

    .line 356
    new-array p1, v2, [Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/lang/String;

    check-cast p0, [C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p1, v1

    .line 358
    return-object p1

    .line 361
    :cond_91
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_a0

    .line 362
    new-array p1, v2, [Ljava/lang/String;

    .line 363
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    .line 364
    return-object p1

    .line 367
    :cond_a0
    instance-of p1, p0, [Ljava/lang/CharSequence;

    if-eqz p1, :cond_b8

    .line 368
    check-cast p0, [Ljava/lang/CharSequence;

    .line 369
    array-length p1, p0

    .line 370
    new-array v0, p1, [Ljava/lang/String;

    .line 371
    nop

    :goto_aa
    if-ge v1, p1, :cond_b7

    .line 372
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 374
    :cond_b7
    return-object v0

    .line 377
    :cond_b8
    return-object v0
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4

    .line 387
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 389
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p1

    return-object p1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4

    .line 381
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 382
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 381
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p1

    return-object p1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 12

    .line 394
    const-string v0, "ValidateNoPeople"

    new-instance v1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 395
    nop

    .line 397
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 398
    if-nez v2, :cond_25

    .line 399
    const-string p1, "Null cursor from contacts query."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_30

    .line 400
    nop

    .line 408
    if-eqz v2, :cond_24

    .line 409
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_24
    return-object v1

    .line 402
    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 403
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_30

    goto :goto_25

    .line 408
    :cond_2f
    goto :goto_38

    .line 405
    :catchall_30
    move-exception p1

    .line 406
    :try_start_31
    const-string p2, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3c

    .line 408
    if-eqz v2, :cond_3b

    .line 409
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_3b
    return-object v1

    .line 408
    :catchall_3c
    move-exception p1

    if-eqz v2, :cond_42

    .line 409
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_42
    throw p1
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 11

    .line 216
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 218
    const/4 v6, 0x1

    new-array v7, v6, [F

    .line 219
    nop

    .line 220
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    .line 221
    const/4 v0, 0x0

    aget v1, v7, v0

    .line 222
    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 223
    if-nez p1, :cond_36

    .line 224
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2a

    move v3, v6

    goto :goto_2b

    :cond_2a
    move v3, v0

    :goto_2b
    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_32

    move v0, v6

    :cond_32
    invoke-virtual {v2, p2, v3, v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_39

    .line 227
    :cond_36
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 229
    :goto_39
    return-object p1
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    .line 234
    nop

    .line 235
    const/4 v0, 0x0

    if-nez p3, :cond_5

    .line 236
    return-object v0

    .line 238
    :cond_5
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-static {p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p3

    .line 240
    if-eqz p3, :cond_17

    .line 241
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_17
    sget-boolean p3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p3, :cond_3d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Validating: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ValidateNoPeople"

    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_3d
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 246
    nop

    .line 247
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v1, 0x0

    move v2, p4

    :goto_4a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_4a

    .line 250
    :cond_5d
    iget-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 251
    :try_start_60
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v7, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 253
    if-eqz v5, :cond_86

    invoke-static {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v7

    if-eqz v7, :cond_79

    goto :goto_86

    .line 256
    :cond_79
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v3, :cond_89

    const-string v3, "ValidateNoPeople"

    const-string/jumbo v7, "using cached lookupResult"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 254
    :cond_86
    :goto_86
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_89
    :goto_89
    if-eqz v5, :cond_93

    .line 259
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 261
    :cond_93
    monitor-exit v4

    .line 262
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9b

    .line 263
    goto :goto_9f

    .line 265
    :cond_9b
    goto :goto_4a

    .line 261
    :catchall_9c
    move-exception p1

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_60 .. :try_end_9e} :catchall_9c

    throw p1

    .line 268
    :cond_9f
    :goto_9f
    aput v1, p5, p4

    .line 270
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c2

    .line 271
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p1, :cond_c1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "final affinity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ValidateNoPeople"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_c1
    return-object v0

    .line 275
    :cond_c2
    sget-boolean p3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p3, :cond_dc

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Pending: future work scheduled for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ValidateNoPeople"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_dc
    new-instance p3, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V

    return-object p3
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .registers 15

    .line 160
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v1, "ValidateNoPeople"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1a
    const/4 v0, 0x0

    if-nez p2, :cond_1e

    return v0

    .line 162
    :cond_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 163
    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 165
    if-nez v5, :cond_30

    .line 166
    return v0

    .line 168
    :cond_30
    const/4 v8, 0x0

    .line 169
    move-object v4, p0

    move-object v6, v2

    move-object v7, p2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    .line 170
    const/4 p2, 0x0

    aget v0, v3, p2

    .line 172
    if-eqz p1, :cond_9b

    .line 175
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 176
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {p2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    int-to-long p2, p3

    :try_start_4e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_73

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Timeout while waiting for affinity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Returning timeoutAffinity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_72} :catch_7d

    .line 188
    return p4

    .line 194
    :cond_73
    nop

    .line 196
    invoke-virtual {p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_9b

    .line 190
    :catch_7d
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "InterruptedException while waiting for affinity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Returning affinity="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    return v0

    .line 198
    :cond_9b
    :goto_9b
    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 6

    .line 96
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 100
    new-instance p1, Landroid/util/LruCache;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 101
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 101
    const/4 p2, 0x1

    const-string/jumbo v0, "validate_notification_people_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p2, p1, :cond_4d

    move p1, p2

    goto :goto_4e

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    iput-boolean p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 103
    iget-boolean p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-eqz p1, :cond_72

    .line 104
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance p1, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 116
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    :cond_72
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6

    .line 122
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const-string v1, "ValidateNoPeople"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 123
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p1, :cond_10

    const-string p1, "disabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_10
    return-object v2

    .line 126
    :cond_11
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_46

    .line 130
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    .line 131
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p1, :cond_2b

    const-string/jumbo p1, "skipping global notification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2b
    return-object v2

    .line 134
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 135
    if-nez v0, :cond_41

    .line 136
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p1, :cond_40

    const-string/jumbo p1, "skipping notification that lacks a context"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_40
    return-object v2

    .line 139
    :cond_41
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object p1

    return-object p1

    .line 127
    :cond_46
    :goto_46
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p1, :cond_50

    const-string/jumbo p1, "skipping empty notification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_50
    return-object v2
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 145
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 150
    return-void
.end method
