.class final Lcom/android/server/DeviceControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/android/server/DeviceControlService$SettingsObserver;->this$0:Lcom/android/server/DeviceControlService;

    .line 83
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 88
    iget-object v0, p0, Lcom/android/server/DeviceControlService$SettingsObserver;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$000(Lcom/android/server/DeviceControlService;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/android/server/DeviceControlService$SettingsObserver;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$100(Lcom/android/server/DeviceControlService;)V

    goto :goto_27

    .line 90
    :cond_12
    iget-object v0, p0, Lcom/android/server/DeviceControlService$SettingsObserver;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$200(Lcom/android/server/DeviceControlService;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 91
    iget-object v0, p0, Lcom/android/server/DeviceControlService$SettingsObserver;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$300(Lcom/android/server/DeviceControlService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/DeviceControlService;->access$400(Lcom/android/server/DeviceControlService;Landroid/content/Context;)V

    .line 93
    :cond_27
    :goto_27
    return-void
.end method
