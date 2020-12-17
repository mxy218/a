.class Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;
.super Landroid/os/AsyncTask;
.source "MzAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/account/oauth/MzAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/account/oauth/MzAuthenticator;


# direct methods
.method private constructor <init>(Lcom/meizu/account/oauth/MzAuthenticator;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/account/oauth/MzAuthenticator;Lcom/meizu/account/oauth/MzAuthenticator$1;)V
    .registers 3

    .line 287
    invoke-direct {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;-><init>(Lcom/meizu/account/oauth/MzAuthenticator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 287
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, -0x3e8

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "code"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_13
    const-string v2, "https://i.flyme.cn/uc/oauth/member/getBasicInfo"

    .line 301
    invoke-static {}, Lcom/meizu/account/oauth/MzAccountUtil;->isProductInternational()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v2, "https://i.in.meizu.com/uc/oauth/member/getBasicInfo"

    .line 304
    :cond_1d
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    .line 306
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 308
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v4, 0x7530

    .line 311
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 313
    new-instance v4, Ljava/io/DataOutputStream;

    .line 314
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "access_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object p1, p1, v7

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$700(Lcom/meizu/account/oauth/MzAuthenticator;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 318
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "test"

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 324
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 325
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_be} :catch_116

    const-string v4, "message"

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_f1

    .line 327
    :try_start_c4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 329
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$800(Lcom/meizu/account/oauth/MzAuthenticator;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 330
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 332
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p0, v5, :cond_ea

    .line 334
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 335
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ef

    .line 337
    :cond_ea
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11b

    :cond_ef
    :goto_ef
    const/4 p0, 0x0

    goto :goto_11b

    .line 341
    :cond_f1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 342
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$800(Lcom/meizu/account/oauth/MzAuthenticator;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 343
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_111

    .line 345
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 346
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_111
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_115} :catch_116

    goto :goto_11b

    :catch_116
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 353
    :goto_11b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_124

    .line 354
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_124
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 287
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {v0}, Lcom/meizu/account/oauth/MzAuthenticator;->access$900(Lcom/meizu/account/oauth/MzAuthenticator;)Lcom/meizu/account/oauth/OnUserInfoListener;

    move-result-object v0

    if-eqz v0, :cond_44

    const-string v0, "code"

    .line 362
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    const-string/jumbo v2, "value"

    if-ne v0, v1, :cond_2b

    .line 364
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 365
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p0}, Lcom/meizu/account/oauth/MzAuthenticator;->access$900(Lcom/meizu/account/oauth/MzAuthenticator;)Lcom/meizu/account/oauth/OnUserInfoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/account/oauth/OnUserInfoListener;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_44

    .line 368
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 369
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3b

    :cond_38
    const-string/jumbo p1, "unkown errror"

    .line 371
    :goto_3b
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$UserInfoTask;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p0}, Lcom/meizu/account/oauth/MzAuthenticator;->access$900(Lcom/meizu/account/oauth/MzAuthenticator;)Lcom/meizu/account/oauth/OnUserInfoListener;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/meizu/account/oauth/OnUserInfoListener;->onFailed(ILjava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
