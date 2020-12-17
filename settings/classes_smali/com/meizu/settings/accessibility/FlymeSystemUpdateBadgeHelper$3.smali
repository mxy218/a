.class Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$3;
.super Landroid/os/Handler;
.source "FlymeSystemUpdateBadgeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;Landroid/os/Looper;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_27

    .line 72
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 73
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$400(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;->onUpdateChange(Z)V

    goto :goto_13

    :cond_27
    :goto_27
    return-void
.end method
