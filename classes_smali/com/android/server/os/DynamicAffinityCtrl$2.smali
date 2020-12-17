.class Lcom/android/server/os/DynamicAffinityCtrl$2;
.super Landroid/os/Handler;
.source "DynamicAffinityCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/DynamicAffinityCtrl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/DynamicAffinityCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/os/DynamicAffinityCtrl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/os/DynamicAffinityCtrl;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 80
    iput-object p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5e

    goto :goto_5d

    .line 96
    :pswitch_7  #0x112
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v0}, Lcom/android/server/os/DynamicAffinityCtrl;->access$700(Lcom/android/server/os/DynamicAffinityCtrl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/os/DynamicAffinityCtrl;->access$800(Lcom/android/server/os/DynamicAffinityCtrl;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/os/DynamicAffinityCtrl;->access$900(Lcom/android/server/os/DynamicAffinityCtrl;[I)V

    .line 97
    goto :goto_5d

    .line 92
    :pswitch_15  #0x111
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v0}, Lcom/android/server/os/DynamicAffinityCtrl;->access$300(Lcom/android/server/os/DynamicAffinityCtrl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v3}, Lcom/android/server/os/DynamicAffinityCtrl;->access$400(Lcom/android/server/os/DynamicAffinityCtrl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/os/DynamicAffinityCtrl;->access$500(Lcom/android/server/os/DynamicAffinityCtrl;I[ILjava/util/ArrayList;)[I

    .line 93
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v0}, Lcom/android/server/os/DynamicAffinityCtrl;->access$600(Lcom/android/server/os/DynamicAffinityCtrl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    goto :goto_5d

    .line 85
    :pswitch_30  #0x110
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/os/DynamicAffinityCtrl;->access$200(Lcom/android/server/os/DynamicAffinityCtrl;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v2}, Lcom/android/server/os/DynamicAffinityCtrl;->access$300(Lcom/android/server/os/DynamicAffinityCtrl;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v4}, Lcom/android/server/os/DynamicAffinityCtrl;->access$400(Lcom/android/server/os/DynamicAffinityCtrl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/os/DynamicAffinityCtrl;->access$500(Lcom/android/server/os/DynamicAffinityCtrl;I[ILjava/util/ArrayList;)[I

    .line 88
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl$2;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v1}, Lcom/android/server/os/DynamicAffinityCtrl;->access$600(Lcom/android/server/os/DynamicAffinityCtrl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x111

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    nop

    .line 101
    .end local v0  # "data":Landroid/os/Bundle;
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x110
        :pswitch_30  #00000110
        :pswitch_15  #00000111
        :pswitch_7  #00000112
    .end packed-switch
.end method
