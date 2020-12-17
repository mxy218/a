.class Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppCloneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Looper;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_17

    .line 127
    :cond_8
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneState;->access$600(Lcom/meizu/settings/appclone/AppCloneState;Ljava/lang/String;)V

    goto :goto_17

    .line 124
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$500(Lcom/meizu/settings/appclone/AppCloneState;)V

    :goto_17
    return-void
.end method
