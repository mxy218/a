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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1307
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1308
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1309
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x1"  # Landroid/os/Looper;
    .param p3, "x2"  # Lcom/android/server/display/color/ColorDisplayService$1;

    .line 1305
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 1313
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

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    goto :goto_54

    .line 1331
    :cond_15
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    goto :goto_54

    .line 1321
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setMatrix(I)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1323
    goto :goto_54

    .line 1328
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1329
    goto :goto_54

    .line 1325
    :cond_3c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 1326
    goto :goto_54

    .line 1318
    :cond_46
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 1319
    goto :goto_54

    .line 1315
    :cond_4c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 1316
    nop

    .line 1334
    :goto_54
    return-void
.end method
