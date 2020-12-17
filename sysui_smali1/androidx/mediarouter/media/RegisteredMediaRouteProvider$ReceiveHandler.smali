.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .registers 3

    .line 980
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 981
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .registers 7

    const/4 p0, 0x1

    packed-switch p2, :pswitch_data_6c

    goto :goto_6a

    :pswitch_5  #0x7
    if-eqz p5, :cond_b

    .line 1029
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_6a

    .line 1030
    :cond_b
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p4, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDynamicRouteDescriptorsChanged(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1052
    :pswitch_12  #0x6
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_1c

    .line 1053
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDynamicGroupRouteControllerCreated(ILandroid/os/Bundle;)V

    goto :goto_6a

    :cond_1c
    const-string p0, "MediaRouteProviderProxy"

    const-string p1, "No further information on the dynamic group controller"

    .line 1056
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :pswitch_24  #0x5
    if-eqz p5, :cond_2a

    .line 1023
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_6a

    .line 1024
    :cond_2a
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_31  #0x4
    if-eqz p5, :cond_37

    .line 1043
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_6a

    :cond_37
    if-nez p6, :cond_3b

    const/4 p0, 0x0

    goto :goto_41

    :cond_3b
    const-string p0, "error"

    .line 1045
    invoke-virtual {p6, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1046
    :goto_41
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p0, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_48  #0x3
    if-eqz p5, :cond_4e

    .line 1036
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_6a

    .line 1037
    :cond_4e
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_55  #0x2
    if-eqz p5, :cond_5b

    .line 1017
    instance-of p0, p5, Landroid/os/Bundle;

    if-eqz p0, :cond_6a

    .line 1018
    :cond_5b
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4, p5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1013
    :pswitch_62  #0x1
    invoke-virtual {p1, p3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    return p0

    .line 1009
    :pswitch_66  #0x0
    invoke-virtual {p1, p3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    return p0

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return p0

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_62  #00000001
        :pswitch_55  #00000002
        :pswitch_48  #00000003
        :pswitch_31  #00000004
        :pswitch_24  #00000005
        :pswitch_12  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 985
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 990
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v2, :cond_38

    .line 992
    iget v3, p1, Landroid/os/Message;->what:I

    .line 993
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 994
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 995
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 996
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    move-object v1, p0

    .line 997
    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_38

    .line 998
    sget-boolean p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p0, :cond_38

    .line 999
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message from server: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouteProviderProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method
