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
    .registers 3

    .line 62
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 63
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 70
    const-string v0, "_id"

    const-string/jumbo v1, "starred"

    const-string v2, "contact_type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 59
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 59
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 59
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 59
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Landroid/net/Uri;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "first"  # [Ljava/lang/String;
    .param p1, "second"  # [Ljava/lang/String;

    .line 347
    if-nez p0, :cond_3

    .line 348
    return-object p1

    .line 350
    :cond_3
    if-nez p1, :cond_6

    .line 351
    return-object p0

    .line 353
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 354
    .local v0, "people":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p0, v3

    .line 355
    .local v4, "person":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v4  # "person":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 357
    :cond_1b
    array-length v1, p1

    :goto_1c
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    .line 358
    .local v3, "person":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3  # "person":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 360
    :cond_26
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"  # I
    .param p2, "handle"  # Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "userHandle"  # Landroid/os/UserHandle;

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 231
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_32

    .line 233
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 234
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_29} :catch_2a

    .line 237
    goto :goto_32

    .line 235
    :catch_2a
    move-exception v1

    .line 236
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ValidateNoPeople"

    const-string v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_32
    :goto_32
    return-object v0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 4
    .param p0, "extras"  # Landroid/os/Bundle;

    .line 341
    const-string v0, "android.people.list"

    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "peopleList":[Ljava/lang/String;
    const-string v1, "android.people"

    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "legacyPeople":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "extras"  # Landroid/os/Bundle;
    .param p1, "key"  # Ljava/lang/String;

    .line 365
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "people":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 367
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 370
    :cond_c
    instance-of v1, v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_77

    .line 371
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 373
    .local v1, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 374
    return-object v2

    .line 377
    :cond_1c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_32

    .line 378
    move-object v2, v1

    .line 379
    .local v2, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 382
    .end local v2  # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_54

    .line 383
    move-object v2, v1

    .line 384
    .local v2, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 385
    .local v3, "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 386
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    if-ge v5, v3, :cond_53

    .line 387
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 389
    .end local v5  # "i":I
    :cond_53
    return-object v4

    .line 392
    .end local v2  # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3  # "N":I
    .end local v4  # "array":[Ljava/lang/String;
    :cond_54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Person;

    if-eqz v3, :cond_76

    .line 393
    move-object v2, v1

    .line 394
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 395
    .restart local v3  # "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 396
    .restart local v4  # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_64
    if-ge v5, v3, :cond_75

    .line 397
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-virtual {v6}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 399
    .end local v5  # "i":I
    :cond_75
    return-object v4

    .line 402
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v3  # "N":I
    .end local v4  # "array":[Ljava/lang/String;
    :cond_76
    return-object v2

    .line 405
    .end local v1  # "arrayList":Ljava/util/ArrayList;
    :cond_77
    instance-of v1, v0, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_84

    .line 406
    new-array v1, v4, [Ljava/lang/String;

    .line 407
    .local v1, "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 408
    return-object v1

    .line 411
    .end local v1  # "array":[Ljava/lang/String;
    :cond_84
    instance-of v1, v0, [C

    if-eqz v1, :cond_95

    .line 412
    new-array v1, v4, [Ljava/lang/String;

    .line 413
    .restart local v1  # "array":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, [C

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v3

    .line 414
    return-object v1

    .line 417
    .end local v1  # "array":[Ljava/lang/String;
    :cond_95
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a5

    .line 418
    new-array v1, v4, [Ljava/lang/String;

    .line 419
    .restart local v1  # "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 420
    return-object v1

    .line 423
    .end local v1  # "array":[Ljava/lang/String;
    :cond_a5
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_be

    .line 424
    move-object v1, v0

    check-cast v1, [Ljava/lang/CharSequence;

    .line 425
    .local v1, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v2, v1

    .line 426
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 427
    .local v3, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b0
    if-ge v4, v2, :cond_bd

    .line 428
    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 430
    .end local v4  # "i":I
    :cond_bd
    return-object v3

    .line 433
    .end local v1  # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v2  # "N":I
    .end local v3  # "array":[Ljava/lang/String;
    :cond_be
    return-object v2
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "email"  # Ljava/lang/String;

    .line 443
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 445
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 446
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "number"  # Ljava/lang/String;

    .line 437
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 438
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 439
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "lookupUri"  # Landroid/net/Uri;

    .line 450
    const-string v0, "ValidateNoPeople"

    new-instance v1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 451
    .local v1, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const/4 v2, 0x0

    .line 453
    .local v2, "c":Landroid/database/Cursor;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 454
    if-nez v2, :cond_25

    .line 455
    const-string v3, "Null cursor from contacts query."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_34

    .line 456
    nop

    .line 464
    if-eqz v2, :cond_24

    .line 465
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_24
    return-object v1

    .line 458
    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 459
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_34

    goto :goto_25

    .line 464
    :cond_2f
    nop

    .line 465
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 461
    :catchall_34
    move-exception v3

    .line 462
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_35
    const-string v4, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3f

    .line 464
    nop

    .end local v3  # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_3e

    .line 465
    goto :goto_30

    .line 468
    :cond_3e
    :goto_3e
    return-object v1

    .line 464
    :catchall_3f
    move-exception v0

    if-eqz v2, :cond_45

    .line 465
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 15
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 244
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v8, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 246
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x1

    new-array v10, v9, [F

    .line 252
    .local v10, "affinityOut":[F
    new-array v11, v9, [Z

    .line 253
    .local v11, "contactInWhiteOut":[Z
    nop

    .line 254
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F[Z)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 256
    .local v0, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v1, 0x0

    aget v2, v10, v1

    .line 257
    .local v2, "affinity":F
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 258
    if-nez v0, :cond_3b

    .line 259
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2f

    move v4, v9

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_37

    move v1, v9

    :cond_37
    invoke-virtual {v3, p2, v4, v1, v9}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_3e

    .line 262
    :cond_3b
    invoke-virtual {v0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 264
    :goto_3e
    return-object v0
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F[Z)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 25
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;
    .param p5, "affinityOut"  # [F
    .param p6, "isContactInWhiteListOut"  # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F[Z)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    .line 273
    .local p4, "peopleOverride":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 275
    .local v0, "affinity":F
    const/4 v1, 0x0

    .line 277
    .local v1, "isContactInWhiteList":Z
    const/4 v2, 0x0

    if-nez p3, :cond_a

    .line 278
    return-object v2

    .line 280
    :cond_a
    new-instance v3, Landroid/util/ArraySet;

    move-object/from16 v9, p4

    invoke-direct {v3, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v10, v3

    .line 281
    .local v10, "people":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, "notificationPeople":[Ljava/lang/String;
    if-eqz v11, :cond_1f

    .line 283
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_1f
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ValidateNoPeople"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_45
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v3

    .line 288
    .local v12, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 289
    .local v3, "personIdx":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    move v3, v1

    move v1, v0

    .end local v0  # "affinity":F
    .local v1, "affinity":F
    .local v3, "isContactInWhiteList":Z
    .local v5, "personIdx":I
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 290
    .local v13, "handle":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_53

    .line 292
    :cond_67
    iget-object v14, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v14

    .line 293
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v13}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v15, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 295
    .local v15, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v15, :cond_90

    invoke-static {v15}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v16

    if-eqz v16, :cond_83

    goto :goto_90

    .line 298
    :cond_83
    sget-boolean v16, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v16, :cond_93

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v6, "using cached lookupResult"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 296
    :cond_90
    :goto_90
    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_93
    :goto_93
    if-eqz v15, :cond_cc

    .line 301
    invoke-virtual {v15}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v1, v2

    .line 303
    if-nez v3, :cond_a9

    .line 304
    invoke-virtual {v15}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isContactInWhiteList()Z

    move-result v2

    if-eqz v2, :cond_a7

    goto :goto_a9

    :cond_a7
    const/4 v6, 0x0

    goto :goto_aa

    :cond_a9
    :goto_a9
    const/4 v6, 0x1

    :goto_aa
    move v3, v6

    .line 305
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_c9

    .line 306
    const-string v2, "ValidateNoPeople"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0  # "cacheKey":Ljava/lang/String;
    .local v17, "cacheKey":Ljava/lang/String;
    const-string/jumbo v0, "validatePeople isContactInWhiteList = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 305
    .end local v17  # "cacheKey":Ljava/lang/String;
    .restart local v0  # "cacheKey":Ljava/lang/String;
    :cond_c9
    move-object/from16 v17, v0

    .end local v0  # "cacheKey":Ljava/lang/String;
    .restart local v17  # "cacheKey":Ljava/lang/String;
    goto :goto_ce

    .line 300
    .end local v17  # "cacheKey":Ljava/lang/String;
    .restart local v0  # "cacheKey":Ljava/lang/String;
    :cond_cc
    move-object/from16 v17, v0

    .line 310
    .end local v0  # "cacheKey":Ljava/lang/String;
    .end local v15  # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :goto_ce
    monitor-exit v14

    .line 311
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0xa

    if-ne v5, v0, :cond_d9

    .line 312
    move v0, v1

    move v13, v3

    move v14, v5

    goto :goto_e2

    .line 314
    .end local v13  # "handle":Ljava/lang/String;
    :cond_d9
    const/4 v2, 0x0

    goto/16 :goto_53

    .line 310
    .restart local v13  # "handle":Ljava/lang/String;
    :catchall_dc
    move-exception v0

    monitor-exit v14
    :try_end_de
    .catchall {:try_start_6a .. :try_end_de} :catchall_dc

    throw v0

    .line 289
    .end local v13  # "handle":Ljava/lang/String;
    :cond_df
    move v0, v1

    move v13, v3

    move v14, v5

    .line 317
    .end local v1  # "affinity":F
    .end local v3  # "isContactInWhiteList":Z
    .end local v5  # "personIdx":I
    .local v0, "affinity":F
    .local v13, "isContactInWhiteList":Z
    .local v14, "personIdx":I
    :goto_e2
    const/4 v1, 0x0

    aput v0, p5, v1

    .line 319
    aput-boolean v13, p6, v1

    .line 320
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_104

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validatePeople isContactInWhiteListOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, p6, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_104
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_126

    .line 327
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_124

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final affinity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_124
    const/4 v1, 0x0

    return-object v1

    .line 331
    :cond_126
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v1, :cond_140

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending: future work scheduled for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_140
    new-instance v15, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V

    return-object v15
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF[Z)F
    .registers 23
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .param p2, "extras"  # Landroid/os/Bundle;
    .param p3, "timeoutMs"  # I
    .param p4, "timeoutAffinity"  # F
    .param p5, "isContactInWhiteListOut"  # [Z

    .line 172
    move/from16 v1, p4

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v9, "ValidateNoPeople"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_1f
    move-object/from16 v10, p1

    .line 173
    :goto_21
    const/4 v0, 0x0

    if-nez p2, :cond_25

    return v0

    .line 174
    :cond_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v13, v12, [F

    .line 176
    .local v13, "affinityOut":[F
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v14

    .line 177
    .local v14, "context":Landroid/content/Context;
    if-nez v14, :cond_37

    .line 178
    return v0

    .line 183
    :cond_37
    const/4 v6, 0x0

    .line 184
    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v11

    move-object/from16 v5, p2

    move-object v7, v13

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F[Z)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v2

    .line 186
    .local v2, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v0, 0x0

    aget v3, v13, v0

    .line 188
    .local v3, "affinity":F
    aget-boolean v4, p5, v0

    .line 189
    .local v4, "isContactInWhiteList":Z
    sget-boolean v5, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v5, :cond_62

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 getContactAffinity isContactInWhiteList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_62
    if-eqz v2, :cond_f0

    .line 196
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 197
    .local v5, "s":Ljava/util/concurrent/Semaphore;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$2;

    move-object/from16 v8, p0

    invoke-direct {v7, v8, v2, v5}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    move/from16 v6, p3

    move-object v15, v13

    .end local v13  # "affinityOut":[F
    .local v15, "affinityOut":[F
    int-to-long v12, v6

    :try_start_79
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v12, v13, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout while waiting for affinity: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Returning timeoutAffinity="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_9d} :catch_d2

    .line 209
    return v1

    .line 215
    :cond_9e
    nop

    .line 217
    invoke-virtual {v2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 219
    invoke-virtual {v2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->isContactInWhiteList()Z

    move-result v7

    if-nez v7, :cond_b3

    if-eqz v4, :cond_b0

    goto :goto_b3

    :cond_b0
    move/from16 v16, v0

    goto :goto_b5

    :cond_b3
    :goto_b3
    const/16 v16, 0x1

    :goto_b5
    move/from16 v4, v16

    .line 220
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v7, :cond_cf

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "2 getContactAffinity isContactInWhiteList = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_cf
    aput-boolean v4, p5, v0

    goto :goto_f5

    .line 211
    :catch_d2
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InterruptedException while waiting for affinity: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Returning affinity="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    return v3

    .line 193
    .end local v0  # "e":Ljava/lang/InterruptedException;
    .end local v5  # "s":Ljava/util/concurrent/Semaphore;
    .end local v15  # "affinityOut":[F
    .restart local v13  # "affinityOut":[F
    :cond_f0
    move-object/from16 v8, p0

    move/from16 v6, p3

    move-object v15, v13

    .line 226
    .end local v13  # "affinityOut":[F
    .restart local v15  # "affinityOut":[F
    :goto_f5
    return v3
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;

    .line 104
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

    .line 105
    :cond_27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 108
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 109
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    const/4 v1, 0x1

    const-string/jumbo v2, "validate_notification_people_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 111
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-eqz v0, :cond_72

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    :cond_72
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 130
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const-string v1, "ValidateNoPeople"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 131
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_10
    return-object v2

    .line 134
    :cond_11
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_46

    .line 138
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    .line 139
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "skipping global notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_2b
    return-object v2

    .line 142
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_41

    .line 144
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v3, :cond_40

    const-string/jumbo v3, "skipping notification that lacks a context"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_40
    return-object v2

    .line 147
    :cond_41
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0  # "context":Landroid/content/Context;
    :cond_46
    :goto_46
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_50

    const-string/jumbo v0, "skipping empty notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_50
    return-object v2
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"  # Lcom/android/server/notification/RankingConfig;

    .line 153
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 158
    return-void
.end method
