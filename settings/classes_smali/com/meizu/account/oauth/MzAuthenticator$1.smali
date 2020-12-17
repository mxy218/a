.class Lcom/meizu/account/oauth/MzAuthenticator$1;
.super Ljava/lang/Object;
.source "MzAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/account/oauth/MzAuthenticator;->getAuthToken(ZZLandroid/app/Activity;Lcom/meizu/account/oauth/OnMzAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/account/oauth/MzAuthenticator;


# direct methods
.method constructor <init>(Lcom/meizu/account/oauth/MzAuthenticator;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent"

    const-string v1, "authtoken"

    .line 167
    invoke-static {}, Lcom/meizu/account/oauth/MzAuthenticator;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "receive account callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {v2}, Lcom/meizu/account/oauth/MzAuthenticator;->access$100(Lcom/meizu/account/oauth/MzAuthenticator;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 169
    invoke-static {}, Lcom/meizu/account/oauth/MzAuthenticator;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "op canceled."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    :cond_22
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    :try_start_24
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_94

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authsecret"

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {v1, v0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$200(Lcom/meizu/account/oauth/MzAuthenticator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 178
    :cond_43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {v0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$300(Lcom/meizu/account/oauth/MzAuthenticator;Landroid/content/Intent;)V

    goto/16 :goto_ca

    :cond_56
    const-string v0, "errorMessage"

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_5c
    .catch Landroid/accounts/OperationCanceledException; {:try_start_24 .. :try_end_5c} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5c} :catch_9d

    if-eqz v0, :cond_89

    .line 183
    :try_start_5e
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {v0, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$400(Lcom/meizu/account/oauth/MzAuthenticator;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 184
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 187
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    move-object p1, v3

    :cond_85
    invoke-static {p0, v0, v1, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_88} :catch_ca

    goto :goto_ca

    .line 191
    :cond_89
    :try_start_89
    iget-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    const/16 v0, 0xb

    const-string/jumbo v1, "unkown_error"

    invoke-static {p1, v0, v1, v3}, Lcom/meizu/account/oauth/MzAuthenticator;->access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 194
    :cond_94
    iget-object p1, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    const/4 v0, 0x5

    const-string v1, "future_result_is_null"

    invoke-static {p1, v0, v1, v3}, Lcom/meizu/account/oauth/MzAuthenticator;->access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/accounts/OperationCanceledException; {:try_start_89 .. :try_end_9c} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9c} :catch_9d

    goto :goto_ca

    :catch_9d
    move-exception p1

    .line 199
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    const-string v0, "error_is_throwed"

    invoke-static {p0, v2, v0, v3}, Lcom/meizu/account/oauth/MzAuthenticator;->access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/meizu/account/oauth/MzAuthenticator;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAuthToken] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 197
    :catch_c2
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthenticator$1;->this$0:Lcom/meizu/account/oauth/MzAuthenticator;

    const/4 p1, 0x4

    const-string v0, "get_cancel"

    invoke-static {p0, p1, v0, v3}, Lcom/meizu/account/oauth/MzAuthenticator;->access$500(Lcom/meizu/account/oauth/MzAuthenticator;ILjava/lang/String;Ljava/lang/String;)V

    :catch_ca
    :goto_ca
    return-void
.end method
