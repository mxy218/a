.class Lcom/android/server/vr/VrManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 811
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 812
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->access$3800(Lcom/android/server/vr/VrManagerService;)V

    .line 814
    :cond_11
    return-void
.end method
