.class final Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil$1;
.super Ljava/lang/Object;
.source "PeekAndPopUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->hideSmartTouch(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isHide:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 451
    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil$1;->val$isHide:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 459
    invoke-static {p2}, Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->access$002(Lcom/flyme/systemui/smarttouch/ISmartTouchService;)Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    .line 461
    :try_start_7
    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->access$000()Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    move-result-object p1

    iget-boolean p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil$1;->val$isHide:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemui/smarttouch/ISmartTouchService;->forceHideSmartTouch(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
