.class Lcom/android/server/usb/UsbDeviceManager$7;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 2888
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$7;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2891
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSmsReceiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    const-string v1, "android.provider.Telephony.MZ_SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2894
    :cond_2d
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 2895
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_48

    .line 2896
    array-length v2, v1

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    .line 2898
    .local v4, "msg":Landroid/telephony/SmsMessage;
    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$7$1;

    invoke-direct {v5, p0, v4}, Lcom/android/server/usb/UsbDeviceManager$7$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$7;Landroid/telephony/SmsMessage;)V

    .line 2904
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2896
    .end local v4  # "msg":Landroid/telephony/SmsMessage;
    .end local v5  # "runnable":Ljava/lang/Runnable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 2908
    .end local v1  # "msgs":[Landroid/telephony/SmsMessage;
    :cond_48
    return-void
.end method
