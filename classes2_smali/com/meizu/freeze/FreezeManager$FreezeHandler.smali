.class final Lcom/meizu/freeze/FreezeManager$FreezeHandler;
.super Landroid/os/Handler;
.source "FreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/freeze/FreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/freeze/FreezeManager;


# direct methods
.method public constructor <init>(Lcom/meizu/freeze/FreezeManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/meizu/freeze/FreezeManager;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 707
    iput-object p1, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    .line 708
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 709
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"  # Landroid/os/Message;

    .line 713
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_58

    .line 740
    :pswitch_6  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 741
    .local v0, "pids":[I
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    invoke-static {v1, v0}, Lcom/meizu/freeze/FreezeManager;->access$500(Lcom/meizu/freeze/FreezeManager;[I)V

    goto :goto_58

    .line 736
    .end local v0  # "pids":[I
    :pswitch_10  #0x5
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    invoke-static {v0}, Lcom/meizu/freeze/FreezeManager;->access$400(Lcom/meizu/freeze/FreezeManager;)V

    .line 738
    goto :goto_58

    .line 731
    :pswitch_16  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/freeze/FastFreezeInfo;

    .line 732
    .local v0, "info":Lcom/meizu/freeze/FastFreezeInfo;
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    iget-object v2, v0, Lcom/meizu/freeze/FastFreezeInfo;->mPids:[I

    iget v3, v0, Lcom/meizu/freeze/FastFreezeInfo;->mIntervalTime:I

    iget-object v4, v0, Lcom/meizu/freeze/FastFreezeInfo;->mPackageName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/meizu/freeze/FastFreezeInfo;->mNowTime:J

    invoke-static/range {v1 .. v6}, Lcom/meizu/freeze/FreezeManager;->access$300(Lcom/meizu/freeze/FreezeManager;[IILjava/lang/String;J)V

    .line 734
    .end local v0  # "info":Lcom/meizu/freeze/FastFreezeInfo;
    goto :goto_58

    .line 725
    :pswitch_28  #0x3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 726
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    invoke-static {v2, v0, v1}, Lcom/meizu/freeze/FreezeManager;->access$200(Lcom/meizu/freeze/FreezeManager;ILjava/lang/String;)V

    .line 729
    .end local v0  # "uid":I
    .end local v1  # "pkg":Ljava/lang/String;
    goto :goto_58

    .line 720
    :pswitch_34  #0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/freeze/FreezeInfo;

    .line 721
    .local v0, "info":Lcom/meizu/freeze/FreezeInfo;
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    iget v2, v0, Lcom/meizu/freeze/FreezeInfo;->mUid:I

    iget-object v3, v0, Lcom/meizu/freeze/FreezeInfo;->mPids:[I

    iget-object v4, v0, Lcom/meizu/freeze/FreezeInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/freeze/FreezeInfo;->mReason:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/meizu/freeze/FreezeManager;->access$100(Lcom/meizu/freeze/FreezeManager;I[ILjava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v0  # "info":Lcom/meizu/freeze/FreezeInfo;
    goto :goto_58

    .line 715
    :pswitch_46  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/freeze/FreezeInfo;

    .line 716
    .restart local v0  # "info":Lcom/meizu/freeze/FreezeInfo;
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->this$0:Lcom/meizu/freeze/FreezeManager;

    iget v2, v0, Lcom/meizu/freeze/FreezeInfo;->mUid:I

    iget-object v3, v0, Lcom/meizu/freeze/FreezeInfo;->mPids:[I

    iget-object v4, v0, Lcom/meizu/freeze/FreezeInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/freeze/FreezeInfo;->mReason:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/meizu/freeze/FreezeManager;->access$000(Lcom/meizu/freeze/FreezeManager;I[ILjava/lang/String;Ljava/lang/String;)V

    .line 718
    .end local v0  # "info":Lcom/meizu/freeze/FreezeInfo;
    nop

    .line 745
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_34  #00000002
        :pswitch_28  #00000003
        :pswitch_16  #00000004
        :pswitch_10  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
