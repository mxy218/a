.class final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PinnerHandler"
.end annotation


# static fields
.field static final PIN_ONSTART_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .registers 4

    .line 986
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 987
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 988
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 992
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_a

    .line 1000
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_10

    .line 995
    :cond_a
    iget-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p1}, Lcom/android/server/PinnerService;->access$1400(Lcom/android/server/PinnerService;)V

    .line 997
    nop

    .line 1002
    :goto_10
    return-void
.end method
