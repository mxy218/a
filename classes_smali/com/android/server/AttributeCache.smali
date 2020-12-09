.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 85
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 75
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 78
    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .registers 9

    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    .line 122
    nop

    .line 123
    nop

    .line 124
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 125
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 126
    if-eqz p1, :cond_40

    .line 127
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/AttributeCache$Entry;

    .line 128
    if-eqz p4, :cond_40

    .line 129
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_67

    return-object p4

    .line 135
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p4
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_30} :catch_64
    .catchall {:try_start_24 .. :try_end_30} :catchall_67

    .line 137
    if-nez p4, :cond_34

    .line 138
    :try_start_32
    monitor-exit p0

    return-object v1

    .line 142
    :cond_34
    nop

    .line 143
    new-instance v0, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v0, p4}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object p4, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {p4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 147
    :cond_40
    if-nez p1, :cond_4e

    .line 148
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object p4

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_67

    .line 153
    :cond_4e
    :try_start_4e
    new-instance p4, Lcom/android/server/AttributeCache$Entry;

    iget-object v2, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 154
    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p4, v2, p2}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 155
    invoke-virtual {p1, p3, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_5e} :catch_61
    .catchall {:try_start_4e .. :try_end_5e} :catchall_67

    .line 158
    nop

    .line 160
    :try_start_5f
    monitor-exit p0

    return-object p4

    .line 156
    :catch_61
    move-exception p1

    .line 157
    monitor-exit p0

    return-object v1

    .line 140
    :catch_64
    move-exception p1

    .line 141
    monitor-exit p0

    return-object v1

    .line 161
    :catchall_67
    move-exception p1

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    throw p1
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 7

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AttributeCache$Package;

    .line 91
    if-eqz p1, :cond_40

    .line 92
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-static {p1}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 93
    invoke-static {p1}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 94
    move v3, v0

    :goto_22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 95
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v4}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 92
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 99
    :cond_37
    iget-object p1, p1, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 102
    :cond_40
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 108
    const v0, -0x400000a1  # -1.9999808f

    and-int/2addr p1, v0

    if-eqz p1, :cond_12

    .line 114
    iget-object p1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 116
    :cond_12
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method
