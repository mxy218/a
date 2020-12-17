.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccountNotLogin(Landroid/os/Bundle;)V
    .registers 4

    const-string p1, "FlymeEraseSettings"

    const-string v0, "handleAccountNotLogin"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo p0, "onSuccess fragment detach"

    .line 149
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_16
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$000(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$100(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$200(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeEraseSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_26

    const-string/jumbo p0, "onSuccess fragment detach"

    .line 139
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_26
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$000(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$100(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$200(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "FlymeEraseSettings"

    if-nez v0, :cond_11

    const-string/jumbo p0, "onSuccess fragment detach"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    if-eqz p1, :cond_3e

    const-string v0, "intent_key"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3e

    .line 130
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess get intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3e
    :goto_3e
    const-string/jumbo p1, "onSuccess invalid bundle,return"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$000(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$100(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$200(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
