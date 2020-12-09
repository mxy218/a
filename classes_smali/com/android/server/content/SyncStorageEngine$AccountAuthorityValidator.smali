.class Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountAuthorityValidator"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProvidersPerUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const-class v0, Landroid/accounts/AccountManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 399
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    .line 400
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    .line 401
    return-void
.end method


# virtual methods
.method isAccountValid(Landroid/accounts/Account;I)Z
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 407
    if-nez v0, :cond_15

    .line 408
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    :cond_15
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isAuthorityValid(Ljava/lang/String;I)Z
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 417
    if-nez v0, :cond_14

    .line 418
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    :cond_14
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 422
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_26

    const/4 p2, 0x1

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_2e
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
