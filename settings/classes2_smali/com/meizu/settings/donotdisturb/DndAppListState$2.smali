.class Lcom/meizu/settings/donotdisturb/DndAppListState$2;
.super Landroid/os/Handler;
.source "DndAppListState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppListState;Landroid/os/Looper;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$2;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "DndNotificationSettingsState"

    if-eqz v0, :cond_46

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    goto :goto_7a

    .line 111
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 112
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$2;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->access$300(Lcom/meizu/settings/donotdisturb/DndAppListState;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

    if-eqz v0, :cond_18

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppIconLoaded pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {v0, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;->onAppIconLoaded(Ljava/lang/String;)V

    goto :goto_18

    .line 102
    :cond_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 103
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$2;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->access$300(Lcom/meizu/settings/donotdisturb/DndAppListState;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

    if-eqz v0, :cond_54

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppListLoaded l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v0, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;->onAppListLoaded(Ljava/util/List;)V

    goto :goto_54

    :cond_7a
    :goto_7a
    return-void
.end method
