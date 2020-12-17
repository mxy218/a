.class Lcom/android/systemui/screenshot/GlobalScreenshot$H;
.super Landroid/os/Handler;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 2

    .line 1491
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1494
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    if-eq v0, v2, :cond_23

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_17

    const/4 p1, 0x4

    if-eq v0, p1, :cond_11

    goto :goto_33

    .line 1508
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2000(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    goto :goto_33

    .line 1505
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1900(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    goto :goto_33

    .line 1502
    :cond_1d
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    goto :goto_33

    .line 1499
    :cond_23
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1700(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    goto :goto_33

    .line 1496
    :cond_29
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_30

    const/4 v2, 0x0

    :cond_30
    invoke-static {p0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)V

    :goto_33
    return-void
.end method
