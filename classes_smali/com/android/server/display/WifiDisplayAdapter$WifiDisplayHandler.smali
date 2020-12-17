.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"  # Landroid/os/Looper;

    .line 691
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 692
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 693
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_15

    .line 704
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_15

    .line 699
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 700
    nop

    .line 708
    :goto_15
    return-void
.end method
