.class Lcom/meizu/settings/appclone/AppCloneState$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Handler;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppCloneState"

    invoke-static {v0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneState;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    .line 76
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->access$100(Lcom/meizu/settings/appclone/AppCloneState;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange ignore uri = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0, v1}, Lcom/meizu/settings/appclone/AppCloneState;->access$102(Lcom/meizu/settings/appclone/AppCloneState;Z)Z

    goto :goto_8a

    .line 80
    :cond_4d
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$200(Lcom/meizu/settings/appclone/AppCloneState;)Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8a

    .line 82
    :cond_5b
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneState;->access$300()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$200(Lcom/meizu/settings/appclone/AppCloneState;)Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8a

    .line 84
    :cond_73
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneState;->access$400()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$1;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$200(Lcom/meizu/settings/appclone/AppCloneState;)Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_8a
    :goto_8a
    return-void
.end method
