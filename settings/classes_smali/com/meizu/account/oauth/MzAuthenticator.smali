.class public Lcom/meizu/account/oauth/MzAuthenticator;
.super Ljava/lang/Object;
.source "MzAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzAuthenticator"


# instance fields
.field private mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mScope:Ljava/lang/String;

.field private mUserInfoListener:Lcom/meizu/account/oauth/OnUserInfoListener;

.field private mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "basic"

    .line 58
    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    :cond_19
    return-void

    .line 53
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/meizu/account/oauth/MzAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/account/oauth/MzAuthenticator;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/account/oauth/MzAuthenticator;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/meizu/account/oauth/MzAuthenticator;->handleSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/account/oauth/MzAuthenticator;Landroid/content/Intent;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/account/oauth/MzAuthenticator;Landroid/os/Bundle;)Ljava/util/List;
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->getReturnMessage(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/account/oauth/MzAuthenticator;->handleError(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/account/oauth/MzAuthenticator;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/account/oauth/MzAuthenticator;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/account/oauth/MzAuthenticator;)Lcom/meizu/account/oauth/OnUserInfoListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoListener:Lcom/meizu/account/oauth/OnUserInfoListener;

    return-object p0
.end method

.method private getReturnMessage(Landroid/os/Bundle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "errorMessage"

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 212
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    const/4 v3, 0x0

    const-string v4, "cacheAccountName"

    .line 215
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 216
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_26
    if-ltz v2, :cond_34

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cf

    :cond_34
    const-string/jumbo p1, "params not legal!"

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p0, 0x7

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "context_is_null"

    .line 224
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cf

    :cond_4c
    const-string p1, "get token failed!"

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p0, 0x2

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "get_token_failed"

    .line 227
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 228
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9d

    const/16 p1, 0x8

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scope_null_token:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 232
    :cond_9d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c4

    const-string/jumbo p0, "uid ="

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c4

    const-string p0, "not match package"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c4

    const/16 p0, 0x9

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "uid_not_match"

    .line 234
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    :cond_c4
    const/4 p0, 0x3

    .line 236
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_cf
    if-nez v3, :cond_d3

    const-string v3, ""

    .line 240
    :cond_d3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private handleError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    if-nez p0, :cond_b

    .line 258
    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/account/oauth/OnMzAuthListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    if-nez p0, :cond_b

    .line 252
    invoke-interface {v0, p1}, Lcom/meizu/account/oauth/OnMzAuthListener;->onHandleIntent(Landroid/content/Intent;)V

    :cond_b
    return-void
.end method

.method private handleSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    if-nez p0, :cond_b

    .line 246
    invoke-interface {v0, p1, p2}, Lcom/meizu/account/oauth/OnMzAuthListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 385
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    :goto_11
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 390
    :cond_20
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    const/4 v1, 0x0

    .line 398
    iput-object v1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

    .line 400
    :try_start_6
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 401
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 403
    :cond_17
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    if-eqz v2, :cond_20

    .line 404
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v2, v0}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_20

    .line 407
    :catch_20
    :cond_20
    iput-object v1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoListener:Lcom/meizu/account/oauth/OnUserInfoListener;

    return-void
.end method

.method public getAuthToken(ZZLandroid/app/Activity;Lcom/meizu/account/oauth/OnMzAuthListener;)V
    .registers 12

    .line 148
    iput-object p4, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAuthListener:Lcom/meizu/account/oauth/OnMzAuthListener;

    .line 149
    iget-object p4, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 150
    iget-object p4, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/meizu/account/oauth/MzAccountUtil;->getMzAccountInfo(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p4

    if-nez p4, :cond_1a

    .line 152
    new-instance p4, Landroid/accounts/Account;

    const-string/jumbo v1, "unknown"

    const-string v2, "com.meizu.account"

    invoke-direct {p4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object v1, p4

    .line 155
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    const-string p4, "invalidateToken"

    .line 157
    invoke-virtual {v3, p4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_28
    const-string/jumbo p1, "show_taobao_bind"

    .line 159
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    if-nez p3, :cond_39

    const-string/jumbo p2, "retry"

    .line 162
    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    :cond_39
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    new-instance v5, Lcom/meizu/account/oauth/MzAuthenticator$1;

    invoke-direct {v5, p0}, Lcom/meizu/account/oauth/MzAuthenticator$1;-><init>(Lcom/meizu/account/oauth/MzAuthenticator;)V

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public getAuthToken(ZZLandroid/app/Activity;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/account/oauth/MzAuthException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/account/oauth/MzAccountUtil;->getMzAccountInfo(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_18

    .line 75
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v2, "unknown"

    const-string v3, "com.meizu.account"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object v2, v0

    .line 78
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_26

    const-string p1, "invalidateToken"

    .line 80
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_26
    const-string/jumbo p1, "show_taobao_bind"

    .line 82
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    if-nez p3, :cond_35

    const-string/jumbo p2, "retry"

    .line 84
    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    :cond_35
    iput-boolean p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    .line 87
    iget-object v3, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 93
    :try_start_49
    iget-object v3, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_55
    .catch Landroid/accounts/OperationCanceledException; {:try_start_49 .. :try_end_55} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_f4

    const/4 p2, 0x0

    .line 108
    iget-object p3, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    invoke-interface {p3}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result p3

    if-eqz p3, :cond_bf

    iget-boolean p3, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mCanceled:Z

    if-nez p3, :cond_bf

    const-string p2, "authtoken"

    .line 109
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b1

    const-string p2, "intent"

    .line 110
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a5

    const-string p2, "errorMessage"

    .line 114
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 115
    invoke-direct {p0, v3}, Lcom/meizu/account/oauth/MzAuthenticator;->getReturnMessage(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    .line 116
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 117
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 118
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 119
    new-instance p3, Lcom/meizu/account/oauth/MzAuthException;

    invoke-direct {p3, p1, p2, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 121
    :cond_9a
    new-instance p0, Lcom/meizu/account/oauth/MzAuthException;

    const/16 p1, 0xb

    const-string/jumbo p2, "unknow_error"

    invoke-direct {p0, p1, p2}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 111
    :cond_a5
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 112
    new-instance p1, Lcom/meizu/account/oauth/MzAuthException;

    invoke-direct {p1, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(Landroid/content/Intent;)V

    throw p1

    .line 123
    :cond_b1
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "authsecret"

    .line 124
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 126
    :cond_bf
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 127
    iget-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_d7

    .line 128
    new-instance p0, Lcom/meizu/account/oauth/MzAuthException;

    const/4 p1, 0x6

    const-string/jumbo p2, "unsupport_operation"

    invoke-direct {p0, p1, p2}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 131
    :cond_d7
    new-instance p1, Lcom/meizu/account/oauth/MzAuthException;

    const/16 p2, 0x8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "scope_null_token:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mScope:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_f3
    return-object v2

    :catch_f4
    move-exception p0

    .line 103
    new-instance p1, Lcom/meizu/account/oauth/MzAuthException;

    const-string p2, "error_is_throwed"

    invoke-direct {p1, v0, p2, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_fd
    move-exception p0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-lez p1, :cond_11b

    sub-long/2addr v0, p2

    const-wide/16 p1, 0x3e8

    .line 97
    div-long/2addr v0, p1

    const-wide/16 p1, 0x19

    cmp-long p1, v0, p1

    if-lez p1, :cond_11b

    .line 98
    new-instance p1, Lcom/meizu/account/oauth/MzAuthException;

    const/16 p2, 0xa

    const-string/jumbo p3, "sync_timeout"

    invoke-direct {p1, p2, p3, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 101
    :cond_11b
    new-instance p1, Lcom/meizu/account/oauth/MzAuthException;

    const/4 p2, 0x4

    const-string p3, "get_cancel"

    invoke-direct {p1, p2, p3, p0}, Lcom/meizu/account/oauth/MzAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getUserInfo(Ljava/lang/String;Lcom/meizu/account/oauth/OnUserInfoListener;)V
    .registers 6

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 271
    :try_start_6
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 272
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 274
    :cond_18
    iput-object p2, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoListener:Lcom/meizu/account/oauth/OnUserInfoListener;

    .line 275
    new-instance v0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;-><init>(Lcom/meizu/account/oauth/MzAuthenticator;Lcom/meizu/account/oauth/MzAuthenticator$1;)V

    iput-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    .line 276
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator;->mUserInfoTask:Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p0

    if-eqz p2, :cond_39

    const/16 p1, -0x3e8

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/meizu/account/oauth/OnUserInfoListener;->onFailed(ILjava/lang/String;)V

    :cond_39
    :goto_39
    return-void

    .line 268
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
