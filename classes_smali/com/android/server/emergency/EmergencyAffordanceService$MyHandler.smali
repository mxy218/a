.class Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 192
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_1e

    .line 200
    :cond_c
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    goto :goto_1e

    .line 197
    :cond_12
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    .line 198
    goto :goto_1e

    .line 194
    :cond_18
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 195
    nop

    .line 203
    :goto_1e
    return-void
.end method
