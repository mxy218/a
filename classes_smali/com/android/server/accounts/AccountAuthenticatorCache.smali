.class Lcom/android/server/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Lcom/android/server/accounts/IAccountAuthenticatorCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;",
        "Lcom/android/server/accounts/IAccountAuthenticatorCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Lcom/android/server/accounts/AccountAuthenticatorCache$1;)V

    sput-object v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 51
    sget-object v5, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    const-string v2, "android.accounts.AccountAuthenticator"

    const-string v3, "android.accounts.AccountAuthenticator"

    const-string v4, "account-authenticator"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 3

    .line 44
    invoke-super {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .registers 12

    .line 59
    sget-object v0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    const/4 p3, 0x2

    .line 63
    :try_start_7
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 72
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_3a

    if-eqz p3, :cond_2f

    .line 75
    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-object p2

    .line 77
    :cond_2f
    :try_start_2f
    new-instance p3, Landroid/accounts/AuthenticatorDescription;

    move-object v0, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3a

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-object p3

    .line 80
    :catchall_3a
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 4

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    return-object p1
.end method
