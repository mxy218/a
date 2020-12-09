.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 363
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    .line 364
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    .line 365
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)V

    .line 366
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo p2, "user switched"

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateVolumeKeysRotationFromSettings()V

    .line 368
    return-void
.end method
