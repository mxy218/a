.class public Lcom/meizu/account/oauth/MzAccountUtil;
.super Ljava/lang/Object;
.source "MzAccountUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MzAccountUtil"

.field private static mBuildExt:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mIsInternational:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getMzAccountInfo(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 4

    .line 33
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.meizu.account"

    .line 34
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 35
    array-length v0, p0

    if-lez v0, :cond_2c

    .line 36
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    .line 37
    sget-object v0, Lcom/meizu/account/oauth/MzAccountUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more than 1 flyme account : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 39
    aget-object p0, p0, v0

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasMzAccount(Landroid/content/Context;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 29
    invoke-static {p0}, Lcom/meizu/account/oauth/MzAccountUtil;->getMzAccountInfo(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0

    .line 27
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isProductInternational()Z
    .registers 5

    const/4 v0, 0x0

    .line 51
    :try_start_1
    sget-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mIsInternational:Ljava/lang/Boolean;

    if-nez v1, :cond_42

    .line 52
    sget-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mBuildExt:Ljava/lang/Class;

    if-nez v1, :cond_11

    const-string v1, "android.os.BuildExt"

    .line 53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mBuildExt:Ljava/lang/Class;

    .line 55
    :cond_11
    sget-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mBuildExt:Ljava/lang/Class;

    const-string v2, "isProductInternational"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sput-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mIsInternational:Ljava/lang/Boolean;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_42

    :catch_27
    move-exception v1

    .line 59
    sget-object v2, Lcom/meizu/account/oauth/MzAccountUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isProductInternational] error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_42
    :goto_42
    sget-object v1, Lcom/meizu/account/oauth/MzAccountUtil;->mIsInternational:Ljava/lang/Boolean;

    if-nez v1, :cond_47

    goto :goto_4b

    :cond_47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_4b
    return v0
.end method
