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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1126
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1127
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 1132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x65

    if-eq v0, v1, :cond_16

    goto :goto_3a

    .line 1154
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->finishScreenTurningOn()V

    goto :goto_3a

    .line 1150
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1151
    goto :goto_3a

    .line 1146
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1147
    goto :goto_3a

    .line 1142
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1143
    goto :goto_3a

    .line 1138
    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1139
    goto :goto_3a

    .line 1134
    :cond_34
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1135
    nop

    .line 1157
    :goto_3a
    return-void
.end method
