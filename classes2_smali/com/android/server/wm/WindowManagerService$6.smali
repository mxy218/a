.class Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/WindowManagerService;

    .line 1075
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 2

    .line 1078
    const/4 v0, 0x3

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 2
    .param p1, "result"  # Landroid/os/PowerSaveState;

    .line 1092
    return-void
.end method
