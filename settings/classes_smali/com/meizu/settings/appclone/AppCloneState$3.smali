.class Lcom/meizu/settings/appclone/AppCloneState$3;
.super Landroid/os/Handler;
.source "AppCloneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Looper;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState$3;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AppCloneState"

    if-eqz v0, :cond_47

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    goto :goto_7c

    .line 151
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$3;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$700(Lcom/meizu/settings/appclone/AppCloneState;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    if-eqz v0, :cond_18

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppCloneIconLoaded pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, p1}, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;->onAppCloneIconLoaded(Ljava/lang/String;)V

    goto :goto_18

    .line 142
    :cond_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 143
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$3;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$700(Lcom/meizu/settings/appclone/AppCloneState;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_55
    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    if-eqz v0, :cond_55

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppCloneListLoaded l = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0, p1}, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;->onAppCloneListLoaded(Ljava/util/List;)V

    goto :goto_55

    :cond_7c
    :goto_7c
    return-void
.end method
