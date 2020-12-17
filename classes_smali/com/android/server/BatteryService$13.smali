.class Lcom/android/server/BatteryService$13;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/BatteryService;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 1984
    iput-object p1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 1988
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1989
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1990
    iget-object v0, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3000(Lcom/android/server/BatteryService;I)V

    goto :goto_23

    .line 1991
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1992
    iget-object v0, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3100(Lcom/android/server/BatteryService;)V

    goto :goto_23

    .line 1993
    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1994
    iget-object v0, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;)V

    .line 1996
    :cond_23
    :goto_23
    return-void
.end method
