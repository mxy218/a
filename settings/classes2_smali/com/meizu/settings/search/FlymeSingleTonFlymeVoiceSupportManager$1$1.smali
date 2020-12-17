.class Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;
.super Ljava/lang/Object;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;->onSuccess(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;Ljava/lang/String;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;->this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;

    iput-object p2, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;->this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;

    iget-object v0, v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-static {v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$600(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    .line 190
    iget-object v2, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;->val$result:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;->onStringOfVoiceRecieved(Ljava/lang/String;)V

    goto :goto_c

    :cond_1e
    return-void
.end method
