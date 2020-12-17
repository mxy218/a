.class Lcom/android/server/GestureLauncherService$2;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;I)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/GestureLauncherService;

    .line 506
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    iput p2, p0, Lcom/android/server/GestureLauncherService$2;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDoubleTapRunnable run, source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GestureLauncherService$2;->val$source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureLauncherService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 513
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    iget v1, p0, Lcom/android/server/GestureLauncherService$2;->val$source:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 514
    return-void
.end method
