.class Lcom/android/server/hips/intercept/UsbInstallInterception$1;
.super Landroid/os/Handler;
.source "UsbInstallInterception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/UsbInstallInterception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 88
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_22

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v0}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$000(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$100(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$200(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 95
    invoke-static {v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$300(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/content/Context;

    move-result-object v4

    .line 94
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$400(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 96
    nop

    .line 100
    :goto_22
    return-void
.end method
