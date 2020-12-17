.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 54
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 55
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v2, 0x64

    .line 68
    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_14

    .line 77
    :catch_14
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const-string v2, "TakeScreenshotService"

    if-nez v0, :cond_3e

    const-string p1, "Skipping screenshot because storage is locked!"

    .line 78
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget v0, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    return-void

    .line 102
    :cond_3e
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const-string/jumbo v3, "takeScreenshot"

    .line 104
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_a1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "long_press"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "isStartShare"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    const-string v8, "displayId"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v6

    .line 109
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "screenshot_triggered_gesture_type"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", gesture_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_a1
    move v6, v0

    move v0, v5

    move v3, v0

    :goto_a4
    if-eqz v0, :cond_c2

    .line 115
    :try_start_a6
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.flyme.systemuiex.screenshot.TEST.ACTION_START_SCREENSHOT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.flyme.systemuiex"

    const-string v3, "com.flyme.systemuiex.screenshot.ScreenshotService"

    .line 116
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v2, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bc} :catch_bd

    goto :goto_10c

    :catch_bd
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10c

    .line 124
    :cond_c2
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_d2

    .line 125
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v7, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v2, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    :cond_d2
    const/4 v2, 0x1

    if-eqz v3, :cond_f1

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "intent"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const-string p1, "dismiss-keyguard"

    .line 129
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startShareView(Landroid/content/Intent;)V

    .line 131
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 134
    :cond_f1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->registSreenStatusReceiver()V

    .line 135
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_102

    move v7, v2

    goto :goto_103

    :cond_102
    move v7, v5

    :goto_103
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_108

    goto :goto_109

    :cond_108
    move v2, v5

    :goto_109
    invoke-virtual {v3, v1, v7, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 138
    :goto_10c
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {p0, p1, v1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collcetScreenshotKeydown(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
