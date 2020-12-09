.class final Lcom/android/server/display/color/ColorDisplayService$TintHandler;
.super Landroid/os/Handler;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TintHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .registers 4

    .line 1418
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1419
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1420
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .registers 4

    .line 1416
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1424
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x5

    if-eq v0, p1, :cond_15

    goto :goto_54

    .line 1442
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, p1, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-static {p1, v0, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    goto :goto_54

    .line 1432
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/TintController;->setMatrix(I)V

    .line 1433
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1434
    goto :goto_54

    .line 1439
    :cond_32
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1440
    goto :goto_54

    .line 1436
    :cond_3c
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1437
    goto :goto_54

    .line 1429
    :cond_46
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 1430
    goto :goto_54

    .line 1426
    :cond_4c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V

    .line 1427
    nop

    .line 1445
    :goto_54
    return-void
.end method
