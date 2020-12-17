.class Lcom/meizu/settings/utils/FlymeAccountHelper$7;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"

# interfaces
.implements Lcom/meizu/account/oauth/OnMzAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;->requestUserInfoInternal()V
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

    .line 485
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthTokenAsync onError, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", error1:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error2:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeAccountHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$402(Lcom/meizu/settings/utils/FlymeAccountHelper;Z)Z

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.meizu.account.action.normal_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 491
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "flyme account not logged in."

    invoke-interface {p1, v0, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;->getUserInfoFailed(ILjava/lang/String;)V

    .line 495
    :cond_3a
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$402(Lcom/meizu/settings/utils/FlymeAccountHelper;Z)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthTokenAsync onSuccess, token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlymeAccountHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$1300(Lcom/meizu/settings/utils/FlymeAccountHelper;Ljava/lang/String;)V

    return-void
.end method
