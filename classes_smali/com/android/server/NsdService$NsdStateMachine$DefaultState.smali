.class Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 126
    nop

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "NsdService"

    sparse-switch v0, :sswitch_data_120

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 182
    :sswitch_1e
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60013

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 184
    goto/16 :goto_11e

    .line 178
    :sswitch_2a
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x6000d

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 180
    goto/16 :goto_11e

    .line 174
    :sswitch_36
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x6000a

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 176
    goto/16 :goto_11e

    .line 170
    :sswitch_42
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60007

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 172
    goto/16 :goto_11e

    .line 166
    :sswitch_4e
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60003

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 168
    goto/16 :goto_11e

    .line 140
    :sswitch_5a
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_79

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection lost with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 145
    :cond_79
    const-string v0, "Client disconnected"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_85

    .line 142
    :cond_7f
    const-string v0, "Send failed, client connection lost"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    nop

    .line 151
    :goto_85
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 152
    if-eqz v0, :cond_a7

    .line 153
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$500(Lcom/android/server/NsdService$ClientInfo;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_a7
    iget-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object p1, p1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {p1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_11e

    .line 158
    iget-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object p1, p1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {p1}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    goto :goto_11e

    .line 162
    :sswitch_c1
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v2}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 164
    goto :goto_11e

    .line 129
    :sswitch_da
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_107

    .line 130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 131
    const-string v1, "New client listening to asynchronous messages"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v1, 0x11002

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 133
    new-instance v1, Lcom/android/server/NsdService$ClientInfo;

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    goto :goto_11e

    .line 136
    :cond_107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection failure, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    nop

    .line 190
    :cond_11e
    :goto_11e
    const/4 p1, 0x1

    return p1

    :sswitch_data_120
    .sparse-switch
        0x11000 -> :sswitch_da
        0x11001 -> :sswitch_c1
        0x11004 -> :sswitch_5a
        0x60001 -> :sswitch_4e
        0x60006 -> :sswitch_42
        0x60009 -> :sswitch_36
        0x6000c -> :sswitch_2a
        0x60012 -> :sswitch_1e
    .end sparse-switch
.end method
