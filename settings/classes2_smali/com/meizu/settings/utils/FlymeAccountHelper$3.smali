.class Lcom/meizu/settings/utils/FlymeAccountHelper$3;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"

# interfaces
.implements Lcom/meizu/account/oauth/OnUserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;->requestUserInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 5

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get userInfo failed, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 327
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;->getUserInfoFailed(ILjava/lang/String;)V

    .line 330
    :cond_2f
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$402(Lcom/meizu/settings/utils/FlymeAccountHelper;Z)Z

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$300(Lcom/meizu/settings/utils/FlymeAccountHelper;Lorg/json/JSONObject;)V

    .line 319
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$3;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$402(Lcom/meizu/settings/utils/FlymeAccountHelper;Z)Z

    return-void
.end method
