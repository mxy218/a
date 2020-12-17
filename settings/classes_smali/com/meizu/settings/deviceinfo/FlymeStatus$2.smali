.class Lcom/meizu/settings/deviceinfo/FlymeStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "FlymeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$200()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 150
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$300(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x258

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_19
    return-void
.end method
