.class Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x9

.field private static final MSG_SEND_EVENT:I = 0x6

.field private static final MSG_UPDATE_EXTRAS:I = 0x5

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field private static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field private static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .registers 3

    .line 1520
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1521
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1522
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1525
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    .line 1551
    :pswitch_6  #0x9
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4600(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3f

    .line 1548
    :pswitch_c  #0x8
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1549
    goto :goto_3f

    .line 1546
    :pswitch_12  #0x7
    goto :goto_3f

    .line 1542
    :pswitch_13  #0x6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$4500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1543
    goto :goto_3f

    .line 1539
    :pswitch_21  #0x5
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4400(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1540
    goto :goto_3f

    .line 1536
    :pswitch_27  #0x4
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4300(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1537
    goto :goto_3f

    .line 1533
    :pswitch_2d  #0x3
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4200(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1534
    goto :goto_3f

    .line 1530
    :pswitch_33  #0x2
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4100(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1531
    goto :goto_3f

    .line 1527
    :pswitch_39  #0x1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$4000(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1528
    nop

    .line 1553
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_39  #00000001
        :pswitch_33  #00000002
        :pswitch_2d  #00000003
        :pswitch_27  #00000004
        :pswitch_21  #00000005
        :pswitch_13  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method

.method public post(I)V
    .registers 3

    .line 1556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1557
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 3

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1561
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4

    .line 1564
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1565
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1566
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1567
    return-void
.end method
