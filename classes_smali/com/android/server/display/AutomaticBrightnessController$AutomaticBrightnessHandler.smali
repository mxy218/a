.class final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .registers 4

    .line 908
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 909
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 910
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 914
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    goto :goto_30

    .line 932
    :cond_12
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_30

    .line 928
    :cond_18
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 929
    goto :goto_30

    .line 924
    :cond_1e
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 925
    goto :goto_30

    .line 920
    :cond_24
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 921
    goto :goto_30

    .line 916
    :cond_2a
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 917
    nop

    .line 935
    :goto_30
    return-void
.end method
