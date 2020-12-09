.class Lcom/android/server/input/InputManagerService$12;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 1676
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 1679
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v0, "timeout changed"

    invoke-static {p1, v0}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 1680
    return-void
.end method
